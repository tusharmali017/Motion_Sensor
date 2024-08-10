/* 
 * File:   modbus_slave.h
 * Author: Vinit Bhamburdekar
 *
 * Created on April 14, 2018, 10:50 AM
 */

#ifndef MODBUS_SLAVE_H
#define	MODBUS_SLAVE_H

#include "../modbusdefines.h"

#define MODBUS_SLAVE_ID   2
#define MODBUS_SLAVE_TX_BUFFER_SIZE  128
#define MODBUS_SLAVE_RX_BUFFER_SIZE  128

//#define MODBUS_INCLUDE_COILS

#ifdef	__cplusplus
extern "C" {
#endif

    typedef void (*MB_SLAVE_CALLBACK_UPDATE_SINGLE_REGISTER)(uint16_t iAddress, uint16_t iValue);
    typedef void (*MB_SLAVE_CALLBACK_UPDATE_HOLDING_REGISTERS)(uint16_t iStartAddress, uint16_t iQty, uint8_t *pValues);

    typedef void (*MB_SLAVE_CALLBACK_GET_INPUT_REGISTERS)(uint16_t iStartAddress, uint16_t iQty, uint8_t *buffer, uint16_t *bufferIndex);
    typedef void (*MB_SLAVE_CALLBACK_GET_HOLDING_REGISTERS)(uint16_t iStartAddress, uint16_t iQty, uint8_t *buffer, uint16_t *bufferIndex);

    typedef void (*MB_SLAVE_CALLBACK_SEND_DATA) (const uint8_t *data, uint16_t iLength);

    extern uint8_t gModbusSlaveRxBuffer[MODBUS_SLAVE_RX_BUFFER_SIZE];
    extern uint16_t giModbusSlaveRxBufferIndex;
    extern uint8_t gModbusSlaveTxBuffer[MODBUS_SLAVE_TX_BUFFER_SIZE];
    extern uint16_t giModbusSlaveTxBufferIndex;

    extern bool gbFlagModbusSlaveProcessRequest;

    void modbusSlaveTasks();

void initModbusSlave(uint16_t iSlaveID, MB_SLAVE_CALLBACK_UPDATE_SINGLE_REGISTER funcSlaveUpdateSingleReg, MB_SLAVE_CALLBACK_UPDATE_HOLDING_REGISTERS funcSlaveUpdateHoldingRegs,
                     MB_SLAVE_CALLBACK_GET_INPUT_REGISTERS funcSlaveGetInputRegs, MB_SLAVE_CALLBACK_GET_HOLDING_REGISTERS funcSlaveGetHoldingRegs, MB_SLAVE_CALLBACK_SEND_DATA funcSlaveSendData);

    int8_t modbusSlaveGetErrorCode();

#ifdef	__cplusplus
}
#endif

#endif	/* MODBUS_SLAVE_H */

