/**
  TMR2 Generated Driver File

  @Company
    Microchip Technology Inc.

  @File Name
    tmr2.c

  @Summary
    This is the generated driver implementation file for the TMR2 driver using MPLAB(c) Code Configurator

  @Description
    This source file provides APIs for TMR2.
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
#include "tmr2.h"

static volatile uint8_t _u128ms1Counter = 0; //128 ms
static volatile uint8_t _u128ms8Counter = 0; // 128 * 8 = 1024 ms
uint8_t gu8TMR2State = 0;
uint8_t u8ErrorState = 0;
uint8_t u8RPM1SCunt = 0;

unsigned int	DelayTime_Count = 0;

/**
  Section: TMR2 APIs
*/

void TMR2_Initialize(void)
{
    // Set TMR2 to the options selected in the User Interface

    // T2CKPS 1:64; T2OUTPS 1:16; TMR2ON on; 
    T2CON = 0x7B;

    // PR2 249; 
    PR2 = 0xF9;

    // TMR2 0; 
    TMR2 = 0x00;

    // Clearing IF flag before enabling the interrupt.
    PIR1bits.TMR2IF = 0;

    // Enabling TMR2 interrupt.
    PIE1bits.TMR2IE = 1;

    // Set Default Interrupt Handler
    TMR2_SetInterruptHandler(TMR2_DefaultInterruptHandler);

    // Start TMR2
    //TMR2_StartTimer();
}

void TMR2_StartTimer(void)
{
    // Start the Timer by writing to TMRxON bit
    T2CONbits.TMR2ON = 1;
}

void TMR2_StopTimer(void)
{
    // Stop the Timer by writing to TMRxON bit
    T2CONbits.TMR2ON = 0;
}

uint8_t TMR2_ReadTimer(void)
{
    uint8_t readVal;

    readVal = TMR2;

    return readVal;
}

void TMR2_WriteTimer(uint8_t timerVal)
{
    // Write to the Timer2 register
    TMR2 = timerVal;
}

void TMR2_LoadPeriodRegister(uint8_t periodVal)
{
   PR2 = periodVal;
}

void Delay_128msec(unsigned int Time)
{	
	DelayTime_Count=0;
	while(DelayTime_Count < Time );                       
}

void TMR2_ISR(void)
{

    // clear the TMR2 interrupt flag
    PIR1bits.TMR2IF = 0;

    if(TMR2_InterruptHandler)
    {
        TMR2_InterruptHandler();
    }
}


void TMR2_SetInterruptHandler(void* InterruptHandler){
    TMR2_InterruptHandler = InterruptHandler;
}

void TMR2_DefaultInterruptHandler(void){
    // add your TMR2 interrupt custom code
    // or set custom function using TMR2_SetInterruptHandler()
    //_u128ms1Counter++;
    
    if (RPM_1S_Cunt == 0)
    {
        //RPM_1S_Cunt = 8; //for test
        RPM_Zero = 1 ;
    }
    else
    {
        RPM_1S_Cunt--;
        RPM_Zero = 0 ;
    }
    
    //	5秒Time out旗標		
		if (Work_status == 1)
		{
			if (_5S_CNT == 0)
			{
				Error_Flag = 1;
				Error_Mode = 1;
				Pull_Error = 1; 
			}
			else				
			{	_5S_CNT--;
		
			}
		}
		
		//錯誤模式下啟動拉纜計數
		if (Pull_Error == 1)
		{
			if (Pull_5S_CNT == 0)
			{
				Pull = 1;
			}
			else				
			{	
				Pull_5S_CNT--;
				Pull = 0;
//				if(Pull == 3)
//					Pull = 0;
			}
			
		}
    
	
	DelayTime_Count++;
    LED13_Count++;
    LED1_Count++;
    LED2_Count++;
    LED3_Count++;
}

/**
  End of File
*/
