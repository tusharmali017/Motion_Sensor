#include "timer2.h"

/**
 * This timer is used for delayms function.
 * This timer is set for PR2 to match at every 1ms
 */
void initTimer2()
{
    T2CON = 0;
//    T2CONbits.TCKPS = 0b10; // 64 prescalar 
    T2CONbits.TCKPS = 0b01; // 8 prescalar 
    TMR2 = 0;
//    PR2 = 250;        //64 prescaler and 1 msec delay
    PR2 = 200;          //8 prescaler and 100 usec delay
    
    T2CONbits.TON = 0;
}
