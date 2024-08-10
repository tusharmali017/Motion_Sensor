#include "pinmap.h"

static void setPeripheralMap(void);

void initPinmap(void)
{
    LATB = 0x0000;
    LATC = 0x0000;
    LATD = 0x0000;
    LATE = 0x0000;
    LATF = 0x0000;
    LATG = 0x0000;

    TRISB = 0xFFFF;
    TRISC = 0xFFFF;
    TRISD = 0xFFFF;
    TRISE = 0xFFFF;
    TRISF = 0xFFFF;
    TRISG = 0xFFFF;

    ANSELB = 0x0000;
    ANSELC = 0x0000;
    ANSELD = 0x0000;
    ANSELE = 0x0000;
    ANSELF = 0x0000;
    ANSELG = 0x0000;


    TRISFbits.TRISF0 = 0;   //Test LED as O/P pin
    LATFbits.LATF0 = 1;     //Test LED default value active High
   
    TRISDbits.TRISD0 = 1;   //BUZZER as O/P pin with default value active low

    ANSELBbits.ANSB2 = 1; //AN4
    ANSELBbits.ANSB3 = 1; //AN3
    ANSELBbits.ANSB4 = 1; //AN2
    ANSELBbits.ANSB5 = 1; //AN1

    setPeripheralMap();
}

/**
 * Tx and Rx pins of UART2 are configured here as RP17 and RP10 pins.
 * Tx and Rx pins of UART2 are configured here as RP16 and RP30 pins.
 */
static void setPeripheralMap(void)
{
    __builtin_write_OSCCONL(OSCCON & 0xbf);
    
    // Configure Input Functions 
    RPINR19bits.U2RXR = 17; // Assign U2RXR to RP17
    RPINR18bits.U1RXR = 30; // Assign U1RXR to RP30

    // Configure Output Functions
    RPOR5bits.RP10R = 5; //Assign U2TX To Pin RP10
    RPOR8bits.RP16R = 3; //Assign U1TX To Pin RP16

    RPINR20bits.SDI1R = 26; // Assign SPI1 MISO to RP26
    _RP19R = _RPOUT_SDO1; //Assign SPI1 MOSI To Pin RP19
    _RP21R = _RPOUT_SCK1OUT; //Assign SPI1 Clock To Pin RP21

    __builtin_write_OSCCONL(OSCCON | 0x40);
}
