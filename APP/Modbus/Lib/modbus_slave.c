#include "modbus_slave.h"

// LOCAL Defines
// Defines for Write Multiple Coil Function
#define WMC_INDEX_START_ADDRESS_HI  2
#define WMC_INDEX_START_ADDRESS_LO  3
#define WMC_INDEX_QTY_HI            4
#define WMC_INDEX_QTY_LO            5
#define WMC_INDEX_BYTE_COUNT        6
#define WMC_RESPONSE_MIN_BYTES      8

// Defines for Read Input Registers
#define RIR_INDEX_START_ADDRESS_HI  2
#define RIR_INDEX_START_ADDRESS_LO  3
#define RIR_INDEX_QTY_REG_HI        4
#define RIR_INDEX_QTY_REG_LO        5

// Defines for Read Holding Registers
#define RHR_INDEX_START_ADDRESS_HI      2
#define RHR_INDEX_START_ADDRESS_LO      3
#define RHR_INDEX_NO_REG_ADDRESS_HI     4
#define RHR_INDEX_NO_REG_ADDRESS_LO     5

// Defines for Writing Single Holding Register
#define WSHR_START_ADDRESS_HI       2
#define WSHR_START_ADDRESS_LO       3
#define WSHR_REG_VALUE_ADDRESS_HI   4
#define WSHR_REG_VALUE_ADDRESS_LO   5

// Defines for Writing Multiple Holding Registers
#define WMHR_START_ADDRESS_HI       2
#define WMHR_START_ADDRESS_LO       3
#define WMHR_QTY_REG_HI             4
#define WMHR_QTY_REG_LO             5
#define WMHR_BYTE_COUNT             6
#define WMHR_FIRST_REG_VALUE_HI     7


//Public
uint8_t gModbusSlaveRxBuffer[MODBUS_SLAVE_RX_BUFFER_SIZE] = {0};
uint16_t giModbusSlaveRxBufferIndex = 0;

uint8_t gModbusSlaveTxBuffer[MODBUS_SLAVE_TX_BUFFER_SIZE] = {0};
uint16_t giModbusSlaveTxBufferIndex = 0;

bool gbFlagModbusSlaveProcessRequest = false;

// Private
static uint8_t giModbusSlaveID = 0;
static int8_t giErrorCode = 0;

static void modbusSlaveSendResponse();
static void modbusSlaveProcessRequest();

//void(*modbusSlaveUpdateSingleRegister)(uint16_t iAddress, uint16_t iValue);
static MB_SLAVE_CALLBACK_UPDATE_SINGLE_REGISTER updateSingleRegister;
static MB_SLAVE_CALLBACK_UPDATE_HOLDING_REGISTERS updateHoldingRegisters;

static MB_SLAVE_CALLBACK_GET_INPUT_REGISTERS getInputRegisters;
static MB_SLAVE_CALLBACK_GET_HOLDING_REGISTERS getHoldingRegisters;

static MB_SLAVE_CALLBACK_SEND_DATA sendSlaveResponse;

enum
{
    MODBUS_SLAVE_STATE_IDLE,
    MODBUS_SLAVE_STATE_PARSE_REQUEST,
    MODBUS_SLAVE_STATE_PROCESS_REQUEST,
};
static uint8_t iModbusSlaveState = MODBUS_SLAVE_STATE_IDLE;

void initModbusSlave(uint16_t iSlaveID, MB_SLAVE_CALLBACK_UPDATE_SINGLE_REGISTER funcSlaveUpdateSingleReg, MB_SLAVE_CALLBACK_UPDATE_HOLDING_REGISTERS funcSlaveUpdateHoldingRegs,
                     MB_SLAVE_CALLBACK_GET_INPUT_REGISTERS funcSlaveGetInputRegs, MB_SLAVE_CALLBACK_GET_HOLDING_REGISTERS funcSlaveGetHoldingRegs, MB_SLAVE_CALLBACK_SEND_DATA funcSlaveSendData)
{
    //    modbusSlaveUpdateSingleRegister = funcSlaveUpdateSingleReg;
    updateSingleRegister = funcSlaveUpdateSingleReg;
    updateHoldingRegisters = funcSlaveUpdateHoldingRegs;
    getInputRegisters = funcSlaveGetInputRegs;
    getHoldingRegisters = funcSlaveGetHoldingRegs;
    sendSlaveResponse = funcSlaveSendData;
    giModbusSlaveID = iSlaveID;
}

