/**
  Generated Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This is the main file generated using MPLAB(c) Code Configurator

  Description:
    This header file provides implementations for driver APIs for all modules selected in the GUI.
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

#include "mcc_generated_files/mcc.h"

#define _4WD_Test_EN	 		0
#define LED_EN  1

//差速器馬達狀態
#define	Motor1_Status_4WD 			0b00000010					//前差RA0/W,RA1/B,RA3/Y
#define	Motor1_Status_2WL 	 		0b00001000					//前差RA0/W,RA1/B,RA3/Y
#define	Motor1_Status_4WL 	 		0b00001010					//前差RA0/W,RA1/B,RA3/Y
#define	Motor2_Status_UnLock 		0b00000010					//後差RC0/W,RC1/B,RC2/Y
#define	Motor2_Status_Lock 	 		0b00000100					//後差RC0/W,RC1/B,RC2/Y

//以下定義值前4bit為前差馬達狀態，後4bit為後差馬達狀態
//Motor_Status_Now 為前後馬達合成後的狀態
#define	Motor_2WD_Status	 		0b00101000			//0x28
#define	Motor_2WL_Status	 		0b01001000			//0x48
#define	Motor_4WD_Status	 		0b01000010			//0x42
#define	Motor_4WL_Status	 		0b01001010			//0x4A

#if(_4WD_Test_EN)
#define _2WD					0b00100011
#define _2WD_1					0b00100111
#define _2WDLOCK				0b00000011
#define _2WDLOCK_1				0b00000111
#define _4WD_1					0b00010001
#define _4WD_2					0b00110001
#define _4WD_3					0b00010101
#define _4WD_4					0b00110101
#define _4WDLOCK_1				0b00010010
#define _4WDLOCK_2				0b00110010								
#define _4WD_Test				0b00010110									
#define _4WD_Test_1				0b00110110									

#else
#define _4WDLOCK_1				0b00010010
#define _4WDLOCK_2				0b00110010								
#define _4WD_1					0b00010001
#define _4WD_2					0b00110001
#define _2WDLOCK				0b00000011
#define _2WD					0b00100011

#endif

//Error
unsigned char Work_status = 0;
unsigned char Error_Flag = 0;	//5秒Time out旗標
unsigned char Error_Mode = 0;
unsigned char Over_Speed_Error = 0;
unsigned char Front_Error	= 0;
unsigned char Back_Error = 0;



//Pull 
#define Pull_Count_Val  39	//5秒
#define PULL_VALUE  3   // 拉動次數
unsigned char Pull_Error = 0;
unsigned char Pull = 0;
unsigned char Pull_5S_CNT = Pull_Count_Val;
unsigned char Pull_Count = 0;


//RPM
unsigned char RPM_Zero = 0 ;
unsigned char RPM_Flag = 0;

//Motor 
unsigned char Motor_Front_Status = 0;
unsigned char Motor_Back_Status	= 0;
unsigned char Motor_Status_Now = 0;
unsigned char Motor_OLD_Status = 0;
unsigned char Motor_Temp = 0;
unsigned char Motor_Remove = 0;
unsigned char Special = 0; //Motor error check
unsigned char Moving_Status;


//Gear (齒輪)
unsigned char Gear_Status_NEW;
unsigned char Gear_Status_OLD = 0;

//Hand feedback
unsigned char	Handback_Error = 0;			//把手失效錯誤

// Voltage
unsigned char Voltage_Error = 0;

//LED 
unsigned int LED1_Count = 0;
unsigned int LED2_Count = 0;
unsigned int LED3_Count = 0;
unsigned int LED13_Count = 0;

//timer
#define _1S_Val	8
unsigned char _5S_CNT = _1S_Val;								


//sub-function
void Check_Motor_Status(void);
void Check_Hand_Status(void);
void LED1_Flash(unsigned int Time);
void LED2_Flash(unsigned int Time);
void LED3_Flash(unsigned int Time);
void LED13_Flash(unsigned int Time);
void Error_Mode_Func(unsigned char Goto,unsigned char Status);
void Change_Func(unsigned char Goto,unsigned char Status);
void Output_ECU(void);
void Check_Status(void);

//================================================================================================
//  寫入燒入程式的版本  
//  EEPROM data  [NOP]  [年]  [年]  [月]  [日] [版次] [NOP]  [NOP]
//================================================================================================
//__EEPROM_DATA(0xAB, 0x20, 0x15, 0x03, 0x24, 0x01, 0xFF, 0xFF);
/*
                         Main application
 */
