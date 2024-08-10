#include "timer1.h"

/*******************************************************************************
 * This timer interrupts every 1ms
 */
void initTimer1(void)
{
    /*
     PRESCALE = 1:1
     * t = 100usec
     * Fosc = 32MHz Fosc/2 = 16MHz Tcy = 0.0625 us
     * 
     * t = N*PRE*Tcy
     * N = t/(PRE*Tcy) = 100/(1*0.0625) = 1600
     * PR2 = 15625 (0x3D09)    
     */
    //    T1CON = 0x00;
    //    T1CONbits.TCKPS = 0; // 1:1 prescaler
    //    
    //    TMR1 = 0x00;
    //    PR1 = 1600; //For Fosc = 32Mhz, at 1:8 prescaler for 100 us

    T1CON = 0x00;
    T1CONbits.TCKPS = 1; // 1:1 prescaler

    TMR1 = 0x00;
    PR1 = 2000; //For Fosc = 32Mhz, at 1:8 prescaler for 1ms
}

/******************************************************************************/

/*******************************************************************************
 * This delay function running in a for loop for us times.
 * If ms value given is 1000, then total 100usec delay generated.
 */
void timer1DelayMicroSec(int us)
{
    unsigned int i;
    IFS0bits.T1IF = 0;
    T1CONbits.TON = 1;
    for (i = 0; i < us; i++)
    {
        while (!IFS0bits.T1IF);
        IFS0bits.T1IF = 0;
    }
    T1CONbits.TON = 0;
}

/******************************************************************************/

/*******************************************************************************
 * This delay function running in a for loop for ms times.
 * If us value given is 1000, then total 1sec delay generated.
 */
void timer1Delayms(int ms)
{
    unsigned int i;
    IFS0bits.T1IF = 0;
    T1CONbits.TON = 1;
    for (i = 0; i < ms; i++)
    {
        while (!IFS0bits.T1IF);
        IFS0bits.T1IF = 0;
    }
    T1CONbits.TON = 0;
}

/******************************************************************************/