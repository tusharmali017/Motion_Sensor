#include "isr.h"


/****************** Static Variable Defined ***********************************/

static TMR1_CALLBACK tmr1Callback;
static UART2_CALLBACK uart2Callback;

/******************************************************************************/

/*********************** Timer 1 ISR & Callback *******************************/

void __attribute__((interrupt(auto_psv))) _T1Interrupt(void)
{
    IFS0bits.T1IF = 0;
    tmr1Callback();
}

void setTMR1Callback(TMR1_CALLBACK callback)
{
    tmr1Callback = callback;
}

/******************************************************************************/



/************************ UART 2 ISR & Callback *******************************/

void __attribute__((interrupt(auto_psv))) _U2RXInterrupt(void)
{
    uart2Callback();
    IFS1bits.U2RXIF = 0;
}

void setUART2Callback(UART2_CALLBACK callback)
{
    uart2Callback = callback;
}

/******************************************************************************/