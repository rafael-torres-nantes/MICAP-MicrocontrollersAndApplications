volatile __bit x = 0;
volatile unsigned char tecla;


// ISR do UART
void uart_ISR() __interrupt 4{
//evento de recebimento salva  o bite
	if(RI0 == 1){
		x = 1;
		tecla = SBUF0;
		RI0 = 0;
	}
}