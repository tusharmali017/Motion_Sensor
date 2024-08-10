/* 
 * File:   uart2.h
 * Author: tushar.mali
 *
 * Created on 5 October, 2023, 4:28 PM
 */

#ifndef UART2_H
#define	UART2_H

#include "../projectdefines.h"

#ifdef	__cplusplus
extern "C" {
#endif
    
    void initUART2(void);
    void UART2WriteByte(const uint8_t data);
    void UART2WriteString(const char* data);
    void UART2WriteData(const uint8_t *data, uint16_t iLength);



#ifdef	__cplusplus
}
#endif

#endif	/* UART2_H */

