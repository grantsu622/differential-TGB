/**
  @Generated Pin Manager Header File

  @Company:
    Microchip Technology Inc.

  @File Name:
    pin_manager.h

  @Summary:
    This is the Pin Manager file generated using MPLAB(c) Code Configurator

  @Description:
    This header file provides implementations for pin APIs for all pins selected in the GUI.
    Generation Information :
        Product Revision  :  MPLAB(c) Code Configurator - 3.15.0
        Device            :  PIC16F1784
        Version           :  1.01
    The generated drivers are tested against the following:
        Compiler          :  XC8 1.35
        MPLAB             :  MPLAB X 3.20

    Copyright (c) 2013 - 2015 released Microchip Technology Inc.  All rights reserved.

    Microchip licenses to you the right to use, modify, copy and distribute
    Software only when embedded on a Microchip microcontroller or digital signal
    controller that is integrated into your product or third party product
    (pursuant to the sublicense terms in the accompanying license agreement).

    You should refer to the license agreement accompanying this Software for
    additional information regarding your rights and obligations.

    SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,
    EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
    MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
    IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
    CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
    OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
    INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
    CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
    SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
    (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.

*/


#ifndef PIN_MANAGER_H
#define PIN_MANAGER_H

#define INPUT   1
#define OUTPUT  0

#define HIGH    1
#define LOW     0

#define ANALOG      1
#define DIGITAL     0

#define PULL_UP_ENABLED      1
#define PULL_UP_DISABLED     0

// get/set IO_RA0_M1W_Signal aliases
#define IO_RA0_M1W_Signal_TRIS               TRISA0
#define IO_RA0_M1W_Signal_LAT                LATA0
#define IO_RA0_M1W_Signal_PORT               RA0
#define IO_RA0_M1W_Signal_WPU                WPUA0
#define IO_RA0_M1W_Signal_ANS                ANSA0
#define IO_RA0_M1W_Signal_SetHigh()    do { LATA0 = 1; } while(0)
#define IO_RA0_M1W_Signal_SetLow()   do { LATA0 = 0; } while(0)
#define IO_RA0_M1W_Signal_Toggle()   do { LATA0 = ~LATA0; } while(0)
#define IO_RA0_M1W_Signal_GetValue()         PORTAbits.RA0
#define IO_RA0_M1W_Signal_SetDigitalInput()    do { TRISA0 = 1; } while(0)
#define IO_RA0_M1W_Signal_SetDigitalOutput()   do { TRISA0 = 0; } while(0)

#define IO_RA0_M1W_Signal_SetPullup()    do { WPUA0 = 1; } while(0)
#define IO_RA0_M1W_Signal_ResetPullup()   do { WPUA0 = 0; } while(0)
#define IO_RA0_M1W_Signal_SetAnalogMode()   do { ANSA0 = 1; } while(0)
#define IO_RA0_M1W_Signal_SetDigitalMode()   do { ANSA0 = 0; } while(0)


// get/set IO_RA1_M1B_Signal aliases
#define IO_RA1_M1B_Signal_TRIS               TRISA1
#define IO_RA1_M1B_Signal_LAT                LATA1
#define IO_RA1_M1B_Signal_PORT               RA1
#define IO_RA1_M1B_Signal_WPU                WPUA1
#define IO_RA1_M1B_Signal_ANS                ANSA1
#define IO_RA1_M1B_Signal_SetHigh()    do { LATA1 = 1; } while(0)
#define IO_RA1_M1B_Signal_SetLow()   do { LATA1 = 0; } while(0)
#define IO_RA1_M1B_Signal_Toggle()   do { LATA1 = ~LATA1; } while(0)
#define IO_RA1_M1B_Signal_GetValue()         PORTAbits.RA1
#define IO_RA1_M1B_Signal_SetDigitalInput()    do { TRISA1 = 1; } while(0)
#define IO_RA1_M1B_Signal_SetDigitalOutput()   do { TRISA1 = 0; } while(0)

#define IO_RA1_M1B_Signal_SetPullup()    do { WPUA1 = 1; } while(0)
#define IO_RA1_M1B_Signal_ResetPullup()   do { WPUA1 = 0; } while(0)
#define IO_RA1_M1B_Signal_SetAnalogMode()   do { ANSA1 = 1; } while(0)
#define IO_RA1_M1B_Signal_SetDigitalMode()   do { ANSA1 = 0; } while(0)


