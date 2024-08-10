#include "lcdslave.h"


/* STATIC FUNCTIONS AND VARIABLES */
static uint16_t iLCDInputReg[LCD_TOTAL_INPUT_REG] = {0};
static uint16_t iLCDHoldingReg[LCD_TOTAL_HOLDING_REG] = {0};


/*FUNCTION TO UPDATE LCD INPUT REGISTER */
void LCDUpdateInputReg(SENSOR_DATA *sensorData)
{
    uint8_t iIndex = 0;
    iLCDInputReg[iIndex++] = sensorData->iMotionDetected;
}

/*FUNCTION TO GET LCD INPUT REGISTERS */
void LCDGetInputRegisters(uint16_t iStartAddress, uint16_t iQty, uint8_t *buffer, uint16_t *bufferIndex)
{
    for (int i = iStartAddress; i < (iStartAddress + iQty); i++)
    {
        buffer[(*bufferIndex)++] = iLCDInputReg[i] >> 8;
        buffer[(*bufferIndex)++] = iLCDInputReg[i] & 0xFF;
    }
}

/*FUNCTION TO GET LCD HOLDING REGISTERS */
void LCDGetHoldingRegisters(uint16_t iStartAddress, uint16_t iQty, uint8_t *buffer, uint16_t *bufferIndex)
{
    for (int i = iStartAddress; i < (iStartAddress + iQty); i++)
    {
        buffer[(*bufferIndex)++] = iLCDHoldingReg[i] >> 8;
        buffer[(*bufferIndex)++] = iLCDHoldingReg[i] & 0xFF;
    }
}

/*FUNCTION TO UPDATE LCD HOLDING REGISTER */
void LCDUpdateHoldingRegisters(uint16_t iStartAddress, uint16_t iQty, uint8_t *pValues)
{
    uint16_t iIndex = 0;
    for (uint16_t i = (iStartAddress); i < (iStartAddress + iQty); i++)
    {
        iLCDHoldingReg[i] = (pValues[iIndex] << 8) | pValues[iIndex + 1];
        iIndex += 2;
    }
}

/*FUNCTION TO UPDATE LCD SINGLE REGISTER */
void LCDUpdateSingleRegister(uint16_t iAddress, uint16_t iValue)
{
    iLCDHoldingReg[iAddress] = iValue;
}