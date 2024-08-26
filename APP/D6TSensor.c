#include "D6TSensor.h"

// Global var
uint8_t readbuff[64];
int tPTAT;
int tP[16];
int tPEC;


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
    I2C1_Write((D6T_SLAVE_ADDR << 1) | 1 );
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