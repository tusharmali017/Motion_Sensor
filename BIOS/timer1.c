#include "timer1.h"

void initTimer1(void)
{
    T1CON = 0;
    TMR1 = 0;
    PR1 = 400U; //period value for 100 usec delay

    /* CALCULATION OF PERIOD REGISTER FOR 1msec DELAY WITH 1:1 PRESCALER 
     * PR1 = Required Delay / (pre - scaler * Period)
     * Fosc(Oscillator Freq) = 8 MHz
     * Period(T) = 1 / (Fosc / 2) = 1 / ((8 x 10^6) / 2) = 0.25 uSec
     * PR1 = 100 x 10^-6 / (1 * 0.25 x10^-6)
     * PR1 = 400
     */
}

void timer1Delay(int us)
{
    T1CONbits.TON = 1; //start timer 1
    unsigned int i;

    for (i = 0; i < us; i++)
    {
        while (!IFS0bits.T1IF);
        IFS0bits.T1IF = 0;
    }
    T1CONbits.TON = 0; //stop timer 1
}