void main(void)
{
    // initialize the device
    SYSTEM_Initialize();

    // When using interrupts, you need to set the Global and Peripheral Interrupt Enable bits
    // Use the following macros to:

    // Enable the Global Interrupts
    INTERRUPT_GlobalInterruptEnable();

    // Enable the Peripheral Interrupts
    INTERRUPT_PeripheralInterruptEnable();

    // Disable the Global Interrupts
    //INTERRUPT_GlobalInterruptDisable();

    // Disable the Peripheral Interrupts
    //INTERRUPT_PeripheralInterruptDisable();
    
    TMR2_StartTimer();
    Check_Motor_Status();
	Check_Hand_Status();
	switch (Gear_Status_NEW)
	{
		case _4WDLOCK_1:
				IO_RE2_ECU_2W4W_SetLow(); //L1
				IO_RE1_ECU_FLUNL_SetHigh(); //L2
				IO_RE0_ECU_RLUNL_SetHigh(); //L3
				Handback_Error = 0;
		case _2WDLOCK:
				IO_RE2_ECU_2W4W_SetHigh(); //L1
				IO_RE1_ECU_FLUNL_SetLow(); //L2
				IO_RE0_ECU_RLUNL_SetHigh(); //L3
				Handback_Error = 0;
		case _4WD_1:
				IO_RE2_ECU_2W4W_SetLow(); //L1
				IO_RE1_ECU_FLUNL_SetLow(); //L2
				IO_RE0_ECU_RLUNL_SetHigh(); //L3
				Handback_Error = 0;
		case _2WD:
				IO_RE2_ECU_2W4W_SetHigh(); //L1
				IO_RE1_ECU_FLUNL_SetLow(); //L2
				IO_RE0_ECU_RLUNL_SetLow(); //L3
				Handback_Error = 0;
		default:
				Handback_Error = 1;
	}
	
	if ( Error_Mode == 1)
	{
		Special = 1;
		Gear_Status_NEW = _2WD;
	}
	
    while (1)
    {
        if (Special == 1)	//開機第一次會做
		{
			Special = 0;
		}
		else
		{	
			Check_Hand_Status();
			Check_Motor_Status();	
		}

		Voltage_Error = IsVoltageError();

        if (( PORTBbits.RB5 == 1 && RPM_Zero == 1) || ( PORTBbits.RB5 == 0 && RPM_Zero == 1))   //偵測轉速
            Over_Speed_Error = 0;
        
#if(LED_EN)
        if ( RPM_Zero == 1 || Over_Speed_Error == 1)
        {
            LED3_Flash(3);
        }
        else
        {
            IO_RD7_LED3_SetLow();
        }

        if((Error_Mode  == 1)|| (Handback_Error == 1))	
        {	
            LED2_Flash(1); 
        } 
        else
        { 
            IO_RD6_LED2_SetLow();
        }

		if(Voltage_Error  == 1)	//暫時關閉
        {	
            IO_RC7_LED1_SetHigh();
        } 
        else
        { 
            IO_RC7_LED1_SetLow();
        }       

		
#endif //end of LED_EN
         
        while (Voltage_Error == 1) //等待電壓正常
        {
		    Voltage_Error = IsVoltageError();
            //IO_RC7_LED1_SetHigh();
        }
        //IO_RC7_LED1_SetLow();
        
		if(((RPM_Flag > 4)&&(Voltage_Error == 0)) 
                || (( PORTBbits.RB5 == 0)  && (Voltage_Error == 0) && (Over_Speed_Error ==0))
                || (( PORTBbits.RB5 == 1)  && (Voltage_Error == 0) && (Over_Speed_Error ==0)))	
        {
            if(Pull_Error == 1 && Pull_Count < PULL_VALUE)		//錯誤模式下
            {
                if(Pull == 1)
                {
                    Pull_Count ++;
                    switch(Gear_Status_OLD)
                    {
                        case _4WDLOCK_1:
                            Error_Mode_Func(_4WDLOCK_1,Motor_4WL_Status);
                            break;
                        case _2WDLOCK:
                            Error_Mode_Func(_2WDLOCK,Motor_2WL_Status);
                            break;
                        case _4WD_1:
                            Error_Mode_Func(_4WD_1,Motor_4WD_Status);
                            break;
                        case _2WD:
                            Error_Mode_Func(_2WD,Motor_2WD_Status);
                            break;

                    }
                    Pull_5S_CNT = Pull_Count_Val;
                }
            }
            if (Gear_Status_NEW != Gear_Status_OLD)			 //把手狀態
            {
                Pull_Error = 0;
                Pull_Count = 0;
                Pull_5S_CNT = Pull_Count_Val;
                switch(Gear_Status_NEW)
                {
                        case _4WDLOCK_1:
                            IO_RE2_ECU_2W4W_SetLow(); //L1
                            IO_RE1_ECU_FLUNL_SetHigh(); //L2
                            IO_RE0_ECU_RLUNL_SetHigh(); //L3
                            Change_Func(_4WDLOCK_1,Motor_4WL_Status);
                            break;
                        case _2WDLOCK:
                            IO_RE2_ECU_2W4W_SetHigh(); //L1
                            IO_RE1_ECU_FLUNL_SetLow(); //L2
                            IO_RE0_ECU_RLUNL_SetHigh(); //L3
                            Change_Func(_2WDLOCK,Motor_2WL_Status);
                            break;
                        case _4WD_1:
                            IO_RE2_ECU_2W4W_SetLow(); //L1
                            IO_RE1_ECU_FLUNL_SetLow(); //L2
                            IO_RE0_ECU_RLUNL_SetHigh(); //L3
                            Change_Func(_4WD_1,Motor_4WD_Status);
                            break;
                        case _2WD:
                            IO_RE2_ECU_2W4W_SetHigh(); //L1
                            IO_RE1_ECU_FLUNL_SetLow(); //L2
                            IO_RE0_ECU_RLUNL_SetLow(); //L3
                            Change_Func(_2WD,Motor_2WD_Status);
                            break;
                }
                Gear_Status_OLD = Gear_Status_NEW;
            }
            Check_Status();
            Output_ECU();
        }
        
        //IO_RC7_LED1_Toggle();
        //__delay_ms(1000);
    }
}

