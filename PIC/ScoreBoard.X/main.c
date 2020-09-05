/*
 * File:   main.c
 * Author: makot
 *
 * Created on 2020/08/06, 20:27
 */


// PIC16F1938 Configuration Bit Settings

// 'C' source line config statements

// CONFIG1
#pragma config FOSC = INTOSC    // Oscillator Selection (INTOSC oscillator: I/O function on CLKIN pin)
#pragma config WDTE = OFF       // Watchdog Timer Enable (WDT disabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable (PWRT disabled)
#pragma config MCLRE = ON       // MCLR Pin Function Select (MCLR/VPP pin function is MCLR)
#pragma config CP = OFF         // Flash Program Memory Code Protection (Program memory code protection is disabled)
#pragma config CPD = OFF        // Data Memory Code Protection (Data memory code protection is disabled)
#pragma config BOREN = ON       // Brown-out Reset Enable (Brown-out Reset enabled)
#pragma config CLKOUTEN = OFF   // Clock Out Enable (CLKOUT function is disabled. I/O or oscillator function on the CLKOUT pin)
#pragma config IESO = ON        // Internal/External Switchover (Internal/External Switchover mode is enabled)
#pragma config FCMEN = ON       // Fail-Safe Clock Monitor Enable (Fail-Safe Clock Monitor is enabled)

// CONFIG2
#pragma config WRT = OFF        // Flash Memory Self-Write Protection (Write protection off)
#pragma config VCAPEN = OFF     // Voltage Regulator Capacitor Enable (All VCAP pin functionality is disabled)
#pragma config PLLEN = ON       // PLL Enable (4x PLL enabled)
#pragma config STVREN = ON      // Stack Overflow/Underflow Reset Enable (Stack Overflow or Underflow will cause a Reset)
#pragma config BORV = LO        // Brown-out Reset Voltage Selection (Brown-out Reset Voltage (Vbor), low trip point selected.)
#pragma config LVP = ON         // Low-Voltage Programming Enable (Low-voltage programming enabled)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#include <xc.h>
#define _XTAL_FREQ 32000000

#define Brightness_hun 32
#define Brightness_ten 32
#define Brightness_one 32

#define I2C_STAT_RW         0x04
#define I2C_STAT_DA         0x20
#define I2C_STAT_BF         0x01

#define I2C_CON1_CKP        0x10
#define I2C_CON2_ACKSTAT    0x40

unsigned char data[2];
int count = 0;
unsigned char buf = 0;
unsigned char io = 0;
unsigned char send = 0;


char segment[10] = {
    //gfedcba
    0b1000000,  //0
    0b1111001,  //1
    0b0100100,  //2
    0b0110000,  //3
    0b0011001,  //4
    0b0010010,  //5
    0b0000010,  //6
    0b1111000,  //7
    0b0000000,  //8
    0b0010000,  //9
};

int score = 0;
int score_dig[3] = {0,0,0};
void main(void) {
    OSCCON = 0b01110000;
    OPTION_REGbits.nWPUEN = 0x00;
    
    ANSELA = 0x00;
    TRISA = 0x00;
    ANSELB = 0x00;
    TRISB = 0xFF;
    WPUB = 0xFF;
    TRISC = 0b1111000;
    
    
    SSPSTAT = 0b10000000;
    SSPCON1 = 0b00100110;
    SSPCON2 |= 0x01;
    unsigned char address = (RC6) + (RC5 << 1);
    SSPADD  = (address << 1) & 0xFE;
    SSPMSK  = 0xFE;
    
    
    OPTION_REGbits.PS = 0b100;
    OPTION_REGbits.PSA = 0;
    OPTION_REGbits.TMR0CS = 0;
    OPTION_REGbits.TMR0SE = 1;
    TMR0 = 0;
    T0IF = 0;
    T0IE = 1;
    SSPIF = 0;
    SSPIE = 1;
    GIE = 1;
    while(1){
        if(PORTB != 0x3F){
            T0IE = 0;
            if(!RB0) score_dig[2]++;
            if(!RB1) score_dig[2]--;
            if(!RB2) score_dig[1]++;
            if(!RB3) score_dig[1]--;
            if(!RB4) score_dig[0]++;
            if(!RB5) score_dig[0]--;
            if(score_dig[2] < 0)score_dig[2] = 9;
            if(score_dig[2] > 9)score_dig[2] = 0;
            if(score_dig[1] < 0)score_dig[1] = 9;
            if(score_dig[1] > 9)score_dig[1] = 0;
            if(score_dig[0] < 0)score_dig[0] = 9;
            if(score_dig[0] > 9)score_dig[0] = 0;
            score = score_dig[0] * 100 + score_dig[1] * 10 + score_dig[2];
            T0IE = 1;
            __delay_ms(50);
        }
    }
    return;
}

void __interrupt() ICR(void){
    if(SSPIF){
        if((SSPSTAT & I2C_STAT_RW) == 0){
            if((SSPSTAT & I2C_STAT_DA) == 0){
                buf = SSPBUF;
                count = 0;              
            }else{
                data[count++] = SSPBUF;
                score = data[0] + (data[1] << 8);
            }
            SSPCON1 |= I2C_CON1_CKP;
        }else{
            if((SSPSTAT & I2C_STAT_BF) != 0){
                buf = SSPBUF;
                SSPBUF = send;
                SSPCON1 |= I2C_CON1_CKP;
            }else{
                if((SSPCON2 & I2C_CON2_ACKSTAT) == 0){
                    SSPBUF = 0;
                    SSPCON1 |= I2C_CON1_CKP;
                }else{
                    
                }
            }
        }
        SSPIF = 0;
    }
    
    if(T0IF == 1){
        PORTC = 0b111;
        __delay_us(50);
        static char index = 1;
        index = (index % 3) + 1; 
        score_dig[0] = score / 100;
        score_dig[1] = score % 100 / 10;
        score_dig[2] = score % 100 % 10;
        for(int i=0;i<32;i++){
            if(index == 1){
                if(i < Brightness_one){
                    PORTC = 0b110;
                    PORTA = segment[score_dig[2]];
                }else{
                    PORTC = 0b111;
                }
            }
            if(index == 2){
                if(i < Brightness_ten){
                    PORTC = 0b101;
                    PORTA = segment[score_dig[1]];
                }else{
                    PORTC = 0b111;
                }
                
            }
            if(index == 3){
                if(i < Brightness_hun){
                    PORTC = 0b011;
                    PORTA = segment[score_dig[0]];
                }else{
                    PORTC = 0b111;
                }  
            }
        }
        T0IF = 0;
    }
}
