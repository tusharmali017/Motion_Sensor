/* 
 * File:   isr.h
 * Author: tushar.mali
 *
 * Created on 10 February, 2023, 5:08 PM
 */

#ifndef ISR_H
#define	ISR_H

#include "../BIOS/bios.h"

#ifdef	__cplusplus
extern "C" {
#endif

    typedef void (*TMR1_CALLBACK)(void);
    void setTMR1Callback(TMR1_CALLBACK callback);
    
    typedef void (*UART2_CALLBACK)(void);
    void setUART2Callback(UART2_CALLBACK callback);


#ifdef	__cplusplus
}
#endif

#endif	/* ISR_H */