/******************************************************************************
*    Check_Motor_Status
******************************************************************************/
void Check_Motor_Status(void)
{	
	int i;//delay count
	
	Motor_Temp = 0;
	
	IO_RA2_M1W_CTRL_SetHigh();
	IO_RA7_M2W_CTRL_SetHigh();
	for(i = 0 ; i < 200 ; i++);
	for(i = 0 ; i < 200 ; i++);
	Motor_Front_Status = (IO_RA0_M1W_Signal_GetValue() << 0) | (IO_RA1_M1B_Signal_GetValue() << 1)
							| (IO_RA3_M1Y_Signal_GetValue() << 3);	//前差RA0/W,RA1/B,RA3/Y
	Motor_Back_Status =  (IO_RC0_M2W_Signal_GetValue() << 0) | (IO_RC1_M2B_Signal_GetValue() << 1)
							| (IO_RC2_M2Y_Signal_GetValue() << 2); //後差RC0/W,RC1/B,RC2/Y
	Motor_Temp =((Motor_Front_Status) | ( Motor_Back_Status << 4));
	
	IO_RA2_M1W_CTRL_SetLow();
	IO_RA7_M2W_CTRL_SetLow();
	switch( Motor_Temp )
	{
		case Motor_2WD_Status :	
				Gear_Status_OLD = _2WD;
				Error_Mode = 0;
				break;
		case Motor_2WL_Status :
				Gear_Status_OLD = _2WDLOCK;
				Error_Mode = 0;
				break;
		case Motor_4WD_Status :	
				Gear_Status_OLD = _4WD_1;
				Error_Mode = 0;
				break;	
				
		case Motor_4WL_Status :	
				IO_RA4_M1Y_CTRL_SetHigh();
				for(i = 0 ; i < 200 ; i++);
				for(i = 0 ; i < 200 ; i++);
				Motor_Front_Status = (IO_RA0_M1W_Signal_GetValue() << 0) | (IO_RA1_M1B_Signal_GetValue() << 1)
							| (IO_RA3_M1Y_Signal_GetValue() << 3);	//前差RA0/W,RA1/B,RA3/Y
				if( Motor_Front_Status == 0x03)		//斷線狀態或UnKnow狀態
				{	
					Error_Mode = 1;
					Motor_Remove = 1;
				}
				else	
				{	
					Motor_Remove = 0;
					Gear_Status_OLD = _4WDLOCK_1;
					Error_Mode = 0;
				}
				IO_RA4_M1Y_CTRL_SetLow();
				break;
			
		default:
				Error_Mode = 1;
	}
}

