#include "timer2.h"

/**
 * This timer is used for delayms function.
 * This timer is set for PR2 to match at every 1ms
 */
void initTimer2()
{
    T2CON = 0x00;
    T2CONbits.TCKPS = 1; // 1:8 prescaler
    TMR2 = 0x00;
    PR2 = 2000U; //For Fosc = 32Mhz, at 1:8 prescaler for 1ms

    /* CALCULATION OF PERIOD REGISTER FOR 1msec DELAY WITH 1:1 PRESCALER 
     * PR2 = Required Delay / (pre - scaler * Period)
     * Fosc(Oscillator Freq) = 32 MHz
     * Period(T) = 1 / (Fosc / 2) = 1 / ((32 x 10^6) / 2) = 0.0625 uSec
     * PR2 = 1000 x 10^-6 / (8 * 0.0625 x10^-6)
     * PR23 = 2000
     */
}


/*******************************************************************************
 * This delay function running in a for loop for ms times.
 * If us value given is 1000, then total 1sec delay generated.
 */
void timer2Delayms(int ms)
{
    unsigned int i;
    IFS0bits.T2IF = 0;
    T2CONbits.TON = 1;
    for (i = 0; i < ms; i++)
    {
        while (!IFS0bits.T2IF);
        IFS0bits.T2IF = 0;
    }
    T2CONbits.TON = 0;
}

/******************************************************************************/