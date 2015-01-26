#include <stdio.h>
#include "lcd.h"
#include "uart.h"
#include <string.h>

__CONFIG(FOSC_XT & WDTE_OFF & PWRTE_ON & MCLRE_ON  & CP_ON & CPD_ON & BOREN_OFF & IESO_OFF & FCMEN_OFF  & LVP_OFF);
int hour = 0;
int minute = 0;
int second = 0;
void displayToLCD(int h1,int m1,int s1){
	lcd_clear();
	char temp[8];
	sprintf(temp,"%02d:%02d:%02d\n",h1,m1,s1);
	lcd_puts(temp);
	uart_puts(temp);
}

void set_counter(){
	TMR1H = 0x80; //set count to 2^15
	TMR1L = 0x00;
}
void enable_interrupt(){
	GIE = 1; 
	PEIE = 1;
	RCIE = 1; 

	//timer 1
	TMR1ON = 1;
	TMR1CS = 1; 
	T1SYNC = 1; 
	T1OSCEN = 1; 
	T1CKPS0 = 0; 
	T1CKPS1 = 0;
	TMR1IF = 0; 
	TMR1IE = 1; 
	set_counter();
}

void interrupt inter_func(){
	if(TMR1IE && TMR1IF){
		//interrupt of timer 1
		second = second + 1;
		if(second > 59){
			second = 0;
			minute = minute + 1;
			if(minute > 59){
				minute = 0;
				hour = hour + 1;
				if(hour > 23){
					hour = 0;
				}
			}
		}
		TMR1IF = 0;
		set_counter();
	}

	char input[8];
	if(RCIE && RCIF){
		//interrupt of uart
		uart_gets(&input);
		if(strcmp(input,"pic16f887?") == 0){
			lcd_clear();
			uart_puts("I am 16f887\n");
			lcd_puts("Connecting..");
		}else{
			hour = (input[0]-'0')*10 + input[1]-'0'; //convert to int
			minute = (input[3]-'0')*10 + input[4]-'0';
			second = (input[6]-'0')*10 + input[7]-'0';
		}
		RCIF = 0;
	}
}
void main(){
	lcd_init();
	uart_init();
	enable_interrupt();
	while(1){
		displayToLCD(hour,minute,second);
		__delay_ms(500);
	}
}