// get/set IO_RA2_M1W_CTRL aliases
#define IO_RA2_M1W_CTRL_TRIS               TRISA2
#define IO_RA2_M1W_CTRL_LAT                LATA2
#define IO_RA2_M1W_CTRL_PORT               RA2
#define IO_RA2_M1W_CTRL_WPU                WPUA2
#define IO_RA2_M1W_CTRL_ANS                ANSA2
#define IO_RA2_M1W_CTRL_SetHigh()    do { LATA2 = 1; } while(0)
#define IO_RA2_M1W_CTRL_SetLow()   do { LATA2 = 0; } while(0)
#define IO_RA2_M1W_CTRL_Toggle()   do { LATA2 = ~LATA2; } while(0)
#define IO_RA2_M1W_CTRL_GetValue()         PORTAbits.RA2
#define IO_RA2_M1W_CTRL_SetDigitalInput()    do { TRISA2 = 1; } while(0)
#define IO_RA2_M1W_CTRL_SetDigitalOutput()   do { TRISA2 = 0; } while(0)

#define IO_RA2_M1W_CTRL_SetPullup()    do { WPUA2 = 1; } while(0)
#define IO_RA2_M1W_CTRL_ResetPullup()   do { WPUA2 = 0; } while(0)
#define IO_RA2_M1W_CTRL_SetAnalogMode()   do { ANSA2 = 1; } while(0)
#define IO_RA2_M1W_CTRL_SetDigitalMode()   do { ANSA2 = 0; } while(0)


// get/set IO_RA3_M1Y_Signal aliases
#define IO_RA3_M1Y_Signal_TRIS               TRISA3
#define IO_RA3_M1Y_Signal_LAT                LATA3
#define IO_RA3_M1Y_Signal_PORT               RA3
#define IO_RA3_M1Y_Signal_WPU                WPUA3
#define IO_RA3_M1Y_Signal_ANS                ANSA3
#define IO_RA3_M1Y_Signal_SetHigh()    do { LATA3 = 1; } while(0)
#define IO_RA3_M1Y_Signal_SetLow()   do { LATA3 = 0; } while(0)
#define IO_RA3_M1Y_Signal_Toggle()   do { LATA3 = ~LATA3; } while(0)
#define IO_RA3_M1Y_Signal_GetValue()         PORTAbits.RA3
#define IO_RA3_M1Y_Signal_SetDigitalInput()    do { TRISA3 = 1; } while(0)
#define IO_RA3_M1Y_Signal_SetDigitalOutput()   do { TRISA3 = 0; } while(0)

#define IO_RA3_M1Y_Signal_SetPullup()    do { WPUA3 = 1; } while(0)
#define IO_RA3_M1Y_Signal_ResetPullup()   do { WPUA3 = 0; } while(0)
#define IO_RA3_M1Y_Signal_SetAnalogMode()   do { ANSA3 = 1; } while(0)
#define IO_RA3_M1Y_Signal_SetDigitalMode()   do { ANSA3 = 0; } while(0)


// get/set IO_RA4_M1Y_CTRL aliases
#define IO_RA4_M1Y_CTRL_TRIS               TRISA4
#define IO_RA4_M1Y_CTRL_LAT                LATA4
#define IO_RA4_M1Y_CTRL_PORT               RA4
#define IO_RA4_M1Y_CTRL_WPU                WPUA4
#define IO_RA4_M1Y_CTRL_ANS                ANSA4
#define IO_RA4_M1Y_CTRL_SetHigh()    do { LATA4 = 1; } while(0)
#define IO_RA4_M1Y_CTRL_SetLow()   do { LATA4 = 0; } while(0)
#define IO_RA4_M1Y_CTRL_Toggle()   do { LATA4 = ~LATA4; } while(0)
#define IO_RA4_M1Y_CTRL_GetValue()         PORTAbits.RA4
#define IO_RA4_M1Y_CTRL_SetDigitalInput()    do { TRISA4 = 1; } while(0)
#define IO_RA4_M1Y_CTRL_SetDigitalOutput()   do { TRISA4 = 0; } while(0)

#define IO_RA4_M1Y_CTRL_SetPullup()    do { WPUA4 = 1; } while(0)
#define IO_RA4_M1Y_CTRL_ResetPullup()   do { WPUA4 = 0; } while(0)
#define IO_RA4_M1Y_CTRL_SetAnalogMode()   do { ANSA4 = 1; } while(0)
#define IO_RA4_M1Y_CTRL_SetDigitalMode()   do { ANSA4 = 0; } while(0)


