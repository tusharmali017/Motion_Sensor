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
    T1CONbits.TCKPS = 1; // 1:8 prescaler

    TMR1 = 0x00;
    PR1 = 2000; //For Fosc = 32Mhz, at 1:8 prescaler for 1ms
}

/******************************************************************************/