/******************************************************************************
*    Check_Hand_Status
******************************************************************************/
void Check_Hand_Status(void)
{ 
	unsigned char Loop = 1, k = 3;
	do
	{	Delay_128msec(1);
		Gear_Status_NEW = (IO_RD0_CTRL_4WL_GetValue() << 0) | (IO_RD1_CTRL_4W_GetValue() << 1) 
							| (IO_RD4_CTRL_2WL_GetValue() << 4) | (IO_RD5_CTRL_2W_GetValue() << 5);
		if(Gear_Status_NEW == _4WDLOCK_2)
			Gear_Status_NEW = _4WDLOCK_1;
		if(Gear_Status_NEW == _4WD_2)
			Gear_Status_NEW = _4WD_1;
			
		switch(Gear_Status_NEW)
		{
					case _4WDLOCK_1:
					case _2WDLOCK:
					case _4WD_1:
					case _2WD:
							 Handback_Error = 0;
							 Loop = 0;
							 break;
					default:
							 Handback_Error = 1;
							 k--;
							 if( k== 0)
							 {	
							   Loop = 0;
							 }	
							 
		}
	}
	while(Loop == 1);
					
}

/******************************************************************************
*    LED13_FLASH
******************************************************************************/
void LED13_Flash(unsigned int Time)
{	
	if(LED13_Count >= Time)
	{	LED13_Count =0;
    	IO_RD7_LED3_Toggle();
        IO_RC7_LED1_Toggle();
	}
}

/******************************************************************************
*    LED1_FLASH
******************************************************************************/
void LED1_Flash(unsigned int Time)
{	

	if(LED1_Count >= Time)
	{	LED1_Count =0;
        IO_RC7_LED1_Toggle();
	}
				

	 
}

/******************************************************************************
*    LED2_FLASH
******************************************************************************/
void LED2_Flash(unsigned int Time)
{	
	if(LED2_Count >= Time)
	{	LED2_Count =0;
        IO_RD6_LED2_Toggle();
	}
}

/******************************************************************************
*    LED3_FLASH
******************************************************************************/
void LED3_Flash(unsigned int Time)
{	
	if(LED13_Count >= Time)
	{	LED13_Count =0;
    	IO_RD7_LED3_Toggle();
	}
}

/******************************************************************************
*    Motor1_F 馬達正轉
******************************************************************************/
void Motor1_F(void)
{
    IO_RB4_M1F_SetLow();
    IO_RB3_M1R_SetLow();
    IO_RB2_M2F_SetLow();
    IO_RB1_M2R_SetLow();

    IO_RB4_M1F_SetHigh();
}

/******************************************************************************
*    Motor1_R 馬達反轉
******************************************************************************/
void Motor1_R(void)
{
    IO_RB4_M1F_SetLow();
    IO_RB3_M1R_SetLow();
    IO_RB2_M2F_SetLow();
    IO_RB1_M2R_SetLow();

    IO_RB3_M1R_SetHigh();
}

/******************************************************************************
*    Motor1_S 馬達停止
******************************************************************************/
void Motor1_S(void)
{
    IO_RB4_M1F_SetLow();
    IO_RB3_M1R_SetLow();
    IO_RB2_M2F_SetLow();
    IO_RB1_M2R_SetLow();
}

/******************************************************************************
*    Motor2_F 馬達正轉
******************************************************************************/
void Motor2_F(void)
{
    IO_RB4_M1F_SetLow();
    IO_RB3_M1R_SetLow();
    IO_RB2_M2F_SetLow();
    IO_RB1_M2R_SetLow();

    IO_RB2_M2F_SetHigh();
}

/******************************************************************************
*    Motor2_R 馬達反轉
******************************************************************************/
void Motor2_R(void)
{
    IO_RB4_M1F_SetLow();
    IO_RB3_M1R_SetLow();
    IO_RB2_M2F_SetLow();
    IO_RB1_M2R_SetLow();

    IO_RB1_M2R_SetHigh();
}