// get/set IO_RA4_M1Y_CTRL aliases
#define IO_RA4_M1Y_CTRL_TRIS               TRISA4
#define IO_RA4_M1Y_CTRL_LAT                LATA4
#define IO_RA4_M1Y_CTRL_PORT               RA4
#define IO_RA4_M1Y_CTRL_WPU                WPUA4
#define IO_RA4_M1Y_CTRL_ANS                ANSA4
#define IO_RA4_M1Y_CTRL_SetHigh()    do { LATA4 = 1; } while(0)
#define IO_RA4_M1Y_CTRL_SetLow()   do { LATA4 = 0; } while(0)
#define IO_RA4_M1Y_CTRL_Toggle()   do { LATA4 = ~LATA4; } while(0)
#define IO_RA4_M1Y_CTRL_GetValue()         PORTAbits.RA4
#define IO_RA4_M1Y_CTRL_SetDigitalInput()    do { TRISA4 = 1; } while(0)
#define IO_RA4_M1Y_CTRL_SetDigitalOutput()   do { TRISA4 = 0; } while(0)

#define IO_RA4_M1Y_CTRL_SetPullup()    do { WPUA4 = 1; } while(0)
#define IO_RA4_M1Y_CTRL_ResetPullup()   do { WPUA4 = 0; } while(0)
#define IO_RA4_M1Y_CTRL_SetAnalogMode()   do { ANSA4 = 1; } while(0)
#define IO_RA4_M1Y_CTRL_SetDigitalMode()   do { ANSA4 = 0; } while(0)


// get/set IO_RA6_M2Y_CTRL aliases
#define IO_RA6_M2Y_CTRL_TRIS               TRISA6
#define IO_RA6_M2Y_CTRL_LAT                LATA6
#define IO_RA6_M2Y_CTRL_PORT               RA6
#define IO_RA6_M2Y_CTRL_WPU                WPUA6
#define IO_RA6_M2Y_CTRL_SetHigh()    do { LATA6 = 1; } while(0)
#define IO_RA6_M2Y_CTRL_SetLow()   do { LATA6 = 0; } while(0)
#define IO_RA6_M2Y_CTRL_Toggle()   do { LATA6 = ~LATA6; } while(0)
#define IO_RA6_M2Y_CTRL_GetValue()         PORTAbits.RA6
#define IO_RA6_M2Y_CTRL_SetDigitalInput()    do { TRISA6 = 1; } while(0)
#define IO_RA6_M2Y_CTRL_SetDigitalOutput()   do { TRISA6 = 0; } while(0)

#define IO_RA6_M2Y_CTRL_SetPullup()    do { WPUA6 = 1; } while(0)
#define IO_RA6_M2Y_CTRL_ResetPullup()   do { WPUA6 = 0; } while(0)


// get/set IO_RA7_M2W_CTRL aliases
#define IO_RA7_M2W_CTRL_TRIS               TRISA7
#define IO_RA7_M2W_CTRL_LAT                LATA7
#define IO_RA7_M2W_CTRL_PORT               RA7
#define IO_RA7_M2W_CTRL_WPU                WPUA7
#define IO_RA7_M2W_CTRL_ANS                ANSA7
#define IO_RA7_M2W_CTRL_SetHigh()    do { LATA7 = 1; } while(0)
#define IO_RA7_M2W_CTRL_SetLow()   do { LATA7 = 0; } while(0)
#define IO_RA7_M2W_CTRL_Toggle()   do { LATA7 = ~LATA7; } while(0)
#define IO_RA7_M2W_CTRL_GetValue()         PORTAbits.RA7
#define IO_RA7_M2W_CTRL_SetDigitalInput()    do { TRISA7 = 1; } while(0)
#define IO_RA7_M2W_CTRL_SetDigitalOutput()   do { TRISA7 = 0; } while(0)

#define IO_RA7_M2W_CTRL_SetPullup()    do { WPUA7 = 1; } while(0)
#define IO_RA7_M2W_CTRL_ResetPullup()   do { WPUA7 = 0; } while(0)
#define IO_RA7_M2W_CTRL_SetAnalogMode()   do { ANSA7 = 1; } while(0)
#define IO_RA7_M2W_CTRL_SetDigitalMode()   do { ANSA7 = 0; } while(0)


// get/set IO_RB1_M2R aliases
#define IO_RB1_M2R_TRIS               TRISB1
#define IO_RB1_M2R_LAT                LATB1
#define IO_RB1_M2R_PORT               RB1
#define IO_RB1_M2R_WPU                WPUB1
#define IO_RB1_M2R_ANS                ANSB1
#define IO_RB1_M2R_SetHigh()    do { LATB1 = 1; } while(0)
#define IO_RB1_M2R_SetLow()   do { LATB1 = 0; } while(0)
#define IO_RB1_M2R_Toggle()   do { LATB1 = ~LATB1; } while(0)
#define IO_RB1_M2R_GetValue()         PORTBbits.RB1
#define IO_RB1_M2R_SetDigitalInput()    do { TRISB1 = 1; } while(0)
#define IO_RB1_M2R_SetDigitalOutput()   do { TRISB1 = 0; } while(0)

