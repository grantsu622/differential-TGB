/**
  TMR1 Generated Driver File

  @Company
    Microchip Technology Inc.

  @File Name
    tmr1.c

  @Summary
    This is the generated driver implementation file for the TMR1 driver using MPLAB(c) Code Configurator

  @Description
    This source file provides APIs for TMR1.
    Generation Information :
        Product Revision  :  MPLAB(c) Code Configurator - 3.15.0
        Device            :  PIC16LF1784
        Driver Version    :  2.00
    The generated drivers are tested against the following:
        Compiler          :  XC8 1.35
        MPLAB             :  MPLAB X 3.20
*/

/*
    (c) 2016 Microchip Technology Inc. and its subsidiaries. You may use this
    software and any derivatives exclusively with Microchip products.

    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
    WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
    PARTICULAR PURPOSE, OR ITS INTERACTION WITH MICROCHIP PRODUCTS, COMBINATION
    WITH ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION.

    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
    BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
    FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
    ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
    THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.

    MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE
    TERMS.
*/

/**
  Section: Included Files
*/

#include <xc.h>
#include "tmr1.h"

/**
  Section: Global Variables Definitions
*/
#define	RPM_Speed				0x927C		//rpm 1600

volatile uint16_t timer1ReloadVal;

unsigned int 	RPM_NEW;
unsigned int	RPM_OLD = 0;
unsigned int	RPM_VAL;
unsigned char	RPM_Zero = 0 ;
unsigned char	RPM_1S_Cunt = 8 ;



/**
  Section: TMR1 APIs
*/

void TMR1_Initialize(void)
{
    //Set the Timer to the options selected in the GUI

    //T1CKPS 1:2; T1OSCEN disabled; nT1SYNC synchronize; TMR1CS FOSC/4; TMR1ON enabled; 
    T1CON = 0x10;

    //T1GSS T1G; TMR1GE enabled; T1GTM enabled; T1GPOL high; T1GGO ready; T1GSPM enabled; 
    T1GCON = 0xF8;

    //TMR1H 0; 
    TMR1H = 0x00;

    //TMR1L 0; 
    TMR1L = 0x00;

    // Load the TMR value to reload variable
    timer1ReloadVal=(TMR1H << 8) | TMR1L;

    // Clearing IF flag.
    PIR1bits.TMR1IF = 0;

    // Clearing IF flag before enabling the interrupt.
    PIR1bits.TMR1GIF = 0;

    // Enabling TMR1 interrupt.
    PIE1bits.TMR1GIE = 1;

    // Start TMR1
    TMR1_StartTimer();
}

void TMR1_StartTimer(void)
{
    // Start the Timer by writing to TMRxON bit
    T1CONbits.TMR1ON = 1;
}

void TMR1_StopTimer(void)
{
    // Stop the Timer by writing to TMRxON bit
    T1CONbits.TMR1ON = 0;
}

uint16_t TMR1_ReadTimer(void)
{
    uint16_t readVal;

    readVal = (TMR1H << 8) | TMR1L;

    return readVal;
}

void TMR1_WriteTimer(uint16_t timerVal)
{
    if (T1CONbits.nT1SYNC == 1)
    {
        // Stop the Timer by writing to TMRxON bit
        T1CONbits.TMR1ON = 0;

        // Write to the Timer1 register
        TMR1H = (timerVal >> 8);
        TMR1L = timerVal;

        // Start the Timer after writing to the register
        T1CONbits.TMR1ON =1;
    }
    else
    {
        // Write to the Timer1 register
        TMR1H = (timerVal >> 8);
        TMR1L = timerVal;
    }
}

void TMR1_Reload(void)
{
    //Write to the Timer1 register
    TMR1H = (timer1ReloadVal >> 8);
    TMR1L = timer1ReloadVal;
}

void TMR1_StartSinglePulseAcquisition(void)
{
    T1GCONbits.T1GGO = 1;
}

uint8_t TMR1_CheckGateValueStatus(void)
{
    return (T1GCONbits.T1GVAL);
}

bool TMR1_HasOverflowOccured(void)
{
    // check if  overflow has occurred by checking the TMRIF bit
    return(PIR1bits.TMR1IF);
}

void TMR1_GATE_ISR(void)
{
    // clear the TMR1 interrupt flag
    PIR1bits.TMR1GIF = 0;
    
    RPM_NEW = TMR1_ReadTimer();
    
    RPM_VAL = RPM_NEW - RPM_OLD;
	RPM_OLD = RPM_NEW;
    
    RPM_1S_Cunt = 8;
    
    if (RPM_VAL > RPM_Speed) 				
	 {	
        if (RPM_Flag < 100)
            RPM_Flag++;
            Over_Speed_Error = 0;
   
        }  
        else	              
        {
            RPM_Flag = 0;
            Over_Speed_Error = 1;
   
        }
    
}
/**
  End of File
*/