void modbusSlaveTasks()
{
    switch (iModbusSlaveState)
    {
    case MODBUS_SLAVE_STATE_IDLE:
        if (gbFlagModbusSlaveProcessRequest) //Data packet has been received. Process the request from the master.
        {
            gbFlagModbusSlaveProcessRequest = false;
            iModbusSlaveState = MODBUS_SLAVE_STATE_PARSE_REQUEST;
        }
        break;
    case MODBUS_SLAVE_STATE_PARSE_REQUEST:
        if (giModbusSlaveRxBufferIndex < 3) //Invalid Packet
        {
            giErrorCode = MODBUS_INVALID_PACKET;
            iModbusSlaveState = MODBUS_SLAVE_STATE_IDLE;
            giModbusSlaveRxBufferIndex = 0;
        }

        if (isCRC16OK(gModbusSlaveRxBuffer, giModbusSlaveRxBufferIndex))
        {
            if (gModbusSlaveRxBuffer[MODBUS_INDEX_ID] == giModbusSlaveID)
            {
                giErrorCode = 0;
                iModbusSlaveState = MODBUS_SLAVE_STATE_PROCESS_REQUEST;
            }
            else
            {
                giErrorCode = MODBUS_INVALID_ID;
                iModbusSlaveState = MODBUS_SLAVE_STATE_IDLE;
                giModbusSlaveRxBufferIndex = 0;
            }
        }
        else
        {
            giErrorCode = MODBUS_CRC_ERROR;
            iModbusSlaveState = MODBUS_SLAVE_STATE_IDLE;
            giModbusSlaveRxBufferIndex = 0;
        }
        break;
    case MODBUS_SLAVE_STATE_PROCESS_REQUEST:
        modbusSlaveProcessRequest();
        iModbusSlaveState = MODBUS_SLAVE_STATE_IDLE;
        break;
    }
}

int8_t modbusSlaveGetErrorCode()
{
    return giErrorCode;
}