#define IO_RB1_M2R_SetPullup()    do { WPUB1 = 1; } while(0)
#define IO_RB1_M2R_ResetPullup()   do { WPUB1 = 0; } while(0)
#define IO_RB1_M2R_SetAnalogMode()   do { ANSB1 = 1; } while(0)
#define IO_RB1_M2R_SetDigitalMode()   do { ANSB1 = 0; } while(0)


// get/set IO_RB2_M2F aliases
#define IO_RB2_M2F_TRIS               TRISB2
#define IO_RB2_M2F_LAT                LATB2
#define IO_RB2_M2F_PORT               RB2
#define IO_RB2_M2F_WPU                WPUB2
#define IO_RB2_M2F_ANS                ANSB2
#define IO_RB2_M2F_SetHigh()    do { LATB2 = 1; } while(0)
#define IO_RB2_M2F_SetLow()   do { LATB2 = 0; } while(0)
#define IO_RB2_M2F_Toggle()   do { LATB2 = ~LATB2; } while(0)
#define IO_RB2_M2F_GetValue()         PORTBbits.RB2
#define IO_RB2_M2F_SetDigitalInput()    do { TRISB2 = 1; } while(0)
#define IO_RB2_M2F_SetDigitalOutput()   do { TRISB2 = 0; } while(0)

#define IO_RB2_M2F_SetPullup()    do { WPUB2 = 1; } while(0)
#define IO_RB2_M2F_ResetPullup()   do { WPUB2 = 0; } while(0)
#define IO_RB2_M2F_SetAnalogMode()   do { ANSB2 = 1; } while(0)
#define IO_RB2_M2F_SetDigitalMode()   do { ANSB2 = 0; } while(0)


// get/set IO_RB3_M1R aliases
#define IO_RB3_M1R_TRIS               TRISB3
#define IO_RB3_M1R_LAT                LATB3
#define IO_RB3_M1R_PORT               RB3
#define IO_RB3_M1R_WPU                WPUB3
#define IO_RB3_M1R_ANS                ANSB3
#define IO_RB3_M1R_SetHigh()    do { LATB3 = 1; } while(0)
#define IO_RB3_M1R_SetLow()   do { LATB3 = 0; } while(0)
#define IO_RB3_M1R_Toggle()   do { LATB3 = ~LATB3; } while(0)
#define IO_RB3_M1R_GetValue()         PORTBbits.RB3
#define IO_RB3_M1R_SetDigitalInput()    do { TRISB3 = 1; } while(0)
#define IO_RB3_M1R_SetDigitalOutput()   do { TRISB3 = 0; } while(0)

#define IO_RB3_M1R_SetPullup()    do { WPUB3 = 1; } while(0)
#define IO_RB3_M1R_ResetPullup()   do { WPUB3 = 0; } while(0)
#define IO_RB3_M1R_SetAnalogMode()   do { ANSB3 = 1; } while(0)
#define IO_RB3_M1R_SetDigitalMode()   do { ANSB3 = 0; } while(0)


// get/set IO_RB4_M1F aliases
#define IO_RB4_M1F_TRIS               TRISB4
#define IO_RB4_M1F_LAT                LATB4
#define IO_RB4_M1F_PORT               RB4
#define IO_RB4_M1F_WPU                WPUB4
#define IO_RB4_M1F_ANS                ANSB4
#define IO_RB4_M1F_SetHigh()    do { LATB4 = 1; } while(0)
#define IO_RB4_M1F_SetLow()   do { LATB4 = 0; } while(0)
#define IO_RB4_M1F_Toggle()   do { LATB4 = ~LATB4; } while(0)
#define IO_RB4_M1F_GetValue()         PORTBbits.RB4
#define IO_RB4_M1F_SetDigitalInput()    do { TRISB4 = 1; } while(0)
#define IO_RB4_M1F_SetDigitalOutput()   do { TRISB4 = 0; } while(0)

#define IO_RB4_M1F_SetPullup()    do { WPUB4 = 1; } while(0)
#define IO_RB4_M1F_ResetPullup()   do { WPUB4 = 0; } while(0)
#define IO_RB4_M1F_SetAnalogMode()   do { ANSB4 = 1; } while(0)
#define IO_RB4_M1F_SetDigitalMode()   do { ANSB4 = 0; } while(0)


