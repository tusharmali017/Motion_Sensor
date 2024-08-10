#include "bios.h"


void initBIOS(void)
{
    initPinmap();
    initTimer1();
    initTimer2();
    initUART1();
    initUART2();
    initializeI2C1();
    initializeI2C2();
    init_SPI();
}