/******************************************************************************
*    Motor2_S 馬達停止
******************************************************************************/

void Motor2_S(void)
{
    IO_RB4_M1F_SetLow();
    IO_RB3_M1R_SetLow();
    IO_RB2_M2F_SetLow();
    IO_RB1_M2R_SetLow();
}

void Error_Exit_Func(void)
{
    Motor1_S();
    Motor2_S();
    IO_RA4_M1Y_CTRL_SetLow();
    IO_RA2_M1W_CTRL_SetLow();
    IO_RA6_M2Y_CTRL_SetLow();
    IO_RA7_M2W_CTRL_SetLow();
    Work_status = 0;
    Error_Flag = 0;

}
/******************************************************************************
*   Error model 
******************************************************************************/
void Error_Mode_Func(unsigned char Goto,unsigned char Status)
{
    int i;

    Moving_Status = Status;
    _5S_CNT = _1S_Val;															
    Work_status = 1;
    Voltage_Error = IsVoltageError();
    Front_Error = 0 ;
    Back_Error = 0 ;

    // No_Feedback_EN START   不使用回授控制
    switch (Goto)
    {
        case _4WDLOCK_1:    
            //4WL 前差馬達
            IO_RA4_M1Y_CTRL_SetHigh();
            while ((IO_RA1_M1B_Signal_GetValue() == 1) && (Front_Error == 0))
            {
                Motor1_F();
                if (Error_Flag == 1)
                {
                    Front_Error = 1;
                    Error_Exit_Func();
                }
            }
            Front_Error = 0;
            Error_Exit_Func();

            // 4WL 後差馬達
            IO_RA7_M2W_CTRL_SetHigh();
            Work_status = 1;
            _5S_CNT = _1S_Val;
            while ((IO_RC1_M2B_Signal_GetValue() == 1) && (Back_Error == 0))
            {
                Motor2_R();
                if (Error_Flag == 1)
                {
                    Back_Error = 1;
                    Error_Exit_Func();
                } 
            }
            Back_Error = 0 ;
            Error_Exit_Func();
            break;

        case _4WD_1:
            //4WD前差馬達
            IO_RA2_M1W_CTRL_SetHigh();
            if((Gear_Status_OLD == _4WDLOCK_1 ) || (Motor_Remove == 1))
            {
                for(i = 0; i < 2; i++)
                {
                    while((IO_RA3_M1Y_Signal_GetValue() == 1) && (Front_Error == 0))
                    {
                        Motor1_R();
                        if (Error_Flag == 1)
                        {
                            Front_Error = 1;
                            Error_Exit_Func();
                        }
                    }
                }
            }

            if((Gear_Status_OLD == _2WDLOCK) || (Gear_Status_OLD == _2WD) || (Motor_Remove == 1) )
            {
                for(i = 0; i < 2; i++)
                {
                    while((IO_RA3_M1Y_Signal_GetValue() == 1) && (Front_Error == 0))
                    {
                        Motor1_F();
                        if (Error_Flag == 1)
                        {
                            Front_Error = 1;
                            Error_Exit_Func();
                        }
                    }
                    
                }
            }
            Front_Error = 0;
            Error_Exit_Func();
        
            // 4WD後差馬達
            Work_status = 1;
            IO_RA7_M2W_CTRL_SetHigh();
            _5S_CNT = _1S_Val;

            while((IO_RC1_M2B_Signal_GetValue() == 1) && (Back_Error == 0))
            {
                Motor2_R();
                if(Error_Flag == 1)
                {
                    Back_Error = 1;
                    Error_Exit_Func();
                }
            }
            Back_Error = 0;
            Error_Exit_Func();
            break;

        case _2WDLOCK:
            // 2WL前差馬達
            IO_RA2_M1W_CTRL_SetHigh();
            while ((IO_RA1_M1B_Signal_GetValue() == 1) && (Front_Error == 0))
            {
                Motor1_R();
                if (Error_Flag == 1)
                {
                    Front_Error = 1;
                    Error_Exit_Func();
                }
            }
            Front_Error = 0;
            Error_Exit_Func();

            // 2WL 後差馬達
            Work_status = 1;
            IO_RA7_M2W_CTRL_SetHigh();
            _5S_CNT = _1S_Val;

            while((IO_RC1_M2B_Signal_GetValue() == 1) && (Back_Error == 0))
            {
                Motor2_R();
                if(Error_Flag == 1)
                {
                    Back_Error = 1;
                    Error_Exit_Func();
                }
            }
            Back_Error = 0;
            Error_Exit_Func();
            break;

        case _2WD:
            // 2WD 前差馬達
            IO_RA2_M1W_CTRL_SetHigh();
            while ((IO_RA1_M1B_Signal_GetValue() == 1) && (Front_Error == 0))
            {
                Motor1_R();
                if (Error_Flag == 1)
                {
                    Front_Error = 1;
                    Error_Exit_Func();
                }
            }
            Front_Error = 0;
            Error_Exit_Func();

            // 2WD 後差馬達
            Work_status = 1;
            IO_RA7_M2W_CTRL_SetHigh();
            _5S_CNT = _1S_Val;
            for(i = 0; i < 2; i++)
            {
                while((IO_RC2_M2Y_Signal_GetValue() == 1) && (Back_Error == 0))
                {
                    Motor2_F();
                    if (Error_Flag == 1)
                    {
                        Back_Error = 1;
                        Error_Exit_Func();
                    }
                }

            }
            Back_Error = 0 ;
            Error_Exit_Func();
            break;
    }
}