// get/set IO_RB4_M1F aliases
/*#define IO_RB4_M1F_TRIS               TRISB4
#define IO_RB4_M1F_LAT                LATB4
#define IO_RB4_M1F_PORT               RB4
#define IO_RB4_M1F_WPU                WPUB4
#define IO_RB4_M1F_ANS                ANSB4
#define IO_RB4_M1F_SetHigh()    do { LATB4 = 1; } while(0)
#define IO_RB4_M1F_SetLow()   do { LATB4 = 0; } while(0)
#define IO_RB4_M1F_Toggle()   do { LATB4 = ~LATB4; } while(0)
#define IO_RB4_M1F_GetValue()         PORTBbits.RB4
#define IO_RB4_M1F_SetDigitalInput()    do { TRISB4 = 1; } while(0)
#define IO_RB4_M1F_SetDigitalOutput()   do { TRISB4 = 0; } while(0)

#define IO_RB4_M1F_SetPullup()    do { WPUB4 = 1; } while(0)
#define IO_RB4_M1F_ResetPullup()   do { WPUB4 = 0; } while(0)
#define IO_RB4_M1F_SetAnalogMode()   do { ANSB4 = 1; } while(0)
#define IO_RB4_M1F_SetDigitalMode()   do { ANSB4 = 0; } while(0)
*/

// get/set IO_RC0_M2W_Signal aliases
#define IO_RC0_M2W_Signal_TRIS               TRISC0
#define IO_RC0_M2W_Signal_LAT                LATC0
#define IO_RC0_M2W_Signal_PORT               RC0
#define IO_RC0_M2W_Signal_WPU                WPUC0
#define IO_RC0_M2W_Signal_SetHigh()    do { LATC0 = 1; } while(0)
#define IO_RC0_M2W_Signal_SetLow()   do { LATC0 = 0; } while(0)
#define IO_RC0_M2W_Signal_Toggle()   do { LATC0 = ~LATC0; } while(0)
#define IO_RC0_M2W_Signal_GetValue()         PORTCbits.RC0
#define IO_RC0_M2W_Signal_SetDigitalInput()    do { TRISC0 = 1; } while(0)
#define IO_RC0_M2W_Signal_SetDigitalOutput()   do { TRISC0 = 0; } while(0)

#define IO_RC0_M2W_Signal_SetPullup()    do { WPUC0 = 1; } while(0)
#define IO_RC0_M2W_Signal_ResetPullup()   do { WPUC0 = 0; } while(0)


// get/set IO_RC1_M2B_Signal aliases
#define IO_RC1_M2B_Signal_TRIS               TRISC1
#define IO_RC1_M2B_Signal_LAT                LATC1
#define IO_RC1_M2B_Signal_PORT               RC1
#define IO_RC1_M2B_Signal_WPU                WPUC1
#define IO_RC1_M2B_Signal_SetHigh()    do { LATC1 = 1; } while(0)
#define IO_RC1_M2B_Signal_SetLow()   do { LATC1 = 0; } while(0)
#define IO_RC1_M2B_Signal_Toggle()   do { LATC1 = ~LATC1; } while(0)
#define IO_RC1_M2B_Signal_GetValue()         PORTCbits.RC1
#define IO_RC1_M2B_Signal_SetDigitalInput()    do { TRISC1 = 1; } while(0)
#define IO_RC1_M2B_Signal_SetDigitalOutput()   do { TRISC1 = 0; } while(0)

#define IO_RC1_M2B_Signal_SetPullup()    do { WPUC1 = 1; } while(0)
#define IO_RC1_M2B_Signal_ResetPullup()   do { WPUC1 = 0; } while(0)


// get/set IO_RC2_M2Y_Signal aliases
#define IO_RC2_M2Y_Signal_TRIS               TRISC2
#define IO_RC2_M2Y_Signal_LAT                LATC2
#define IO_RC2_M2Y_Signal_PORT               RC2
#define IO_RC2_M2Y_Signal_WPU                WPUC2
#define IO_RC2_M2Y_Signal_SetHigh()    do { LATC2 = 1; } while(0)
#define IO_RC2_M2Y_Signal_SetLow()   do { LATC2 = 0; } while(0)
#define IO_RC2_M2Y_Signal_Toggle()   do { LATC2 = ~LATC2; } while(0)
#define IO_RC2_M2Y_Signal_GetValue()         PORTCbits.RC2
#define IO_RC2_M2Y_Signal_SetDigitalInput()    do { TRISC2 = 1; } while(0)
#define IO_RC2_M2Y_Signal_SetDigitalOutput()   do { TRISC2 = 0; } while(0)

