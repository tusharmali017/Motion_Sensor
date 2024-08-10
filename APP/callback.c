#include "callback.h"


/* STATIC FUNCTIONS AND VARIABLES */
static uint32_t iCountSlaveCharacterDelay = 0;

/* GLOBAL FUNCTIONS AND VARIABLES */
bool gbFlagTriggerSlaveCharDelay = false;

/* CALLBACK INITIALIZATION FUNCTION 
 * CLEARS INTERRUPT FLAG FOR TIMER1 AND UART 2 PERIPHERALS
 * ENABLE INTERRUPT FOR TIMER1 AND UART 2 PERIPHERALS
 * STARTS TIMER1
 * FUNCTION CALL FOR TIMER1 AND UART 2 CALLBACK FUNCTIONS
 */
void initCallback(void)
{
    /*Enable Timer1 Interrupt and clear its Flag IF*/
    IFS0bits.T1IF = 0;
    IEC0bits.T1IE = 1;

    /*Enable UART2 Interrupt and clear its Flag IF*/
    IFS1bits.U2RXIF = 0;
    IEC1bits.U2RXIE = 1;

    /*Start Timer1*/
    T1CONbits.TON = 1;

    setTMR1Callback(tmr1Callback);
    setUART2Callback(uart2RxCallback);
}

/* TIMER1 CALLBACK FUNCTIONS MONITORS DIFFERENT COUNTS AND SET RESPECTIVE FLAGS */
void tmr1Callback(void)
{
    /* If data is not received in 4ms delay then it will set the flag for modbus slave process request
     */
    if (gbFlagTriggerSlaveCharDelay) //trigger slave char delay is for when controller is slave and sending data to LCD
    {
        iCountSlaveCharacterDelay++;
        if (iCountSlaveCharacterDelay >= 4)
        {
            iCountSlaveCharacterDelay = 0;
            gbFlagTriggerSlaveCharDelay = false;
            gbFlagModbusSlaveProcessRequest = true;
        }
    }
    else
    {
        iCountSlaveCharacterDelay = 0;
    }
    IFS0bits.T1IF = 0;
}

/* UART2 RX CALLBACK FUNCTION 
 * Here, we are receiving Data Frames from LCD on UART2 through Modbus
 * uart1callback function is used to store ModbusSlaveRxBuffer 
 */
void uart2RxCallback(void)
{
    gbFlagTriggerSlaveCharDelay = true;
    iCountSlaveCharacterDelay = 0;
    /* Parsing a ModbusSlaveRxBuffer when we are receiving data on UART2*/
    gModbusSlaveRxBuffer[giModbusSlaveRxBufferIndex++] = (uint8_t) U2RXREG;
    
    IFS1bits.U2RXIF = 0;
}