/******************************************************************************
*   Normal model 
******************************************************************************/
void Change_Func(unsigned char Goto,unsigned char Status)
{
    int i;

    Moving_Status = Status;
    _5S_CNT = _1S_Val;															
    Work_status = 1;
    Voltage_Error = IsVoltageError();
    Front_Error = 0 ;
    Back_Error = 0 ;

    // No_Feedback_EN START   不使用回授控制
    switch (Goto)
    {
        case _4WDLOCK_1:    
            //4WL 前差馬達
            IO_RA4_M1Y_CTRL_SetHigh();
            while ((IO_RA1_M1B_Signal_GetValue() == 1) && (Front_Error == 0))
            {
                Motor1_F();
                if (Error_Flag == 1)
                {
                    Front_Error = 1;
                    Error_Exit_Func();
                }
            }
            Front_Error = 0;
            Error_Exit_Func();

            // 4WL 後差馬達
            IO_RA7_M2W_CTRL_SetHigh();
            Work_status = 1;
            _5S_CNT = _1S_Val;
            while ((IO_RC1_M2B_Signal_GetValue() == 1) && (Back_Error == 0))
            {
                Motor2_R();
                if (Error_Flag == 1)
                {
                    Back_Error = 1;
                    Error_Exit_Func();
                } 
            }
            Back_Error = 0 ;
            Error_Exit_Func();
            break;
        case _4WD_1:
            //4WD前差馬達
            IO_RA2_M1W_CTRL_SetHigh();
            if(	Gear_Status_OLD == _4WDLOCK_1 )
            {
                for(i = 0; i < 2; i++)
                {
                    while((IO_RA3_M1Y_Signal_GetValue() == 1) && (Front_Error == 0))
                    {
                        Motor1_R();
                        if (Error_Flag == 1)
                        {
                            Front_Error = 1;
                            Error_Exit_Func();
                        }
                    }
                }
            }

            if((Gear_Status_OLD == _2WDLOCK) || (Gear_Status_OLD == _2WD) )
            {
                for(i = 0; i < 2; i++)
                {
                    while((IO_RA3_M1Y_Signal_GetValue() == 1) && (Front_Error == 0))
                    {
                        Motor1_F();
                        if (Error_Flag == 1)
                        {
                            Front_Error = 1;
                            Error_Exit_Func();
                        }
                    }
                    
                }
            }
            Front_Error = 0;
            Error_Exit_Func();
        
            // 4WD後差馬達
            Work_status = 1;
            IO_RA7_M2W_CTRL_SetHigh();
            _5S_CNT = _1S_Val;

            while((IO_RC1_M2B_Signal_GetValue() == 1) && (Back_Error == 0))
            {
                Motor2_R();
                if(Error_Flag == 1)
                {
                    Back_Error = 1;
                    Error_Exit_Func();
                }
            }
            Back_Error = 0;
            Error_Exit_Func();
            break;
        case _2WDLOCK:
            // 2WL前差馬達
            IO_RA2_M1W_CTRL_SetHigh();
            while ((IO_RA1_M1B_Signal_GetValue() == 1) && (Front_Error == 0))
            {
                Motor1_R();
                if (Error_Flag == 1)
                {
                    Front_Error = 1;
                    Error_Exit_Func();
                }
            }
            Front_Error = 0;
            Error_Exit_Func();

            // 2WL 後差馬達
            Work_status = 1;
            IO_RA7_M2W_CTRL_SetHigh();
            _5S_CNT = _1S_Val;

            while((IO_RC1_M2B_Signal_PORT == 1) && (Back_Error == 0))
            {
                Motor2_R();
                if(Error_Flag == 1)
                {
                    Back_Error = 1;
                    Error_Exit_Func();
                }
            }
            Back_Error = 0;
            Error_Exit_Func();
            break;

        case _2WD:
            // 2WD 前差馬達
            IO_RA2_M1W_CTRL_SetHigh();
            while ((IO_RA1_M1B_Signal_GetValue() == 1) && (Front_Error == 0))
            {
                Motor1_R();
                if (Error_Flag == 1)
                {
                    Front_Error = 1;
                    Error_Exit_Func();
                }
            }
            Front_Error = 0;
            Error_Exit_Func();

            // 2WD 後差馬達
            Work_status = 1;
            IO_RA7_M2W_CTRL_SetHigh();
            _5S_CNT = _1S_Val;
            for(i = 0; i < 2; i++)
            {
                while((IO_RC2_M2Y_Signal_GetValue() == 1) && (Back_Error == 0))
                {
                    Motor2_F();
                    if (Error_Flag == 1)
                    {
                        Back_Error = 1;
                        Error_Exit_Func();
                    }
                }

            }
            Back_Error = 0 ;
            Error_Exit_Func();
            break;
    }
}