#define IO_RC2_M2Y_Signal_SetPullup()    do { WPUC2 = 1; } while(0)
#define IO_RC2_M2Y_Signal_ResetPullup()   do { WPUC2 = 0; } while(0)


// get/set IO_RC7_LED1 aliases
#define IO_RC7_LED1_TRIS               TRISC7
#define IO_RC7_LED1_LAT                LATC7
#define IO_RC7_LED1_PORT               RC7
#define IO_RC7_LED1_WPU                WPUC7
#define IO_RC7_LED1_SetHigh()    do { LATC7 = 1; } while(0)
#define IO_RC7_LED1_SetLow()   do { LATC7 = 0; } while(0)
#define IO_RC7_LED1_Toggle()   do { LATC7 = ~LATC7; } while(0)
#define IO_RC7_LED1_GetValue()         PORTCbits.RC7
#define IO_RC7_LED1_SetDigitalInput()    do { TRISC7 = 1; } while(0)
#define IO_RC7_LED1_SetDigitalOutput()   do { TRISC7 = 0; } while(0)

#define IO_RC7_LED1_SetPullup()    do { WPUC7 = 1; } while(0)
#define IO_RC7_LED1_ResetPullup()   do { WPUC7 = 0; } while(0)


// get/set IO_RD0_CTRL_4WL aliases
#define IO_RD0_CTRL_4WL_TRIS               TRISD0
#define IO_RD0_CTRL_4WL_LAT                LATD0
#define IO_RD0_CTRL_4WL_PORT               RD0
#define IO_RD0_CTRL_4WL_WPU                WPUD0
#define IO_RD0_CTRL_4WL_ANS                ANSD0
#define IO_RD0_CTRL_4WL_SetHigh()    do { LATD0 = 1; } while(0)
#define IO_RD0_CTRL_4WL_SetLow()   do { LATD0 = 0; } while(0)
#define IO_RD0_CTRL_4WL_Toggle()   do { LATD0 = ~LATD0; } while(0)
#define IO_RD0_CTRL_4WL_GetValue()         PORTDbits.RD0
#define IO_RD0_CTRL_4WL_SetDigitalInput()    do { TRISD0 = 1; } while(0)
#define IO_RD0_CTRL_4WL_SetDigitalOutput()   do { TRISD0 = 0; } while(0)

#define IO_RD0_CTRL_4WL_SetPullup()    do { WPUD0 = 1; } while(0)
#define IO_RD0_CTRL_4WL_ResetPullup()   do { WPUD0 = 0; } while(0)
#define IO_RD0_CTRL_4WL_SetAnalogMode()   do { ANSD0 = 1; } while(0)
#define IO_RD0_CTRL_4WL_SetDigitalMode()   do { ANSD0 = 0; } while(0)


// get/set IO_RD1_CTRL_4W aliases
#define IO_RD1_CTRL_4W_TRIS               TRISD1
#define IO_RD1_CTRL_4W_LAT                LATD1
#define IO_RD1_CTRL_4W_PORT               RD1
#define IO_RD1_CTRL_4W_WPU                WPUD1
#define IO_RD1_CTRL_4W_ANS                ANSD1
#define IO_RD1_CTRL_4W_SetHigh()    do { LATD1 = 1; } while(0)
#define IO_RD1_CTRL_4W_SetLow()   do { LATD1 = 0; } while(0)
#define IO_RD1_CTRL_4W_Toggle()   do { LATD1 = ~LATD1; } while(0)
#define IO_RD1_CTRL_4W_GetValue()         PORTDbits.RD1
#define IO_RD1_CTRL_4W_SetDigitalInput()    do { TRISD1 = 1; } while(0)
#define IO_RD1_CTRL_4W_SetDigitalOutput()   do { TRISD1 = 0; } while(0)

#define IO_RD1_CTRL_4W_SetPullup()    do { WPUD1 = 1; } while(0)
#define IO_RD1_CTRL_4W_ResetPullup()   do { WPUD1 = 0; } while(0)
#define IO_RD1_CTRL_4W_SetAnalogMode()   do { ANSD1 = 1; } while(0)
#define IO_RD1_CTRL_4W_SetDigitalMode()   do { ANSD1 = 0; } while(0)


