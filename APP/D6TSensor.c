#include "D6TSensor.h"

SENSOR_DATA sensorData;
SENSOR_DATA *getSensorDataObj(void);

//Global Variables
uint16_t buf[128] = {};
int16_t avgTemp = 0;
uint8_t readbuff[64];
int tPTAT;
int tP[16];
int tPEC;


void populateSensorData()
{
    D6T_getvalue();

    sensorData.tPTAT = (int) ((readbuff[1] << 8) | readbuff[0]);
    sensorData.tP0 = (int) ((readbuff[3] << 8) | readbuff[2]);
    sensorData.tP1 = (int) ((readbuff[5] << 8) | readbuff[4]);
    sensorData.tP2 = (int) ((readbuff[7] << 8) | readbuff[6]);
    sensorData.tP3 = (int) ((readbuff[9] << 8) | readbuff[8]);
    sensorData.tP4 = (int) ((readbuff[11] << 8) | readbuff[10]);
    sensorData.tP5 = (int) ((readbuff[13] << 8) | readbuff[12]);
    sensorData.tP6 = (int) ((readbuff[15] << 8) | readbuff[14]);
    sensorData.tP7 = (int) ((readbuff[17] << 8) | readbuff[16]);
    sensorData.tP8 = (int) ((readbuff[19] << 8) | readbuff[18]);
    sensorData.tP9 = (int) ((readbuff[21] << 8) | readbuff[20]);
    sensorData.tP10 = (int) ((readbuff[23] << 8) | readbuff[22]);
    sensorData.tP11 = (int) ((readbuff[25] << 8) | readbuff[24]);
    sensorData.tP12 = (int) ((readbuff[27] << 8) | readbuff[26]);
    sensorData.tP13 = (int) ((readbuff[29] << 8) | readbuff[28]);
    sensorData.tP14 = (int) ((readbuff[31] << 8) | readbuff[30]);
    sensorData.tP15 = (int) ((readbuff[33] << 8) | readbuff[32]);
    sensorData.tPEC = (int) readbuff[34];

    sensorData.avgTemp = (sensorData.tPTAT + sensorData.tP0 + sensorData.tP1 + sensorData.tP2 +
            sensorData.tP3 + sensorData.tP4 + sensorData.tP5 + sensorData.tP6 +
            sensorData.tP7 + sensorData.tP8 + sensorData.tP9 + sensorData.tP10 +
            sensorData.tP11 + sensorData.tP12 + sensorData.tP13 + sensorData.tP14 +
            sensorData.tP15) / 16;
}

void D6T_getvalue()
{
    I2C1_generateStart();
    I2C1_Write(D6T_SLAVE_ADDR << 1);
    if (I2C1_checkACKSlave() != I2C_MASTER_ACK)
    {
        return;
    }

    I2C1_Write(0x4C); // 14h = { 0Ah(Addr7) : Write(0b) }
    if (I2C1_checkACKSlave() != I2C_MASTER_ACK)
    {
        return;
    }

    I2C1_generateRepeatedStart();
    I2C1_Write((D6T_SLAVE_ADDR << 1) | 1);
    if (I2C1_checkACKSlave() != I2C_MASTER_ACK)
    {
        return;
    }

    for (int i = 0; i < 35; i++)
    {
        readbuff[i] = I2C1_Read();
        if (i < 34)
        {
            I2C1_generateACK(I2C_MASTER_ACK);
        }
    }

    I2C1_generateACK(I2C_MASTER_NOTACK);
    I2C1_generateStop();

    if (!D6T_checkPEC(readbuff, 34))
    {
        return; // error
    }
}

/** <!-- D6T_checkPEC {{{ 1--> D6T PEC(Packet Error Check) calculation.
 * calculate the data sequence,
 * from an I2C Read client address (8bit) to thermal data end.
 */
bool D6T_checkPEC(uint8_t buf[], int n)
{
    int i;
    uint8_t crc = calc_crc((D6T_SLAVE_ADDR << 1) | 1); // I2C Read address (8bit)
    for (i = 0; i < n; i++)
    {
        crc = calc_crc(buf[i] ^ crc);
    }
    bool ret = (crc != buf[n]);
    if (ret)
    {
        //        UART1WriteString("PEC check failed:");
        //        UART1WriteString(crc);
        //        UART1WriteString("(cal) vs ");
        //        UART1WriteString(buf[n]);
        //        UART1WriteString("(get)");
    }
    return ret;
}

uint8_t calc_crc(uint8_t data)
{
    int index;
    uint8_t temp;
    for (index = 0; index < 8; index++)
    {
        temp = data;
        data <<= 1;
        if (temp & 0x80)
        {
            data ^= 0x07;
        }
    }
    return data;
}

SENSOR_DATA *getSensorDataObj(void)
{
    return &sensorData;
}