static void modbusSlaveProcessRequest()
{
    uint8_t iFunctionCode = gModbusSlaveRxBuffer[MODBUS_INDEX_FC];

    int iStartIndex = 0;
    uint16_t iStartAddress = 0;
    uint16_t iQtyRegisters = 0;
    uint16_t iCRC16 = 0;
    uint16_t iValue = 0;

    switch (iFunctionCode)
    {
    case MODBUS_FC_READ_INPUT_REGS:
        iStartIndex = 2;
        iStartAddress = (gModbusSlaveRxBuffer[iStartIndex] << 8) | gModbusSlaveRxBuffer[iStartIndex + 1];
        iStartIndex += 2;
        iQtyRegisters = (gModbusSlaveRxBuffer[iStartIndex] << 8) | gModbusSlaveRxBuffer[iStartIndex + 1];
        giModbusSlaveRxBufferIndex = 0;

        giModbusSlaveTxBufferIndex = 0;
        gModbusSlaveTxBuffer[giModbusSlaveTxBufferIndex++] = giModbusSlaveID;
        gModbusSlaveTxBuffer[giModbusSlaveTxBufferIndex++] = MODBUS_FC_READ_INPUT_REGS;
        gModbusSlaveTxBuffer[giModbusSlaveTxBufferIndex++] = iQtyRegisters * 2;
        getInputRegisters(iStartAddress, iQtyRegisters, (uint8_t*) gModbusSlaveTxBuffer, &giModbusSlaveTxBufferIndex);

        iCRC16 = getCRC16(gModbusSlaveTxBuffer, giModbusSlaveTxBufferIndex);
        gModbusSlaveTxBuffer[giModbusSlaveTxBufferIndex++] = iCRC16 & 0x00FF;
        gModbusSlaveTxBuffer[giModbusSlaveTxBufferIndex++] = iCRC16 >> 8;
        modbusSlaveSendResponse();
        break;

    case MODBUS_FC_READ_HOLD_REGS:
        iStartIndex = 2;
        iStartAddress = (gModbusSlaveRxBuffer[iStartIndex] << 8) | gModbusSlaveRxBuffer[iStartIndex + 1];
        iStartIndex += 2;
        iQtyRegisters = (gModbusSlaveRxBuffer[iStartIndex] << 8) | gModbusSlaveRxBuffer[iStartIndex + 1];
        giModbusSlaveRxBufferIndex = 0;

        giModbusSlaveTxBufferIndex = 0;
        gModbusSlaveTxBuffer[giModbusSlaveTxBufferIndex++] = giModbusSlaveID;
        gModbusSlaveTxBuffer[giModbusSlaveTxBufferIndex++] = MODBUS_FC_READ_HOLD_REGS;
        gModbusSlaveTxBuffer[giModbusSlaveTxBufferIndex++] = iQtyRegisters * 2;
        getHoldingRegisters(iStartAddress, iQtyRegisters, (uint8_t*) gModbusSlaveTxBuffer, &giModbusSlaveTxBufferIndex);

        iCRC16 = getCRC16(gModbusSlaveTxBuffer, giModbusSlaveTxBufferIndex);
        gModbusSlaveTxBuffer[giModbusSlaveTxBufferIndex++] = iCRC16 & 0x00FF;
        gModbusSlaveTxBuffer[giModbusSlaveTxBufferIndex++] = iCRC16 >> 8;
        modbusSlaveSendResponse();
        break;
    case MODBUS_FC_WRITE_SINGLE_HOLD_REG:
        iStartIndex = 2;
        iStartAddress = (gModbusSlaveRxBuffer[iStartIndex] << 8) | gModbusSlaveRxBuffer[iStartIndex + 1];
        iStartIndex += 2;
        iValue = (gModbusSlaveRxBuffer[iStartIndex] << 8) | gModbusSlaveRxBuffer[iStartIndex + 1];
        updateSingleRegister(iStartAddress, iValue);
        giModbusSlaveRxBufferIndex = 0;

        giModbusSlaveTxBufferIndex = 0;
        gModbusSlaveTxBuffer[giModbusSlaveTxBufferIndex++] = giModbusSlaveID;
        gModbusSlaveTxBuffer[giModbusSlaveTxBufferIndex++] = MODBUS_FC_WRITE_SINGLE_HOLD_REG;
        gModbusSlaveTxBuffer[giModbusSlaveTxBufferIndex++] = (iStartAddress >> 8);
        gModbusSlaveTxBuffer[giModbusSlaveTxBufferIndex++] = iStartAddress & 0x00FF;
        gModbusSlaveTxBuffer[giModbusSlaveTxBufferIndex++] = iValue >> 8;
        gModbusSlaveTxBuffer[giModbusSlaveTxBufferIndex++] = iValue & 0x00FF;

        iCRC16 = getCRC16(gModbusSlaveTxBuffer, giModbusSlaveTxBufferIndex);
        gModbusSlaveTxBuffer[giModbusSlaveTxBufferIndex++] = iCRC16 & 0x00FF;
        gModbusSlaveTxBuffer[giModbusSlaveTxBufferIndex++] = iCRC16 >> 8;
        modbusSlaveSendResponse();
        break;

    case MODBUS_FC_WRITE_MULT_HOLD_REG:
        iStartIndex = 2;
        iStartAddress = (gModbusSlaveRxBuffer[iStartIndex] << 8) | gModbusSlaveRxBuffer[iStartIndex + 1];
        iStartIndex += 2;
        iQtyRegisters = (gModbusSlaveRxBuffer[iStartIndex] << 8) | gModbusSlaveRxBuffer[iStartIndex + 1];
        iStartIndex += 2;
        iStartIndex++; // Skip byte count as we do not need it
        updateHoldingRegisters(iStartAddress, iQtyRegisters, (uint8_t*) & gModbusSlaveRxBuffer[iStartIndex]);
        giModbusSlaveRxBufferIndex = 0;

        giModbusSlaveTxBufferIndex = 0;
        gModbusSlaveTxBuffer[giModbusSlaveTxBufferIndex++] = giModbusSlaveID;
        gModbusSlaveTxBuffer[giModbusSlaveTxBufferIndex++] = MODBUS_FC_WRITE_MULT_HOLD_REG;
        gModbusSlaveTxBuffer[giModbusSlaveTxBufferIndex++] = (iStartAddress >> 8);
        gModbusSlaveTxBuffer[giModbusSlaveTxBufferIndex++] = iStartAddress & 0x00FF;
        gModbusSlaveTxBuffer[giModbusSlaveTxBufferIndex++] = iQtyRegisters >> 8;
        gModbusSlaveTxBuffer[giModbusSlaveTxBufferIndex++] = iQtyRegisters & 0x00FF;

        iCRC16 = getCRC16(gModbusSlaveTxBuffer, giModbusSlaveTxBufferIndex);
        gModbusSlaveTxBuffer[giModbusSlaveTxBufferIndex++] = iCRC16 & 0x00FF;
        gModbusSlaveTxBuffer[giModbusSlaveTxBufferIndex++] = iCRC16 >> 8;
        modbusSlaveSendResponse();
        break;

    default: // Invalid Function Code. Dont do anything, and just return to Idle
        giModbusSlaveRxBufferIndex = 0;
        giModbusSlaveTxBufferIndex = 0;
        giErrorCode = MODBUS_INDEX_FC;
        iModbusSlaveState = MODBUS_SLAVE_STATE_IDLE;
        break;
    }
}

static void modbusSlaveSendResponse()
{
    sendSlaveResponse(gModbusSlaveTxBuffer, giModbusSlaveTxBufferIndex);
    giModbusSlaveTxBufferIndex = 0;
}