// get/set IO_RD4_CTRL_2WL aliases
#define IO_RD4_CTRL_2WL_TRIS               TRISD4
#define IO_RD4_CTRL_2WL_LAT                LATD4
#define IO_RD4_CTRL_2WL_PORT               RD4
#define IO_RD4_CTRL_2WL_WPU                WPUD4
#define IO_RD4_CTRL_2WL_SetHigh()    do { LATD4 = 1; } while(0)
#define IO_RD4_CTRL_2WL_SetLow()   do { LATD4 = 0; } while(0)
#define IO_RD4_CTRL_2WL_Toggle()   do { LATD4 = ~LATD4; } while(0)
#define IO_RD4_CTRL_2WL_GetValue()         PORTDbits.RD4
#define IO_RD4_CTRL_2WL_SetDigitalInput()    do { TRISD4 = 1; } while(0)
#define IO_RD4_CTRL_2WL_SetDigitalOutput()   do { TRISD4 = 0; } while(0)

#define IO_RD4_CTRL_2WL_SetPullup()    do { WPUD4 = 1; } while(0)
#define IO_RD4_CTRL_2WL_ResetPullup()   do { WPUD4 = 0; } while(0)


// get/set IO_RD5_CTRL_2W aliases
#define IO_RD5_CTRL_2W_TRIS               TRISD5
#define IO_RD5_CTRL_2W_LAT                LATD5
#define IO_RD5_CTRL_2W_PORT               RD5
#define IO_RD5_CTRL_2W_WPU                WPUD5
#define IO_RD5_CTRL_2W_SetHigh()    do { LATD5 = 1; } while(0)
#define IO_RD5_CTRL_2W_SetLow()   do { LATD5 = 0; } while(0)
#define IO_RD5_CTRL_2W_Toggle()   do { LATD5 = ~LATD5; } while(0)
#define IO_RD5_CTRL_2W_GetValue()         PORTDbits.RD5
#define IO_RD5_CTRL_2W_SetDigitalInput()    do { TRISD5 = 1; } while(0)
#define IO_RD5_CTRL_2W_SetDigitalOutput()   do { TRISD5 = 0; } while(0)

#define IO_RD5_CTRL_2W_SetPullup()    do { WPUD5 = 1; } while(0)
#define IO_RD5_CTRL_2W_ResetPullup()   do { WPUD5 = 0; } while(0)


// get/set IO_RD6_LED2 aliases
#define IO_RD6_LED2_TRIS               TRISD6
#define IO_RD6_LED2_LAT                LATD6
#define IO_RD6_LED2_PORT               RD6
#define IO_RD6_LED2_WPU                WPUD6
#define IO_RD6_LED2_SetHigh()    do { LATD6 = 1; } while(0)
#define IO_RD6_LED2_SetLow()   do { LATD6 = 0; } while(0)
#define IO_RD6_LED2_Toggle()   do { LATD6 = ~LATD6; } while(0)
#define IO_RD6_LED2_GetValue()         PORTDbits.RD6
#define IO_RD6_LED2_SetDigitalInput()    do { TRISD6 = 1; } while(0)
#define IO_RD6_LED2_SetDigitalOutput()   do { TRISD6 = 0; } while(0)

#define IO_RD6_LED2_SetPullup()    do { WPUD6 = 1; } while(0)
#define IO_RD6_LED2_ResetPullup()   do { WPUD6 = 0; } while(0)


// get/set IO_RD7_LED3 aliases
#define IO_RD7_LED3_TRIS               TRISD7
#define IO_RD7_LED3_LAT                LATD7
#define IO_RD7_LED3_PORT               RD7
#define IO_RD7_LED3_WPU                WPUD7
#define IO_RD7_LED3_SetHigh()    do { LATD7 = 1; } while(0)
#define IO_RD7_LED3_SetLow()   do { LATD7 = 0; } while(0)
#define IO_RD7_LED3_Toggle()   do { LATD7 = ~LATD7; } while(0)
#define IO_RD7_LED3_GetValue()         PORTDbits.RD7
#define IO_RD7_LED3_SetDigitalInput()    do { TRISD7 = 1; } while(0)
#define IO_RD7_LED3_SetDigitalOutput()   do { TRISD7 = 0; } while(0)

#define IO_RD7_LED3_SetPullup()    do { WPUD7 = 1; } while(0)
#define IO_RD7_LED3_ResetPullup()   do { WPUD7 = 0; } while(0)


