#include "uart2.h"

/**
 * Baud rate register loaded with the value calculated for 9600 baud rate.
 */
void initUART2(void)
{
    U2MODE = 0;
    U2MODEbits.BRGH = 1;
    U2BRG = 415; // 9600 baud at 8Mhz Fosc

    U2STA = 0;
    U2ADMD = 0;

    U2MODEbits.UARTEN = 1;
    U2STAbits.UTXEN = 1;
    U2STAbits.URXEN = 1;
}

void UART2WriteByte(const uint8_t data)
{
    U2TXREG = data;
    while (U2STAbits.TRMT == 0);
}

void UART2WriteString(const char* data)
{
    while (*data != '\0')
    {
        UART2WriteByte(*data);
        data++;
    }
}

void UART2WriteData(const uint8_t *data, uint16_t iLength)
{
    while (iLength--)
    {
        UART2WriteByte(*data);
        data++;
    }
}

