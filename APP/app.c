#include "app.h"

static void readD6TData();

//Global Variables
uint16_t buf[128] = {};
int16_t avgTemp = 0;

void runApp()
{
    //Enable I2C
    I2C1_open();

    //wait for 620 msec 
    timer1Delay(6200);

    while (1)
    {
        readD6TData();
        sprintf(buf, "%d.%d, %d.%d, %d.%d, %d.%d, %d.%d, %d.%d, %d.%d, %d.%d, %d.%d, %d.%d, %d.%d, %d.%d, %d.%d, %d.%d, %d.%d, %d.%d, %d.%d, %d\r\n",
                tPTAT / 10, tPTAT % 10, tP[0] / 10, tP[0] % 10, tP[1] / 10, tP[1] % 10, tP[2] / 10, tP[2] % 10, tP[3] / 10, tP[3] % 10, tP[4] / 10, tP[4] % 10,
                tP[5] / 10, tP[5] % 10, tP[6] / 10, tP[6] % 10, tP[7] / 10, tP[7] % 10, tP[8] / 10, tP[8] % 10, tP[9] / 10, tP[9] % 10, tP[10] / 10, tP[10] % 10,
                tP[11] / 10, tP[11] % 10, tP[12] / 10, tP[12] % 10, tP[13] / 10, tP[13] % 10, tP[14] / 10, tP[14] % 10, tP[15] / 10, tP[15] % 10, tPEC);

        UART1WriteString(buf);
        
        //wait for 100 msec to display next data
        timer1Delay(1000);
        
        avgTemp = (tP[0] + tP[1] + tP[2] + tP[3] + tP[4] + tP[5] + tP[6] + tP[7] + tP[8] + tP[9] + tP[10] + tP[11] + tP[12] + tP[13] + tP[14] + tP[15]) / 16;
        sprintf(buf, "Average Temperature = %d.%d\r\n\n", avgTemp/10, avgTemp%10);
        
        UART1WriteString(buf);
        
        //wait for 300 msec to read next data
        timer1Delay(3000);
    }

    //Disable I2C
    I2C1_close();
}

static void readD6TData()
{
    D6T_getvalue();

    tPTAT = (int) ((readbuff[1] << 8) | readbuff[0]);
    tP[0] = (int) ((readbuff[3] << 8) | readbuff[2]);
    tP[1] = (int) ((readbuff[5] << 8) | readbuff[4]);
    tP[2] = (int) ((readbuff[7] << 8) | readbuff[6]);
    tP[3] = (int) ((readbuff[9] << 8) | readbuff[8]);
    tP[4] = (int) ((readbuff[11] << 8) | readbuff[10]);
    tP[5] = (int) ((readbuff[13] << 8) | readbuff[12]);
    tP[6] = (int) ((readbuff[15] << 8) | readbuff[14]);
    tP[7] = (int) ((readbuff[17] << 8) | readbuff[16]);
    tP[8] = (int) ((readbuff[19] << 8) | readbuff[18]);
    tP[9] = (int) ((readbuff[21] << 8) | readbuff[20]);
    tP[10] = (int) ((readbuff[23] << 8) | readbuff[22]);
    tP[11] = (int) ((readbuff[25] << 8) | readbuff[24]);
    tP[12] = (int) ((readbuff[27] << 8) | readbuff[26]);
    tP[13] = (int) ((readbuff[29] << 8) | readbuff[28]);
    tP[14] = (int) ((readbuff[31] << 8) | readbuff[30]);
    tP[15] = (int) ((readbuff[33] << 8) | readbuff[32]);
    tPEC = (int) readbuff[34];
}