// get/set IO_RE0_ECU_RLUNL aliases
#define IO_RE0_ECU_RLUNL_TRIS               TRISE0
#define IO_RE0_ECU_RLUNL_LAT                LATE0
#define IO_RE0_ECU_RLUNL_PORT               RE0
#define IO_RE0_ECU_RLUNL_WPU                WPUE0
#define IO_RE0_ECU_RLUNL_ANS                ANSE0
#define IO_RE0_ECU_RLUNL_SetHigh()    do { LATE0 = 1; } while(0)
#define IO_RE0_ECU_RLUNL_SetLow()   do { LATE0 = 0; } while(0)
#define IO_RE0_ECU_RLUNL_Toggle()   do { LATE0 = ~LATE0; } while(0)
#define IO_RE0_ECU_RLUNL_GetValue()         PORTEbits.RE0
#define IO_RE0_ECU_RLUNL_SetDigitalInput()    do { TRISE0 = 1; } while(0)
#define IO_RE0_ECU_RLUNL_SetDigitalOutput()   do { TRISE0 = 0; } while(0)

#define IO_RE0_ECU_RLUNL_SetPullup()    do { WPUE0 = 1; } while(0)
#define IO_RE0_ECU_RLUNL_ResetPullup()   do { WPUE0 = 0; } while(0)
#define IO_RE0_ECU_RLUNL_SetAnalogMode()   do { ANSE0 = 1; } while(0)
#define IO_RE0_ECU_RLUNL_SetDigitalMode()   do { ANSE0 = 0; } while(0)


// get/set IO_RE1_ECU_FLUNL aliases
#define IO_RE1_ECU_FLUNL_TRIS               TRISE1
#define IO_RE1_ECU_FLUNL_LAT                LATE1
#define IO_RE1_ECU_FLUNL_PORT               RE1
#define IO_RE1_ECU_FLUNL_WPU                WPUE1
#define IO_RE1_ECU_FLUNL_ANS                ANSE1
#define IO_RE1_ECU_FLUNL_SetHigh()    do { LATE1 = 1; } while(0)
#define IO_RE1_ECU_FLUNL_SetLow()   do { LATE1 = 0; } while(0)
#define IO_RE1_ECU_FLUNL_Toggle()   do { LATE1 = ~LATE1; } while(0)
#define IO_RE1_ECU_FLUNL_GetValue()         PORTEbits.RE1
#define IO_RE1_ECU_FLUNL_SetDigitalInput()    do { TRISE1 = 1; } while(0)
#define IO_RE1_ECU_FLUNL_SetDigitalOutput()   do { TRISE1 = 0; } while(0)

#define IO_RE1_ECU_FLUNL_SetPullup()    do { WPUE1 = 1; } while(0)
#define IO_RE1_ECU_FLUNL_ResetPullup()   do { WPUE1 = 0; } while(0)
#define IO_RE1_ECU_FLUNL_SetAnalogMode()   do { ANSE1 = 1; } while(0)
#define IO_RE1_ECU_FLUNL_SetDigitalMode()   do { ANSE1 = 0; } while(0)


// get/set IO_RE2_ECU_2W4W aliases
#define IO_RE2_ECU_2W4W_TRIS               TRISE2
#define IO_RE2_ECU_2W4W_LAT                LATE2
#define IO_RE2_ECU_2W4W_PORT               RE2
#define IO_RE2_ECU_2W4W_WPU                WPUE2
#define IO_RE2_ECU_2W4W_ANS                ANSE2
#define IO_RE2_ECU_2W4W_SetHigh()    do { LATE2 = 1; } while(0)
#define IO_RE2_ECU_2W4W_SetLow()   do { LATE2 = 0; } while(0)
#define IO_RE2_ECU_2W4W_Toggle()   do { LATE2 = ~LATE2; } while(0)
#define IO_RE2_ECU_2W4W_GetValue()         PORTEbits.RE2
#define IO_RE2_ECU_2W4W_SetDigitalInput()    do { TRISE2 = 1; } while(0)
#define IO_RE2_ECU_2W4W_SetDigitalOutput()   do { TRISE2 = 0; } while(0)

#define IO_RE2_ECU_2W4W_SetPullup()    do { WPUE2 = 1; } while(0)
#define IO_RE2_ECU_2W4W_ResetPullup()   do { WPUE2 = 0; } while(0)
#define IO_RE2_ECU_2W4W_SetAnalogMode()   do { ANSE2 = 1; } while(0)
#define IO_RE2_ECU_2W4W_SetDigitalMode()   do { ANSE2 = 0; } while(0)



/**
 * @Param
    none
 * @Returns
    none
 * @Description
    GPIO and peripheral I/O initialization
 * @Example
    PIN_MANAGER_Initialize();
 */
void PIN_MANAGER_Initialize (void);

/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Interrupt on Change Handling routine
 * @Example
    PIN_MANAGER_IOC();
 */
void PIN_MANAGER_IOC(void);

#endif // PIN_MANAGER_H
/**
 End of File
*/