/******************************************************************************
*   Output gpio to ECU 
******************************************************************************/
void Output_ECU(void)
{
    if(Handback_Error == 1)
    {
        IO_RE2_ECU_2W4W_SetHigh(); //L1
        IO_RE1_ECU_FLUNL_SetHigh(); //L2
        IO_RE0_ECU_RLUNL_SetHigh(); //L3

    }
    else
    {
        switch (Moving_Status)
        {
            case Motor_2WD_Status :
                IO_RE2_ECU_2W4W_SetHigh(); //L1
                IO_RE1_ECU_FLUNL_SetLow(); //L2
                IO_RE0_ECU_RLUNL_SetLow(); //L3
                break;
            case Motor_2WL_Status:
                IO_RE2_ECU_2W4W_SetHigh(); //L1
                IO_RE1_ECU_FLUNL_SetLow(); //L2
                IO_RE0_ECU_RLUNL_SetHigh(); //L3
                break;
            case Motor_4WD_Status:
                IO_RE2_ECU_2W4W_SetLow(); //L1
                IO_RE1_ECU_FLUNL_SetLow(); //L2
                IO_RE0_ECU_RLUNL_SetHigh(); //L3
                break;
            case Motor_4WL_Status:
                IO_RE2_ECU_2W4W_SetLow(); //L1
                IO_RE1_ECU_FLUNL_SetLow(); //L2
                IO_RE0_ECU_RLUNL_SetHigh(); //L3
                break;
        }
    }
}

/******************************************************************************
*   Check status for Motor 
******************************************************************************/
void Check_Status(void)
{
    switch(Gear_Status_NEW)
    {
        case _4WDLOCK_1:
            if((Motor_Temp == Motor_4WL_Status) && (Motor_Remove == 0))
            {
                Error_Mode = 0;
                Pull_Error = 0;
            }
            break;
        case _2WDLOCK:
            if(Motor_Temp == Motor_2WL_Status)
            {
                Error_Mode = 0;
                Pull_Error = 0;
            }
            break;
        case _4WD_1:
            if(Motor_Temp == Motor_4WD_Status)
            {
                Error_Mode = 0;
                Pull_Error = 0;
            }
            break;
        case _2WD:
            if(Motor_Temp == Motor_2WD_Status)
            {
                Error_Mode = 0;
                Pull_Error = 0;
            }
            break;
        default:
            Error_Mode = 1;
            Pull_Error = 1;

    }
}
/**
 End of File
*/
