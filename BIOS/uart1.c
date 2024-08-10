#include "uart1.h"

/**
 * Baud rate register loaded with the value calculated for 9600 baud rate.
 */
void initUART1(void)
{
    U1MODE = 0;
    U1MODEbits.BRGH = 1;
    U1BRG = 415; // 9600 baud at 32Mhz Fosc

    U1STA = 0;
    U1ADMD = 0;

    U1MODEbits.UARTEN = 1;
    U1STAbits.UTXEN = 1;
    U1STAbits.URXEN = 1;
}

void UART1WriteByte(const uint8_t data)
{
    U1TXREG = data;
    while (U1STAbits.TRMT == 0);
}

void UART1WriteString(const char* data)
{
    while (*data != '\0')
    {
        UART1WriteByte(*data);
        data++;
    }
}

void UART1WriteData(const uint8_t *data, uint16_t iLength)
{
    while (iLength--)
    {
        UART1WriteByte(*data);
        data++;
    }
}
