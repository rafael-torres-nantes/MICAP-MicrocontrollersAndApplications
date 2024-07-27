;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _esc_RAM_SPI_PARM_2
	.globl _fonte
	.globl _main
	.globl _limpa_tela
	.globl _uart_ISR
	.globl _escolher_entrada
	.globl _definir_tempo_bluetooth
	.globl _verifica_RAM_SPI
	.globl _le_RAM_SPI
	.globl _esc_RAM_SPI
	.globl _delay_us
	.globl _delay_ms
	.globl _setup
	.globl _escreve_caractere
	.globl _caractere_para_ascii
	.globl _limpa_glcd
	.globl _conf_pag
	.globl _conf_Y
	.globl _init_GLCD
	.globl _esc_glcd
	.globl _le_glcd
	.globl _Init_Device
	.globl _Interrupts_Init
	.globl _Oscillator_Init
	.globl _Port_IO_Init
	.globl _Voltage_Reference_Init
	.globl _DAC_Init
	.globl _ADC_Init
	.globl _SPI_Init
	.globl _SMBus_Init
	.globl _UART_Init
	.globl _Timer_Init
	.globl _Reset_Sources_Init
	.globl _printf_fast_f
	.globl _CANTEST
	.globl _CANCCE
	.globl _CANDAR
	.globl _CANIF
	.globl _CANEIE
	.globl _CANSIE
	.globl _CANIE
	.globl _CANINIT
	.globl _SPIEN
	.globl _TXBMT
	.globl _NSSMD0
	.globl _NSSMD1
	.globl _RXOVRN
	.globl _MODF
	.globl _WCOL
	.globl _SPIF
	.globl _AD2WINT
	.globl _AD2CM0
	.globl _AD2CM1
	.globl _AD2CM2
	.globl _AD2BUSY
	.globl _AD2INT
	.globl _AD2TM
	.globl _AD2EN
	.globl _AD0LJST
	.globl _AD0WINT
	.globl _AD0CM0
	.globl _AD0CM1
	.globl _AD0BUSY
	.globl _AD0INT
	.globl _AD0TM
	.globl _AD0EN
	.globl _CCF0
	.globl _CCF1
	.globl _CCF2
	.globl _CCF3
	.globl _CCF4
	.globl _CCF5
	.globl _CR
	.globl _CF
	.globl _P
	.globl _F1
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _CPRL4
	.globl _CT4
	.globl _TR4
	.globl _EXEN4
	.globl _EXF4
	.globl _TF4
	.globl _CPRL3
	.globl _CT3
	.globl _TR3
	.globl _EXEN3
	.globl _EXF3
	.globl _TF3
	.globl _CPRL2
	.globl _CT2
	.globl _TR2
	.globl _EXEN2
	.globl _EXF2
	.globl _TF2
	.globl _LEC0
	.globl _LEC1
	.globl _LEC2
	.globl _TXOK
	.globl _RXOK
	.globl _EPASS
	.globl _EWARN
	.globl _BOFF
	.globl _SMBTOE
	.globl _SMBFTE
	.globl _AA
	.globl _SI
	.globl _STO
	.globl _STA
	.globl _ENSMB
	.globl _BUSY
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS0
	.globl _PT2
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES0
	.globl _ET2
	.globl _EA
	.globl _RI1
	.globl _TI1
	.globl _RB81
	.globl _TB81
	.globl _REN1
	.globl _MCE1
	.globl _S1MODE
	.globl _RI0
	.globl _TI0
	.globl _RB80
	.globl _TB80
	.globl _REN0
	.globl _SM20
	.globl _SM10
	.globl _SM00
	.globl _CP2HYN0
	.globl _CP2HYN1
	.globl _CP2HYP0
	.globl _CP2HYP1
	.globl _CP2FIF
	.globl _CP2RIF
	.globl _CP2OUT
	.globl _CP2EN
	.globl _CP1HYN0
	.globl _CP1HYN1
	.globl _CP1HYP0
	.globl _CP1HYP1
	.globl _CP1FIF
	.globl _CP1RIF
	.globl _CP1OUT
	.globl _CP1EN
	.globl _CP0HYN0
	.globl _CP0HYN1
	.globl _CP0HYP0
	.globl _CP0HYP1
	.globl _CP0FIF
	.globl _CP0RIF
	.globl _CP0OUT
	.globl _CP0EN
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _P7_7
	.globl _P7_6
	.globl _P7_5
	.globl _P7_4
	.globl _P7_3
	.globl _P7_2
	.globl _P7_1
	.globl _P7_0
	.globl _P6_7
	.globl _P6_6
	.globl _P6_5
	.globl _P6_4
	.globl _P6_3
	.globl _P6_2
	.globl _P6_1
	.globl _P6_0
	.globl _P5_7
	.globl _P5_6
	.globl _P5_5
	.globl _P5_4
	.globl _P5_3
	.globl _P5_2
	.globl _P5_1
	.globl _P5_0
	.globl _P4_7
	.globl _P4_6
	.globl _P4_5
	.globl _P4_4
	.globl _P4_3
	.globl _P4_2
	.globl _P4_1
	.globl _P4_0
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl __XPAGE
	.globl _DP
	.globl _ADC0
	.globl _ADC0LT
	.globl _ADC0GT
	.globl _TMR4
	.globl _TMR3
	.globl _TMR2
	.globl _RCAP4
	.globl _RCAP3
	.globl _RCAP2
	.globl _DAC1
	.globl _DAC0
	.globl _CAN0DAT
	.globl _PCA0CP5
	.globl _PCA0CP4
	.globl _PCA0CP3
	.globl _PCA0CP2
	.globl _PCA0CP1
	.globl _PCA0CP0
	.globl _PCA0
	.globl _WDTCN
	.globl _PCA0CPH1
	.globl _PCA0CPL1
	.globl _PCA0CPH0
	.globl _PCA0CPL0
	.globl _PCA0H
	.globl _PCA0L
	.globl _P7
	.globl _CAN0CN
	.globl _SPI0CN
	.globl _EIP2
	.globl _EIP1
	.globl _B
	.globl _RSTSRC
	.globl _PCA0CPH4
	.globl _PCA0CPL4
	.globl _PCA0CPH3
	.globl _PCA0CPL3
	.globl _PCA0CPH2
	.globl _PCA0CPL2
	.globl _P6
	.globl _ADC2CN
	.globl _ADC0CN
	.globl _EIE2
	.globl _EIE1
	.globl _XBR3
	.globl _XBR2
	.globl _XBR1
	.globl _PCA0CPH5
	.globl _XBR0
	.globl _PCA0CPL5
	.globl _ACC
	.globl _PCA0CPM5
	.globl _PCA0CPM4
	.globl _PCA0CPM3
	.globl _PCA0CPM2
	.globl _CAN0TST
	.globl _PCA0CPM1
	.globl _CAN0ADR
	.globl _PCA0CPM0
	.globl _CAN0DATH
	.globl _PCA0MD
	.globl _P5
	.globl _CAN0DATL
	.globl _PCA0CN
	.globl _HVA0CN
	.globl _DAC1CN
	.globl _DAC0CN
	.globl _DAC1H
	.globl _DAC0H
	.globl _DAC1L
	.globl _DAC0L
	.globl _REF0CN
	.globl _PSW
	.globl _SMB0CR
	.globl _TMR4H
	.globl _TMR3H
	.globl _TMR2H
	.globl _TMR4L
	.globl _TMR3L
	.globl _TMR2L
	.globl _RCAP4H
	.globl _RCAP3H
	.globl _RCAP2H
	.globl _RCAP4L
	.globl _RCAP3L
	.globl _RCAP2L
	.globl _TMR4CF
	.globl _TMR3CF
	.globl _TMR2CF
	.globl _P4
	.globl _TMR4CN
	.globl _TMR3CN
	.globl _TMR2CN
	.globl _ADC0LTH
	.globl _ADC2LT
	.globl _ADC0LTL
	.globl _ADC0GTH
	.globl _ADC2GT
	.globl _ADC0GTL
	.globl _SMB0ADR
	.globl _SMB0DAT
	.globl _SMB0STA
	.globl _CAN0STA
	.globl _SMB0CN
	.globl _ADC0H
	.globl _ADC2
	.globl _ADC0L
	.globl _ADC2CF
	.globl _ADC0CF
	.globl _AMX2SL
	.globl _AMX0SL
	.globl _AMX0CF
	.globl _AMX0PRT
	.globl _AMX2CF
	.globl _SADEN0
	.globl _IP
	.globl _FLACL
	.globl _FLSCL
	.globl _P3
	.globl _P3MDIN
	.globl _P2MDIN
	.globl _P1MDIN
	.globl _SADDR1
	.globl _SADDR0
	.globl _IE
	.globl _P3MDOUT
	.globl _P2MDOUT
	.globl _P1MDOUT
	.globl _P0MDOUT
	.globl _EMI0CF
	.globl _EMI0CN
	.globl _EMI0TC
	.globl _P2
	.globl _P7MDOUT
	.globl _P6MDOUT
	.globl _P5MDOUT
	.globl _SPI0CKR
	.globl _P4MDOUT
	.globl _SPI0DAT
	.globl _SPI0CFG
	.globl _SBUF1
	.globl _SBUF0
	.globl _SCON1
	.globl _SCON0
	.globl _CLKSEL
	.globl _SFRPGCN
	.globl _SSTA0
	.globl _P1
	.globl _PSCTL
	.globl _CKCON
	.globl _TH1
	.globl _OSCXCN
	.globl _TH0
	.globl _OSCICL
	.globl _TL1
	.globl _OSCICN
	.globl _TL0
	.globl _CPT2MD
	.globl _CPT1MD
	.globl _CPT0MD
	.globl _TMOD
	.globl _CPT2CN
	.globl _CPT1CN
	.globl _CPT0CN
	.globl _TCON
	.globl _PCON
	.globl _SFRLAST
	.globl _SFRNEXT
	.globl _SFRPAGE
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _x
	.globl _escreve_caractere_PARM_2
	.globl _limpa_glcd_PARM_1
	.globl _conf_pag_PARM_2
	.globl _conf_Y_PARM_2
	.globl _esc_glcd_PARM_3
	.globl _esc_glcd_PARM_2
	.globl _le_glcd_PARM_2
	.globl _le_glcd_PARM_1
	.globl _terminal_ativo
	.globl _tecla
	.globl _TECLA
	.globl _end_fim_ram
	.globl _conta_caractere
	.globl _putchar
	.globl _ligar_buzzer
	.globl _resetar_tempo
	.globl _definir_tempo_botao
	.globl _le_tec
	.globl _contagemRegressiva
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0$0$0 == 0x0080
_P0	=	0x0080
G$SP$0$0 == 0x0081
_SP	=	0x0081
G$DPL$0$0 == 0x0082
_DPL	=	0x0082
G$DPH$0$0 == 0x0083
_DPH	=	0x0083
G$SFRPAGE$0$0 == 0x0084
_SFRPAGE	=	0x0084
G$SFRNEXT$0$0 == 0x0085
_SFRNEXT	=	0x0085
G$SFRLAST$0$0 == 0x0086
_SFRLAST	=	0x0086
G$PCON$0$0 == 0x0087
_PCON	=	0x0087
G$TCON$0$0 == 0x0088
_TCON	=	0x0088
G$CPT0CN$0$0 == 0x0088
_CPT0CN	=	0x0088
G$CPT1CN$0$0 == 0x0088
_CPT1CN	=	0x0088
G$CPT2CN$0$0 == 0x0088
_CPT2CN	=	0x0088
G$TMOD$0$0 == 0x0089
_TMOD	=	0x0089
G$CPT0MD$0$0 == 0x0089
_CPT0MD	=	0x0089
G$CPT1MD$0$0 == 0x0089
_CPT1MD	=	0x0089
G$CPT2MD$0$0 == 0x0089
_CPT2MD	=	0x0089
G$TL0$0$0 == 0x008a
_TL0	=	0x008a
G$OSCICN$0$0 == 0x008a
_OSCICN	=	0x008a
G$TL1$0$0 == 0x008b
_TL1	=	0x008b
G$OSCICL$0$0 == 0x008b
_OSCICL	=	0x008b
G$TH0$0$0 == 0x008c
_TH0	=	0x008c
G$OSCXCN$0$0 == 0x008c
_OSCXCN	=	0x008c
G$TH1$0$0 == 0x008d
_TH1	=	0x008d
G$CKCON$0$0 == 0x008e
_CKCON	=	0x008e
G$PSCTL$0$0 == 0x008f
_PSCTL	=	0x008f
G$P1$0$0 == 0x0090
_P1	=	0x0090
G$SSTA0$0$0 == 0x0091
_SSTA0	=	0x0091
G$SFRPGCN$0$0 == 0x0096
_SFRPGCN	=	0x0096
G$CLKSEL$0$0 == 0x0097
_CLKSEL	=	0x0097
G$SCON0$0$0 == 0x0098
_SCON0	=	0x0098
G$SCON1$0$0 == 0x0098
_SCON1	=	0x0098
G$SBUF0$0$0 == 0x0099
_SBUF0	=	0x0099
G$SBUF1$0$0 == 0x0099
_SBUF1	=	0x0099
G$SPI0CFG$0$0 == 0x009a
_SPI0CFG	=	0x009a
G$SPI0DAT$0$0 == 0x009b
_SPI0DAT	=	0x009b
G$P4MDOUT$0$0 == 0x009c
_P4MDOUT	=	0x009c
G$SPI0CKR$0$0 == 0x009d
_SPI0CKR	=	0x009d
G$P5MDOUT$0$0 == 0x009d
_P5MDOUT	=	0x009d
G$P6MDOUT$0$0 == 0x009e
_P6MDOUT	=	0x009e
G$P7MDOUT$0$0 == 0x009f
_P7MDOUT	=	0x009f
G$P2$0$0 == 0x00a0
_P2	=	0x00a0
G$EMI0TC$0$0 == 0x00a1
_EMI0TC	=	0x00a1
G$EMI0CN$0$0 == 0x00a2
_EMI0CN	=	0x00a2
G$EMI0CF$0$0 == 0x00a3
_EMI0CF	=	0x00a3
G$P0MDOUT$0$0 == 0x00a4
_P0MDOUT	=	0x00a4
G$P1MDOUT$0$0 == 0x00a5
_P1MDOUT	=	0x00a5
G$P2MDOUT$0$0 == 0x00a6
_P2MDOUT	=	0x00a6
G$P3MDOUT$0$0 == 0x00a7
_P3MDOUT	=	0x00a7
G$IE$0$0 == 0x00a8
_IE	=	0x00a8
G$SADDR0$0$0 == 0x00a9
_SADDR0	=	0x00a9
G$SADDR1$0$0 == 0x00a9
_SADDR1	=	0x00a9
G$P1MDIN$0$0 == 0x00ad
_P1MDIN	=	0x00ad
G$P2MDIN$0$0 == 0x00ae
_P2MDIN	=	0x00ae
G$P3MDIN$0$0 == 0x00af
_P3MDIN	=	0x00af
G$P3$0$0 == 0x00b0
_P3	=	0x00b0
G$FLSCL$0$0 == 0x00b7
_FLSCL	=	0x00b7
G$FLACL$0$0 == 0x00b7
_FLACL	=	0x00b7
G$IP$0$0 == 0x00b8
_IP	=	0x00b8
G$SADEN0$0$0 == 0x00b9
_SADEN0	=	0x00b9
G$AMX2CF$0$0 == 0x00ba
_AMX2CF	=	0x00ba
G$AMX0PRT$0$0 == 0x00bd
_AMX0PRT	=	0x00bd
G$AMX0CF$0$0 == 0x00ba
_AMX0CF	=	0x00ba
G$AMX0SL$0$0 == 0x00bb
_AMX0SL	=	0x00bb
G$AMX2SL$0$0 == 0x00bb
_AMX2SL	=	0x00bb
G$ADC0CF$0$0 == 0x00bc
_ADC0CF	=	0x00bc
G$ADC2CF$0$0 == 0x00bc
_ADC2CF	=	0x00bc
G$ADC0L$0$0 == 0x00be
_ADC0L	=	0x00be
G$ADC2$0$0 == 0x00be
_ADC2	=	0x00be
G$ADC0H$0$0 == 0x00bf
_ADC0H	=	0x00bf
G$SMB0CN$0$0 == 0x00c0
_SMB0CN	=	0x00c0
G$CAN0STA$0$0 == 0x00c0
_CAN0STA	=	0x00c0
G$SMB0STA$0$0 == 0x00c1
_SMB0STA	=	0x00c1
G$SMB0DAT$0$0 == 0x00c2
_SMB0DAT	=	0x00c2
G$SMB0ADR$0$0 == 0x00c3
_SMB0ADR	=	0x00c3
G$ADC0GTL$0$0 == 0x00c4
_ADC0GTL	=	0x00c4
G$ADC2GT$0$0 == 0x00c4
_ADC2GT	=	0x00c4
G$ADC0GTH$0$0 == 0x00c5
_ADC0GTH	=	0x00c5
G$ADC0LTL$0$0 == 0x00c6
_ADC0LTL	=	0x00c6
G$ADC2LT$0$0 == 0x00c6
_ADC2LT	=	0x00c6
G$ADC0LTH$0$0 == 0x00c7
_ADC0LTH	=	0x00c7
G$TMR2CN$0$0 == 0x00c8
_TMR2CN	=	0x00c8
G$TMR3CN$0$0 == 0x00c8
_TMR3CN	=	0x00c8
G$TMR4CN$0$0 == 0x00c8
_TMR4CN	=	0x00c8
G$P4$0$0 == 0x00c8
_P4	=	0x00c8
G$TMR2CF$0$0 == 0x00c9
_TMR2CF	=	0x00c9
G$TMR3CF$0$0 == 0x00c9
_TMR3CF	=	0x00c9
G$TMR4CF$0$0 == 0x00c9
_TMR4CF	=	0x00c9
G$RCAP2L$0$0 == 0x00ca
_RCAP2L	=	0x00ca
G$RCAP3L$0$0 == 0x00ca
_RCAP3L	=	0x00ca
G$RCAP4L$0$0 == 0x00ca
_RCAP4L	=	0x00ca
G$RCAP2H$0$0 == 0x00cb
_RCAP2H	=	0x00cb
G$RCAP3H$0$0 == 0x00cb
_RCAP3H	=	0x00cb
G$RCAP4H$0$0 == 0x00cb
_RCAP4H	=	0x00cb
G$TMR2L$0$0 == 0x00cc
_TMR2L	=	0x00cc
G$TMR3L$0$0 == 0x00cc
_TMR3L	=	0x00cc
G$TMR4L$0$0 == 0x00cc
_TMR4L	=	0x00cc
G$TMR2H$0$0 == 0x00cd
_TMR2H	=	0x00cd
G$TMR3H$0$0 == 0x00cd
_TMR3H	=	0x00cd
G$TMR4H$0$0 == 0x00cd
_TMR4H	=	0x00cd
G$SMB0CR$0$0 == 0x00cf
_SMB0CR	=	0x00cf
G$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
G$REF0CN$0$0 == 0x00d1
_REF0CN	=	0x00d1
G$DAC0L$0$0 == 0x00d2
_DAC0L	=	0x00d2
G$DAC1L$0$0 == 0x00d2
_DAC1L	=	0x00d2
G$DAC0H$0$0 == 0x00d3
_DAC0H	=	0x00d3
G$DAC1H$0$0 == 0x00d3
_DAC1H	=	0x00d3
G$DAC0CN$0$0 == 0x00d4
_DAC0CN	=	0x00d4
G$DAC1CN$0$0 == 0x00d4
_DAC1CN	=	0x00d4
G$HVA0CN$0$0 == 0x00d6
_HVA0CN	=	0x00d6
G$PCA0CN$0$0 == 0x00d8
_PCA0CN	=	0x00d8
G$CAN0DATL$0$0 == 0x00d8
_CAN0DATL	=	0x00d8
G$P5$0$0 == 0x00d8
_P5	=	0x00d8
G$PCA0MD$0$0 == 0x00d9
_PCA0MD	=	0x00d9
G$CAN0DATH$0$0 == 0x00d9
_CAN0DATH	=	0x00d9
G$PCA0CPM0$0$0 == 0x00da
_PCA0CPM0	=	0x00da
G$CAN0ADR$0$0 == 0x00da
_CAN0ADR	=	0x00da
G$PCA0CPM1$0$0 == 0x00db
_PCA0CPM1	=	0x00db
G$CAN0TST$0$0 == 0x00db
_CAN0TST	=	0x00db
G$PCA0CPM2$0$0 == 0x00dc
_PCA0CPM2	=	0x00dc
G$PCA0CPM3$0$0 == 0x00dd
_PCA0CPM3	=	0x00dd
G$PCA0CPM4$0$0 == 0x00de
_PCA0CPM4	=	0x00de
G$PCA0CPM5$0$0 == 0x00df
_PCA0CPM5	=	0x00df
G$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
G$PCA0CPL5$0$0 == 0x00e1
_PCA0CPL5	=	0x00e1
G$XBR0$0$0 == 0x00e1
_XBR0	=	0x00e1
G$PCA0CPH5$0$0 == 0x00e2
_PCA0CPH5	=	0x00e2
G$XBR1$0$0 == 0x00e2
_XBR1	=	0x00e2
G$XBR2$0$0 == 0x00e3
_XBR2	=	0x00e3
G$XBR3$0$0 == 0x00e4
_XBR3	=	0x00e4
G$EIE1$0$0 == 0x00e6
_EIE1	=	0x00e6
G$EIE2$0$0 == 0x00e7
_EIE2	=	0x00e7
G$ADC0CN$0$0 == 0x00e8
_ADC0CN	=	0x00e8
G$ADC2CN$0$0 == 0x00e8
_ADC2CN	=	0x00e8
G$P6$0$0 == 0x00e8
_P6	=	0x00e8
G$PCA0CPL2$0$0 == 0x00e9
_PCA0CPL2	=	0x00e9
G$PCA0CPH2$0$0 == 0x00ea
_PCA0CPH2	=	0x00ea
G$PCA0CPL3$0$0 == 0x00eb
_PCA0CPL3	=	0x00eb
G$PCA0CPH3$0$0 == 0x00ec
_PCA0CPH3	=	0x00ec
G$PCA0CPL4$0$0 == 0x00ed
_PCA0CPL4	=	0x00ed
G$PCA0CPH4$0$0 == 0x00ee
_PCA0CPH4	=	0x00ee
G$RSTSRC$0$0 == 0x00ef
_RSTSRC	=	0x00ef
G$B$0$0 == 0x00f0
_B	=	0x00f0
G$EIP1$0$0 == 0x00f6
_EIP1	=	0x00f6
G$EIP2$0$0 == 0x00f7
_EIP2	=	0x00f7
G$SPI0CN$0$0 == 0x00f8
_SPI0CN	=	0x00f8
G$CAN0CN$0$0 == 0x00f8
_CAN0CN	=	0x00f8
G$P7$0$0 == 0x00f8
_P7	=	0x00f8
G$PCA0L$0$0 == 0x00f9
_PCA0L	=	0x00f9
G$PCA0H$0$0 == 0x00fa
_PCA0H	=	0x00fa
G$PCA0CPL0$0$0 == 0x00fb
_PCA0CPL0	=	0x00fb
G$PCA0CPH0$0$0 == 0x00fc
_PCA0CPH0	=	0x00fc
G$PCA0CPL1$0$0 == 0x00fd
_PCA0CPL1	=	0x00fd
G$PCA0CPH1$0$0 == 0x00fe
_PCA0CPH1	=	0x00fe
G$WDTCN$0$0 == 0x00ff
_WDTCN	=	0x00ff
G$PCA0$0$0 == 0xfaf9
_PCA0	=	0xfaf9
G$PCA0CP0$0$0 == 0xfcfb
_PCA0CP0	=	0xfcfb
G$PCA0CP1$0$0 == 0xfefd
_PCA0CP1	=	0xfefd
G$PCA0CP2$0$0 == 0xeae9
_PCA0CP2	=	0xeae9
G$PCA0CP3$0$0 == 0xeceb
_PCA0CP3	=	0xeceb
G$PCA0CP4$0$0 == 0xeeed
_PCA0CP4	=	0xeeed
G$PCA0CP5$0$0 == 0xe2e1
_PCA0CP5	=	0xe2e1
G$CAN0DAT$0$0 == 0xd9d8
_CAN0DAT	=	0xd9d8
G$DAC0$0$0 == 0xd3d2
_DAC0	=	0xd3d2
G$DAC1$0$0 == 0xd3d2
_DAC1	=	0xd3d2
G$RCAP2$0$0 == 0xcbca
_RCAP2	=	0xcbca
G$RCAP3$0$0 == 0xcbca
_RCAP3	=	0xcbca
G$RCAP4$0$0 == 0xcbca
_RCAP4	=	0xcbca
G$TMR2$0$0 == 0xcdcc
_TMR2	=	0xcdcc
G$TMR3$0$0 == 0xcdcc
_TMR3	=	0xcdcc
G$TMR4$0$0 == 0xcdcc
_TMR4	=	0xcdcc
G$ADC0GT$0$0 == 0xc5c4
_ADC0GT	=	0xc5c4
G$ADC0LT$0$0 == 0xc7c6
_ADC0LT	=	0xc7c6
G$ADC0$0$0 == 0xbfbe
_ADC0	=	0xbfbe
G$DP$0$0 == 0x8382
_DP	=	0x8382
G$_XPAGE$0$0 == 0x00a2
__XPAGE	=	0x00a2
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
G$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
G$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
G$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
G$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
G$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
G$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
G$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
G$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
G$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
G$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
G$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
G$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
G$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
G$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
G$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
G$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
G$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
G$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
G$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
G$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
G$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
G$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
G$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
G$P3_0$0$0 == 0x00b0
_P3_0	=	0x00b0
G$P3_1$0$0 == 0x00b1
_P3_1	=	0x00b1
G$P3_2$0$0 == 0x00b2
_P3_2	=	0x00b2
G$P3_3$0$0 == 0x00b3
_P3_3	=	0x00b3
G$P3_4$0$0 == 0x00b4
_P3_4	=	0x00b4
G$P3_5$0$0 == 0x00b5
_P3_5	=	0x00b5
G$P3_6$0$0 == 0x00b6
_P3_6	=	0x00b6
G$P3_7$0$0 == 0x00b7
_P3_7	=	0x00b7
G$P4_0$0$0 == 0x00c8
_P4_0	=	0x00c8
G$P4_1$0$0 == 0x00c9
_P4_1	=	0x00c9
G$P4_2$0$0 == 0x00ca
_P4_2	=	0x00ca
G$P4_3$0$0 == 0x00cb
_P4_3	=	0x00cb
G$P4_4$0$0 == 0x00cc
_P4_4	=	0x00cc
G$P4_5$0$0 == 0x00cd
_P4_5	=	0x00cd
G$P4_6$0$0 == 0x00ce
_P4_6	=	0x00ce
G$P4_7$0$0 == 0x00cf
_P4_7	=	0x00cf
G$P5_0$0$0 == 0x00d8
_P5_0	=	0x00d8
G$P5_1$0$0 == 0x00d9
_P5_1	=	0x00d9
G$P5_2$0$0 == 0x00da
_P5_2	=	0x00da
G$P5_3$0$0 == 0x00db
_P5_3	=	0x00db
G$P5_4$0$0 == 0x00dc
_P5_4	=	0x00dc
G$P5_5$0$0 == 0x00dd
_P5_5	=	0x00dd
G$P5_6$0$0 == 0x00de
_P5_6	=	0x00de
G$P5_7$0$0 == 0x00df
_P5_7	=	0x00df
G$P6_0$0$0 == 0x00e8
_P6_0	=	0x00e8
G$P6_1$0$0 == 0x00e9
_P6_1	=	0x00e9
G$P6_2$0$0 == 0x00ea
_P6_2	=	0x00ea
G$P6_3$0$0 == 0x00eb
_P6_3	=	0x00eb
G$P6_4$0$0 == 0x00ec
_P6_4	=	0x00ec
G$P6_5$0$0 == 0x00ed
_P6_5	=	0x00ed
G$P6_6$0$0 == 0x00ee
_P6_6	=	0x00ee
G$P6_7$0$0 == 0x00ef
_P6_7	=	0x00ef
G$P7_0$0$0 == 0x00f8
_P7_0	=	0x00f8
G$P7_1$0$0 == 0x00f9
_P7_1	=	0x00f9
G$P7_2$0$0 == 0x00fa
_P7_2	=	0x00fa
G$P7_3$0$0 == 0x00fb
_P7_3	=	0x00fb
G$P7_4$0$0 == 0x00fc
_P7_4	=	0x00fc
G$P7_5$0$0 == 0x00fd
_P7_5	=	0x00fd
G$P7_6$0$0 == 0x00fe
_P7_6	=	0x00fe
G$P7_7$0$0 == 0x00ff
_P7_7	=	0x00ff
G$TF1$0$0 == 0x008f
_TF1	=	0x008f
G$TR1$0$0 == 0x008e
_TR1	=	0x008e
G$TF0$0$0 == 0x008d
_TF0	=	0x008d
G$TR0$0$0 == 0x008c
_TR0	=	0x008c
G$IE1$0$0 == 0x008b
_IE1	=	0x008b
G$IT1$0$0 == 0x008a
_IT1	=	0x008a
G$IE0$0$0 == 0x0089
_IE0	=	0x0089
G$IT0$0$0 == 0x0088
_IT0	=	0x0088
G$CP0EN$0$0 == 0x008f
_CP0EN	=	0x008f
G$CP0OUT$0$0 == 0x008e
_CP0OUT	=	0x008e
G$CP0RIF$0$0 == 0x008d
_CP0RIF	=	0x008d
G$CP0FIF$0$0 == 0x008c
_CP0FIF	=	0x008c
G$CP0HYP1$0$0 == 0x008b
_CP0HYP1	=	0x008b
G$CP0HYP0$0$0 == 0x008a
_CP0HYP0	=	0x008a
G$CP0HYN1$0$0 == 0x0089
_CP0HYN1	=	0x0089
G$CP0HYN0$0$0 == 0x0088
_CP0HYN0	=	0x0088
G$CP1EN$0$0 == 0x008f
_CP1EN	=	0x008f
G$CP1OUT$0$0 == 0x008e
_CP1OUT	=	0x008e
G$CP1RIF$0$0 == 0x008d
_CP1RIF	=	0x008d
G$CP1FIF$0$0 == 0x008c
_CP1FIF	=	0x008c
G$CP1HYP1$0$0 == 0x008b
_CP1HYP1	=	0x008b
G$CP1HYP0$0$0 == 0x008a
_CP1HYP0	=	0x008a
G$CP1HYN1$0$0 == 0x0089
_CP1HYN1	=	0x0089
G$CP1HYN0$0$0 == 0x0088
_CP1HYN0	=	0x0088
G$CP2EN$0$0 == 0x008f
_CP2EN	=	0x008f
G$CP2OUT$0$0 == 0x008e
_CP2OUT	=	0x008e
G$CP2RIF$0$0 == 0x008d
_CP2RIF	=	0x008d
G$CP2FIF$0$0 == 0x008c
_CP2FIF	=	0x008c
G$CP2HYP1$0$0 == 0x008b
_CP2HYP1	=	0x008b
G$CP2HYP0$0$0 == 0x008a
_CP2HYP0	=	0x008a
G$CP2HYN1$0$0 == 0x0089
_CP2HYN1	=	0x0089
G$CP2HYN0$0$0 == 0x0088
_CP2HYN0	=	0x0088
G$SM00$0$0 == 0x009f
_SM00	=	0x009f
G$SM10$0$0 == 0x009e
_SM10	=	0x009e
G$SM20$0$0 == 0x009d
_SM20	=	0x009d
G$REN0$0$0 == 0x009c
_REN0	=	0x009c
G$TB80$0$0 == 0x009b
_TB80	=	0x009b
G$RB80$0$0 == 0x009a
_RB80	=	0x009a
G$TI0$0$0 == 0x0099
_TI0	=	0x0099
G$RI0$0$0 == 0x0098
_RI0	=	0x0098
G$S1MODE$0$0 == 0x009f
_S1MODE	=	0x009f
G$MCE1$0$0 == 0x009d
_MCE1	=	0x009d
G$REN1$0$0 == 0x009c
_REN1	=	0x009c
G$TB81$0$0 == 0x009b
_TB81	=	0x009b
G$RB81$0$0 == 0x009a
_RB81	=	0x009a
G$TI1$0$0 == 0x0099
_TI1	=	0x0099
G$RI1$0$0 == 0x0098
_RI1	=	0x0098
G$EA$0$0 == 0x00af
_EA	=	0x00af
G$ET2$0$0 == 0x00ad
_ET2	=	0x00ad
G$ES0$0$0 == 0x00ac
_ES0	=	0x00ac
G$ET1$0$0 == 0x00ab
_ET1	=	0x00ab
G$EX1$0$0 == 0x00aa
_EX1	=	0x00aa
G$ET0$0$0 == 0x00a9
_ET0	=	0x00a9
G$EX0$0$0 == 0x00a8
_EX0	=	0x00a8
G$PT2$0$0 == 0x00bd
_PT2	=	0x00bd
G$PS0$0$0 == 0x00bc
_PS0	=	0x00bc
G$PT1$0$0 == 0x00bb
_PT1	=	0x00bb
G$PX1$0$0 == 0x00ba
_PX1	=	0x00ba
G$PT0$0$0 == 0x00b9
_PT0	=	0x00b9
G$PX0$0$0 == 0x00b8
_PX0	=	0x00b8
G$BUSY$0$0 == 0x00c7
_BUSY	=	0x00c7
G$ENSMB$0$0 == 0x00c6
_ENSMB	=	0x00c6
G$STA$0$0 == 0x00c5
_STA	=	0x00c5
G$STO$0$0 == 0x00c4
_STO	=	0x00c4
G$SI$0$0 == 0x00c3
_SI	=	0x00c3
G$AA$0$0 == 0x00c2
_AA	=	0x00c2
G$SMBFTE$0$0 == 0x00c1
_SMBFTE	=	0x00c1
G$SMBTOE$0$0 == 0x00c0
_SMBTOE	=	0x00c0
G$BOFF$0$0 == 0x00c7
_BOFF	=	0x00c7
G$EWARN$0$0 == 0x00c6
_EWARN	=	0x00c6
G$EPASS$0$0 == 0x00c5
_EPASS	=	0x00c5
G$RXOK$0$0 == 0x00c4
_RXOK	=	0x00c4
G$TXOK$0$0 == 0x00c3
_TXOK	=	0x00c3
G$LEC2$0$0 == 0x00c2
_LEC2	=	0x00c2
G$LEC1$0$0 == 0x00c1
_LEC1	=	0x00c1
G$LEC0$0$0 == 0x00c0
_LEC0	=	0x00c0
G$TF2$0$0 == 0x00cf
_TF2	=	0x00cf
G$EXF2$0$0 == 0x00ce
_EXF2	=	0x00ce
G$EXEN2$0$0 == 0x00cb
_EXEN2	=	0x00cb
G$TR2$0$0 == 0x00ca
_TR2	=	0x00ca
G$CT2$0$0 == 0x00c9
_CT2	=	0x00c9
G$CPRL2$0$0 == 0x00c8
_CPRL2	=	0x00c8
G$TF3$0$0 == 0x00cf
_TF3	=	0x00cf
G$EXF3$0$0 == 0x00ce
_EXF3	=	0x00ce
G$EXEN3$0$0 == 0x00cb
_EXEN3	=	0x00cb
G$TR3$0$0 == 0x00ca
_TR3	=	0x00ca
G$CT3$0$0 == 0x00c9
_CT3	=	0x00c9
G$CPRL3$0$0 == 0x00c8
_CPRL3	=	0x00c8
G$TF4$0$0 == 0x00cf
_TF4	=	0x00cf
G$EXF4$0$0 == 0x00ce
_EXF4	=	0x00ce
G$EXEN4$0$0 == 0x00cb
_EXEN4	=	0x00cb
G$TR4$0$0 == 0x00ca
_TR4	=	0x00ca
G$CT4$0$0 == 0x00c9
_CT4	=	0x00c9
G$CPRL4$0$0 == 0x00c8
_CPRL4	=	0x00c8
G$CY$0$0 == 0x00d7
_CY	=	0x00d7
G$AC$0$0 == 0x00d6
_AC	=	0x00d6
G$F0$0$0 == 0x00d5
_F0	=	0x00d5
G$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
G$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
G$OV$0$0 == 0x00d2
_OV	=	0x00d2
G$F1$0$0 == 0x00d1
_F1	=	0x00d1
G$P$0$0 == 0x00d0
_P	=	0x00d0
G$CF$0$0 == 0x00df
_CF	=	0x00df
G$CR$0$0 == 0x00de
_CR	=	0x00de
G$CCF5$0$0 == 0x00dd
_CCF5	=	0x00dd
G$CCF4$0$0 == 0x00dc
_CCF4	=	0x00dc
G$CCF3$0$0 == 0x00db
_CCF3	=	0x00db
G$CCF2$0$0 == 0x00da
_CCF2	=	0x00da
G$CCF1$0$0 == 0x00d9
_CCF1	=	0x00d9
G$CCF0$0$0 == 0x00d8
_CCF0	=	0x00d8
G$AD0EN$0$0 == 0x00ef
_AD0EN	=	0x00ef
G$AD0TM$0$0 == 0x00ee
_AD0TM	=	0x00ee
G$AD0INT$0$0 == 0x00ed
_AD0INT	=	0x00ed
G$AD0BUSY$0$0 == 0x00ec
_AD0BUSY	=	0x00ec
G$AD0CM1$0$0 == 0x00eb
_AD0CM1	=	0x00eb
G$AD0CM0$0$0 == 0x00ea
_AD0CM0	=	0x00ea
G$AD0WINT$0$0 == 0x00e9
_AD0WINT	=	0x00e9
G$AD0LJST$0$0 == 0x00e8
_AD0LJST	=	0x00e8
G$AD2EN$0$0 == 0x00ef
_AD2EN	=	0x00ef
G$AD2TM$0$0 == 0x00ee
_AD2TM	=	0x00ee
G$AD2INT$0$0 == 0x00ed
_AD2INT	=	0x00ed
G$AD2BUSY$0$0 == 0x00ec
_AD2BUSY	=	0x00ec
G$AD2CM2$0$0 == 0x00eb
_AD2CM2	=	0x00eb
G$AD2CM1$0$0 == 0x00ea
_AD2CM1	=	0x00ea
G$AD2CM0$0$0 == 0x00e9
_AD2CM0	=	0x00e9
G$AD2WINT$0$0 == 0x00e8
_AD2WINT	=	0x00e8
G$SPIF$0$0 == 0x00ff
_SPIF	=	0x00ff
G$WCOL$0$0 == 0x00fe
_WCOL	=	0x00fe
G$MODF$0$0 == 0x00fd
_MODF	=	0x00fd
G$RXOVRN$0$0 == 0x00fc
_RXOVRN	=	0x00fc
G$NSSMD1$0$0 == 0x00fb
_NSSMD1	=	0x00fb
G$NSSMD0$0$0 == 0x00fa
_NSSMD0	=	0x00fa
G$TXBMT$0$0 == 0x00f9
_TXBMT	=	0x00f9
G$SPIEN$0$0 == 0x00f8
_SPIEN	=	0x00f8
G$CANINIT$0$0 == 0x00f8
_CANINIT	=	0x00f8
G$CANIE$0$0 == 0x00f9
_CANIE	=	0x00f9
G$CANSIE$0$0 == 0x00fa
_CANSIE	=	0x00fa
G$CANEIE$0$0 == 0x00fb
_CANEIE	=	0x00fb
G$CANIF$0$0 == 0x00fc
_CANIF	=	0x00fc
G$CANDAR$0$0 == 0x00fd
_CANDAR	=	0x00fd
G$CANCCE$0$0 == 0x00fe
_CANCCE	=	0x00fe
G$CANTEST$0$0 == 0x00ff
_CANTEST	=	0x00ff
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
G$conta_caractere$0$0==.
_conta_caractere::
	.ds 1
G$end_fim_ram$0$0==.
_end_fim_ram::
	.ds 2
G$TECLA$0$0==.
_TECLA::
	.ds 1
G$tecla$0$0==.
_tecla::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
Lmain.esc_RAM_SPI$dado$1$62==.
_esc_RAM_SPI_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
G$terminal_ativo$0$0==.
_terminal_ativo::
	.ds 1
Lmain.le_glcd$cd$1$27==.
_le_glcd_PARM_1:
	.ds 1
Lmain.le_glcd$cs$1$27==.
_le_glcd_PARM_2:
	.ds 1
Lmain.esc_glcd$cd$1$29==.
_esc_glcd_PARM_2:
	.ds 1
Lmain.esc_glcd$cs$1$29==.
_esc_glcd_PARM_3:
	.ds 1
Lmain.init_GLCD$sloc0$1$0==.
_init_GLCD_sloc0_1_0:
	.ds 1
Lmain.conf_Y$cs$1$33==.
_conf_Y_PARM_2:
	.ds 1
Lmain.conf_pag$cs$1$35==.
_conf_pag_PARM_2:
	.ds 1
Lmain.limpa_glcd$cs$1$37==.
_limpa_glcd_PARM_1:
	.ds 1
Lmain.escreve_caractere$cs$1$45==.
_escreve_caractere_PARM_2:
	.ds 1
Lmain.putchar$lado$1$48==.
_putchar_lado_1_48:
	.ds 1
G$x$0$0==.
_x::
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_uart_ISR
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	C$output_glcd.h$24$1$96 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:24: volatile unsigned char conta_caractere = 0;
	mov	_conta_caractere,#0x00
	C$mem_spi.h$15$1$96 ==.
;	C:\Users\202019050169\Downloads\trabalho\/mem_spi.h:15: volatile unsigned int end_fim_ram = 0;
	clr	a
	mov	_end_fim_ram,a
	mov	(_end_fim_ram + 1),a
	C$main.c$29$1$96 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:29: volatile unsigned char TECLA = TECS_OPEN;
	mov	_TECLA,#0xff
	C$output_glcd.h$25$1$96 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:25: volatile __bit terminal_ativo = 0;
	clr	_terminal_ativo
	C$main.c$33$1$96 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:33: volatile __bit x = 0;
	clr	_x
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'Reset_Sources_Init'
;------------------------------------------------------------
	G$Reset_Sources_Init$0$0 ==.
	C$config.c$10$0$0 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:10: void Reset_Sources_Init()
;	-----------------------------------------
;	 function Reset_Sources_Init
;	-----------------------------------------
_Reset_Sources_Init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$config.c$12$1$14 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:12: WDTCN     = 0xDE;
	mov	_WDTCN,#0xde
	C$config.c$13$1$14 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:13: WDTCN     = 0xAD;
	mov	_WDTCN,#0xad
	C$config.c$14$1$14 ==.
	XG$Reset_Sources_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer_Init'
;------------------------------------------------------------
	G$Timer_Init$0$0 ==.
	C$config.c$16$1$14 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:16: void Timer_Init()
;	-----------------------------------------
;	 function Timer_Init
;	-----------------------------------------
_Timer_Init:
	C$config.c$18$1$15 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:18: SFRPAGE   = TIMER01_PAGE;
	mov	_SFRPAGE,#0x00
	C$config.c$19$1$15 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:19: TCON      = 0x01;
	mov	_TCON,#0x01
	C$config.c$20$1$15 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:20: TMOD      = 0x21;
	mov	_TMOD,#0x21
	C$config.c$21$1$15 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:21: CKCON     = 0x18;
	mov	_CKCON,#0x18
	C$config.c$22$1$15 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:22: TH1       = 0xAF;
	mov	_TH1,#0xaf
	C$config.c$23$1$15 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:23: SFRPAGE   = TMR2_PAGE;
	mov	_SFRPAGE,#0x00
	C$config.c$24$1$15 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:24: TMR2CF    = 0x0A;
	mov	_TMR2CF,#0x0a
	C$config.c$25$1$15 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:25: RCAP2H    = 0x0C;
	mov	_RCAP2H,#0x0c
	C$config.c$26$1$15 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:26: TMR2L     = 0x0D;
	mov	_TMR2L,#0x0d
	C$config.c$27$1$15 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:27: TMR2H     = 0x0B;
	mov	_TMR2H,#0x0b
	C$config.c$28$1$15 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:28: SFRPAGE   = TMR4_PAGE;
	mov	_SFRPAGE,#0x02
	C$config.c$29$1$15 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:29: TMR4CF    = 0x02;
	mov	_TMR4CF,#0x02
	C$config.c$30$1$15 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:30: RCAP4L    = 0x8D;
	mov	_RCAP4L,#0x8d
	C$config.c$31$1$15 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:31: RCAP4H    = 0x34;
	mov	_RCAP4H,#0x34
	C$config.c$32$1$15 ==.
	XG$Timer_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_Init'
;------------------------------------------------------------
	G$UART_Init$0$0 ==.
	C$config.c$34$1$15 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:34: void UART_Init()
;	-----------------------------------------
;	 function UART_Init
;	-----------------------------------------
_UART_Init:
	C$config.c$36$1$16 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:36: SFRPAGE   = UART0_PAGE;
	mov	_SFRPAGE,#0x00
	C$config.c$37$1$16 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:37: SCON0     = 0x70;
	mov	_SCON0,#0x70
	C$config.c$38$1$16 ==.
	XG$UART_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SMBus_Init'
;------------------------------------------------------------
	G$SMBus_Init$0$0 ==.
	C$config.c$40$1$16 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:40: void SMBus_Init()
;	-----------------------------------------
;	 function SMBus_Init
;	-----------------------------------------
_SMBus_Init:
	C$config.c$42$1$17 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:42: SFRPAGE   = SMB0_PAGE;
	mov	_SFRPAGE,#0x00
	C$config.c$43$1$17 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:43: SMB0CR    = 0xE9;
	mov	_SMB0CR,#0xe9
	C$config.c$44$1$17 ==.
	XG$SMBus_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SPI_Init'
;------------------------------------------------------------
	G$SPI_Init$0$0 ==.
	C$config.c$46$1$17 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:46: void SPI_Init()
;	-----------------------------------------
;	 function SPI_Init
;	-----------------------------------------
_SPI_Init:
	C$config.c$48$1$18 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:48: SFRPAGE   = SPI0_PAGE;
	mov	_SFRPAGE,#0x00
	C$config.c$49$1$18 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:49: SPI0CFG   = 0x40;
	mov	_SPI0CFG,#0x40
	C$config.c$50$1$18 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:50: SPI0CN    = 0x01;
	mov	_SPI0CN,#0x01
	C$config.c$51$1$18 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:51: SPI0CKR   = 0x7C;
	mov	_SPI0CKR,#0x7c
	C$config.c$52$1$18 ==.
	XG$SPI_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ADC_Init'
;------------------------------------------------------------
	G$ADC_Init$0$0 ==.
	C$config.c$54$1$18 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:54: void ADC_Init()
;	-----------------------------------------
;	 function ADC_Init
;	-----------------------------------------
_ADC_Init:
	C$config.c$56$1$19 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:56: SFRPAGE   = ADC0_PAGE;
	mov	_SFRPAGE,#0x00
	C$config.c$57$1$19 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:57: ADC0CN    = 0x80;
	mov	_ADC0CN,#0x80
	C$config.c$58$1$19 ==.
	XG$ADC_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAC_Init'
;------------------------------------------------------------
	G$DAC_Init$0$0 ==.
	C$config.c$60$1$19 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:60: void DAC_Init()
;	-----------------------------------------
;	 function DAC_Init
;	-----------------------------------------
_DAC_Init:
	C$config.c$62$1$20 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:62: SFRPAGE   = DAC0_PAGE;
	mov	_SFRPAGE,#0x00
	C$config.c$63$1$20 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:63: DAC0CN    = 0x9C;
	mov	_DAC0CN,#0x9c
	C$config.c$64$1$20 ==.
	XG$DAC_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Voltage_Reference_Init'
;------------------------------------------------------------
	G$Voltage_Reference_Init$0$0 ==.
	C$config.c$66$1$20 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:66: void Voltage_Reference_Init()
;	-----------------------------------------
;	 function Voltage_Reference_Init
;	-----------------------------------------
_Voltage_Reference_Init:
	C$config.c$68$1$21 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:68: SFRPAGE   = ADC0_PAGE;
	mov	_SFRPAGE,#0x00
	C$config.c$69$1$21 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:69: REF0CN    = 0x03;
	mov	_REF0CN,#0x03
	C$config.c$70$1$21 ==.
	XG$Voltage_Reference_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Port_IO_Init'
;------------------------------------------------------------
	G$Port_IO_Init$0$0 ==.
	C$config.c$72$1$21 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:72: void Port_IO_Init()
;	-----------------------------------------
;	 function Port_IO_Init
;	-----------------------------------------
_Port_IO_Init:
	C$config.c$110$1$22 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:110: SFRPAGE   = CONFIG_PAGE;
	mov	_SFRPAGE,#0x0f
	C$config.c$111$1$22 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:111: P0MDOUT   = 0xFD;
	mov	_P0MDOUT,#0xfd
	C$config.c$112$1$22 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:112: P3MDOUT   = 0xE0;
	mov	_P3MDOUT,#0xe0
	C$config.c$113$1$22 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:113: XBR0      = 0x06;
	mov	_XBR0,#0x06
	C$config.c$114$1$22 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:114: XBR2      = 0x40;
	mov	_XBR2,#0x40
	C$config.c$115$1$22 ==.
	XG$Port_IO_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Oscillator_Init'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
	G$Oscillator_Init$0$0 ==.
	C$config.c$117$1$22 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:117: void Oscillator_Init()
;	-----------------------------------------
;	 function Oscillator_Init
;	-----------------------------------------
_Oscillator_Init:
	C$config.c$120$1$23 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:120: SFRPAGE   = CONFIG_PAGE;
	mov	_SFRPAGE,#0x0f
	C$config.c$121$1$23 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:121: OSCXCN    = 0x67;
	mov	_OSCXCN,#0x67
	C$config.c$122$1$23 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:122: for (i = 0; i < 3000; i++);  // Wait 1ms for initialization
	mov	r6,#0xb8
	mov	r7,#0x0b
00107$:
	mov	a,r6
	add	a,#0xff
	mov	r4,a
	mov	a,r7
	addc	a,#0xff
	mov	r5,a
	mov	ar6,r4
	mov	ar7,r5
	mov	a,r4
	orl	a,r5
	jnz	00107$
	C$config.c$123$1$23 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:123: while ((OSCXCN & 0x80) == 0);
00102$:
	mov	a,_OSCXCN
	jnb	acc.7,00102$
	C$config.c$124$1$23 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:124: CLKSEL    = 0x01;
	mov	_CLKSEL,#0x01
	C$config.c$125$1$23 ==.
	XG$Oscillator_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Interrupts_Init'
;------------------------------------------------------------
	G$Interrupts_Init$0$0 ==.
	C$config.c$127$1$23 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:127: void Interrupts_Init()
;	-----------------------------------------
;	 function Interrupts_Init
;	-----------------------------------------
_Interrupts_Init:
	C$config.c$129$1$24 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:129: IE        = 0xB0;
	mov	_IE,#0xb0
	C$config.c$130$1$24 ==.
	XG$Interrupts_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Init_Device'
;------------------------------------------------------------
	G$Init_Device$0$0 ==.
	C$config.c$134$1$24 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:134: void Init_Device(void)
;	-----------------------------------------
;	 function Init_Device
;	-----------------------------------------
_Init_Device:
	C$config.c$136$1$26 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:136: Reset_Sources_Init();
	lcall	_Reset_Sources_Init
	C$config.c$137$1$26 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:137: Timer_Init();
	lcall	_Timer_Init
	C$config.c$138$1$26 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:138: UART_Init();
	lcall	_UART_Init
	C$config.c$139$1$26 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:139: SMBus_Init();
	lcall	_SMBus_Init
	C$config.c$140$1$26 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:140: SPI_Init();
	lcall	_SPI_Init
	C$config.c$141$1$26 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:141: ADC_Init();
	lcall	_ADC_Init
	C$config.c$142$1$26 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:142: DAC_Init();
	lcall	_DAC_Init
	C$config.c$143$1$26 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:143: Voltage_Reference_Init();
	lcall	_Voltage_Reference_Init
	C$config.c$144$1$26 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:144: Port_IO_Init();
	lcall	_Port_IO_Init
	C$config.c$145$1$26 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:145: Oscillator_Init();
	lcall	_Oscillator_Init
	C$config.c$146$1$26 ==.
;	C:\Users\202019050169\Downloads\trabalho\/config.c:146: Interrupts_Init();
	lcall	_Interrupts_Init
	C$config.c$147$1$26 ==.
	XG$Init_Device$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'le_glcd'
;------------------------------------------------------------
;byte                      Allocated to registers 
;------------------------------------------------------------
	G$le_glcd$0$0 ==.
	C$output_glcd.h$27$1$26 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:27: unsigned char le_glcd(__bit cd, __bit cs){
;	-----------------------------------------
;	 function le_glcd
;	-----------------------------------------
_le_glcd:
	C$output_glcd.h$32$1$28 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:32: RW = HI;
	setb	_P2_3
	C$output_glcd.h$33$1$28 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:33: CS1 = cs;
	mov	c,_le_glcd_PARM_2
	mov	_P2_0,c
	C$output_glcd.h$34$1$28 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:34: CS2 = !cs;
	mov	c,_le_glcd_PARM_2
	cpl	c
	mov	_P2_1,c
	C$output_glcd.h$35$1$28 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:35: RS = cd;
	mov	c,_le_glcd_PARM_1
	mov	_P2_2,c
	C$output_glcd.h$36$1$28 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:36: NOP4();
	NOP	
	NOP	
	NOP	
	NOP	
	C$output_glcd.h$38$1$28 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:38: E = HI;
	setb	_P2_4
	C$output_glcd.h$39$1$28 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:39: NOP8();
	NOP	
	NOP	
	NOP	
	NOP	
	NOP	
	NOP	
	NOP	
	NOP	
	C$output_glcd.h$41$1$28 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:41: SFRPAGE=CONFIG_PAGE;
	mov	_SFRPAGE,#0x0f
	C$output_glcd.h$42$1$28 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:42: byte = DB;
	mov	dpl,_P4
	C$output_glcd.h$43$1$28 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:43: SFRPAGE=LEGACY_PAGE;
	mov	_SFRPAGE,#0x00
	C$output_glcd.h$44$1$28 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:44: NOP4();
	NOP	
	NOP	
	NOP	
	NOP	
	C$output_glcd.h$46$1$28 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:46: E = LO;
	clr	_P2_4
	C$output_glcd.h$47$1$28 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:47: NOP12();
	NOP	
	NOP	
	NOP	
	NOP	
	NOP	
	NOP	
	NOP	
	NOP	
	NOP	
	NOP	
	NOP	
	NOP	
	C$output_glcd.h$48$1$28 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:48: return (byte);
	C$output_glcd.h$50$1$28 ==.
	XG$le_glcd$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'esc_glcd'
;------------------------------------------------------------
;byte                      Allocated to registers r7 
;------------------------------------------------------------
	G$esc_glcd$0$0 ==.
	C$output_glcd.h$52$1$28 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:52: void esc_glcd(unsigned char byte, __bit cd, __bit cs){
;	-----------------------------------------
;	 function esc_glcd
;	-----------------------------------------
_esc_glcd:
	mov	r7,dpl
	C$output_glcd.h$55$1$30 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:55: while(le_glcd(CO, cs) & 0x80); // Espera enquanto BUSY for 1
00101$:
	clr	_le_glcd_PARM_1
	mov	c,_esc_glcd_PARM_3
	mov	_le_glcd_PARM_2,c
	push	ar7
	lcall	_le_glcd
	mov	a,dpl
	pop	ar7
	jb	acc.7,00101$
	C$output_glcd.h$57$1$30 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:57: RW = LO;
	clr	_P2_3
	C$output_glcd.h$58$1$30 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:58: CS1 = cs;
	mov	c,_esc_glcd_PARM_3
	mov	_P2_0,c
	C$output_glcd.h$59$1$30 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:59: CS2 = !cs;
	mov	c,_esc_glcd_PARM_3
	cpl	c
	mov	_P2_1,c
	C$output_glcd.h$60$1$30 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:60: RS = cd;
	mov	c,_esc_glcd_PARM_2
	mov	_P2_2,c
	C$output_glcd.h$61$1$30 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:61: SFRPAGE=CONFIG_PAGE;
	mov	_SFRPAGE,#0x0f
	C$output_glcd.h$62$1$30 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:62: DB = byte;
	mov	_P4,r7
	C$output_glcd.h$63$1$30 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:63: SFRPAGE=LEGACY_PAGE;
	mov	_SFRPAGE,#0x00
	C$output_glcd.h$64$1$30 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:64: NOP4();
	NOP	
	NOP	
	NOP	
	NOP	
	C$output_glcd.h$66$1$30 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:66: E = HI;
	setb	_P2_4
	C$output_glcd.h$67$1$30 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:67: NOP12();
	NOP	
	NOP	
	NOP	
	NOP	
	NOP	
	NOP	
	NOP	
	NOP	
	NOP	
	NOP	
	NOP	
	NOP	
	C$output_glcd.h$69$1$30 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:69: E = LO;
	clr	_P2_4
	C$output_glcd.h$70$1$30 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:70: SFRPAGE=CONFIG_PAGE;
	mov	_SFRPAGE,#0x0f
	C$output_glcd.h$71$1$30 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:71: DB = 0xff; // Para que a porta funcione como um entrada de novo sem nenhum problema
	mov	_P4,#0xff
	C$output_glcd.h$72$1$30 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:72: SFRPAGE=LEGACY_PAGE;
	mov	_SFRPAGE,#0x00
	C$output_glcd.h$73$1$30 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:73: RW = HI; // RW == P2_3 sao usados pelo GLCD e precisa ser setado 1 para ser usado por outra funcao de outro componente
	setb	_P2_3
	C$output_glcd.h$74$1$30 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:74: NOP12();
	NOP	
	NOP	
	NOP	
	NOP	
	NOP	
	NOP	
	NOP	
	NOP	
	NOP	
	NOP	
	NOP	
	NOP	
	C$output_glcd.h$75$1$30 ==.
	XG$esc_glcd$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_GLCD'
;------------------------------------------------------------
;cs                        Allocated to registers r7 
;------------------------------------------------------------
	G$init_GLCD$0$0 ==.
	C$output_glcd.h$77$1$30 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:77: void init_GLCD(){
;	-----------------------------------------
;	 function init_GLCD
;	-----------------------------------------
_init_GLCD:
	C$output_glcd.h$82$1$31 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:82: E = LO;
	clr	_P2_4
	C$output_glcd.h$83$1$31 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:83: RST = HI;
	setb	_P2_5
	C$output_glcd.h$84$1$31 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:84: CS1 = HI;
	setb	_P2_0
	C$output_glcd.h$85$1$31 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:85: CS2 = HI;
	setb	_P2_1
	C$output_glcd.h$86$1$31 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:86: SFRPAGE=CONFIG_PAGE;
	mov	_SFRPAGE,#0x0f
	C$output_glcd.h$87$1$31 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:87: DB = 0xff;
	mov	_P4,#0xff
	C$output_glcd.h$88$1$31 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:88: SFRPAGE=LEGACY_PAGE;
	mov	_SFRPAGE,#0x00
	C$output_glcd.h$90$1$31 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:90: while(cs<2){
	mov	r7,#0x00
00104$:
	cjne	r7,#0x02,00119$
00119$:
	jnc	00107$
	C$output_glcd.h$92$2$32 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:92: while(le_glcd(CO, cs) & 0x10);
00101$:
	mov	a,r7
	add	a,#0xff
	mov	_init_GLCD_sloc0_1_0,c
	clr	_le_glcd_PARM_1
	mov	c,_init_GLCD_sloc0_1_0
	mov	_le_glcd_PARM_2,c
	push	ar7
	lcall	_le_glcd
	mov	a,dpl
	pop	ar7
	jb	acc.4,00101$
	C$output_glcd.h$95$2$32 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:95: esc_glcd(0x3f, CO, cs);
	clr	_esc_glcd_PARM_2
	mov	c,_init_GLCD_sloc0_1_0
	mov	_esc_glcd_PARM_3,c
	mov	dpl,#0x3f
	push	ar7
	lcall	_esc_glcd
	C$output_glcd.h$98$2$32 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:98: esc_glcd(0x40, CO, cs); // Y
	clr	_esc_glcd_PARM_2
	mov	c,_init_GLCD_sloc0_1_0
	mov	_esc_glcd_PARM_3,c
	mov	dpl,#0x40
	lcall	_esc_glcd
	C$output_glcd.h$99$2$32 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:99: esc_glcd(0xb8, CO, cs); // X
	clr	_esc_glcd_PARM_2
	mov	c,_init_GLCD_sloc0_1_0
	mov	_esc_glcd_PARM_3,c
	mov	dpl,#0xb8
	lcall	_esc_glcd
	C$output_glcd.h$100$2$32 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:100: esc_glcd(0xc0, CO, cs); // Z
	clr	_esc_glcd_PARM_2
	mov	c,_init_GLCD_sloc0_1_0
	mov	_esc_glcd_PARM_3,c
	mov	dpl,#0xc0
	lcall	_esc_glcd
	pop	ar7
	C$output_glcd.h$101$2$32 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:101: cs++;
	inc	r7
	sjmp	00104$
00107$:
	C$output_glcd.h$103$1$31 ==.
	XG$init_GLCD$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'conf_Y'
;------------------------------------------------------------
;y                         Allocated to registers r7 
;------------------------------------------------------------
	G$conf_Y$0$0 ==.
	C$output_glcd.h$105$1$31 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:105: void conf_Y(unsigned char y, __bit cs){
;	-----------------------------------------
;	 function conf_Y
;	-----------------------------------------
_conf_Y:
	mov	r7,dpl
	C$output_glcd.h$108$1$34 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:108: y &= 0x3f; // para limitar o valor de Y de 0 ate 63
	anl	ar7,#0x3f
	C$output_glcd.h$109$1$34 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:109: esc_glcd(0x40 | y, CO, cs);
	mov	a,#0x40
	orl	a,r7
	mov	dpl,a
	clr	_esc_glcd_PARM_2
	mov	c,_conf_Y_PARM_2
	mov	_esc_glcd_PARM_3,c
	lcall	_esc_glcd
	C$output_glcd.h$110$1$34 ==.
	XG$conf_Y$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'conf_pag'
;------------------------------------------------------------
;pag                       Allocated to registers r7 
;------------------------------------------------------------
	G$conf_pag$0$0 ==.
	C$output_glcd.h$113$1$34 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:113: void conf_pag(unsigned char pag, __bit cs){
;	-----------------------------------------
;	 function conf_pag
;	-----------------------------------------
_conf_pag:
	mov	r7,dpl
	C$output_glcd.h$116$1$36 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:116: pag &= 0x07; // Para limitar o valor de X de 0 ate 7
	anl	ar7,#0x07
	C$output_glcd.h$117$1$36 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:117: esc_glcd(0xb8 | pag, CO, cs);
	mov	a,#0xb8
	orl	a,r7
	mov	dpl,a
	clr	_esc_glcd_PARM_2
	mov	c,_conf_pag_PARM_2
	mov	_esc_glcd_PARM_3,c
	lcall	_esc_glcd
	C$output_glcd.h$118$1$36 ==.
	XG$conf_pag$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'limpa_glcd'
;------------------------------------------------------------
;x                         Allocated to registers r7 
;y                         Allocated to registers r6 
;------------------------------------------------------------
	G$limpa_glcd$0$0 ==.
	C$output_glcd.h$120$1$36 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:120: void limpa_glcd(__bit cs){
;	-----------------------------------------
;	 function limpa_glcd
;	-----------------------------------------
_limpa_glcd:
	C$output_glcd.h$125$1$38 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:125: for(x=0; x<8; x++){
	mov	r7,#0x00
00105$:
	C$output_glcd.h$126$2$39 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:126: conf_pag(x, cs);
	mov	c,_limpa_glcd_PARM_1
	mov	_conf_pag_PARM_2,c
	mov	dpl,r7
	push	ar7
	lcall	_conf_pag
	C$output_glcd.h$127$2$39 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:127: conf_Y(0, cs);
	mov	c,_limpa_glcd_PARM_1
	mov	_conf_Y_PARM_2,c
	mov	dpl,#0x00
	lcall	_conf_Y
	pop	ar7
	C$output_glcd.h$128$1$38 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:128: for(y=0; y<64; y++){
	mov	r6,#0x00
00103$:
	C$output_glcd.h$129$3$40 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:129: esc_glcd(0x00, DA, cs);
	setb	_esc_glcd_PARM_2
	mov	c,_limpa_glcd_PARM_1
	mov	_esc_glcd_PARM_3,c
	mov	dpl,#0x00
	push	ar7
	push	ar6
	lcall	_esc_glcd
	pop	ar6
	pop	ar7
	C$output_glcd.h$128$2$39 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:128: for(y=0; y<64; y++){
	inc	r6
	cjne	r6,#0x40,00120$
00120$:
	jc	00103$
	C$output_glcd.h$125$1$38 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:125: for(x=0; x<8; x++){
	inc	r7
	cjne	r7,#0x08,00122$
00122$:
	jc	00105$
	C$output_glcd.h$132$1$38 ==.
	XG$limpa_glcd$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'caractere_para_ascii'
;------------------------------------------------------------
;cod_ascii                 Allocated to registers r7 
;------------------------------------------------------------
	G$caractere_para_ascii$0$0 ==.
	C$output_glcd.h$134$1$38 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:134: unsigned char caractere_para_ascii(unsigned char cod_ascii){
;	-----------------------------------------
;	 function caractere_para_ascii
;	-----------------------------------------
_caractere_para_ascii:
	mov	r7,dpl
	C$output_glcd.h$137$1$42 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:137: if(cod_ascii >= 32 && cod_ascii <= 127){
	cjne	r7,#0x20,00118$
00118$:
	jc	00104$
	mov	a,r7
	add	a,#0xff - 0x7f
	jc	00104$
	C$output_glcd.h$138$2$43 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:138: return cod_ascii - 32;
	mov	a,r7
	add	a,#0xe0
	mov	dpl,a
	sjmp	00107$
00104$:
	C$output_glcd.h$139$1$42 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:139: }else if(cod_ascii == 176){
	cjne	r7,#0xb0,00105$
	C$output_glcd.h$140$2$44 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:140: return 96;
	mov	dpl,#0x60
	sjmp	00107$
00105$:
	C$output_glcd.h$142$1$42 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:142: return 0;
	mov	dpl,#0x00
00107$:
	C$output_glcd.h$143$1$42 ==.
	XG$caractere_para_ascii$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'escreve_caractere'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;linha                     Allocated to registers r7 
;------------------------------------------------------------
	G$escreve_caractere$0$0 ==.
	C$output_glcd.h$145$1$42 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:145: void escreve_caractere(char c, __bit cs){
;	-----------------------------------------
;	 function escreve_caractere
;	-----------------------------------------
_escreve_caractere:
	C$output_glcd.h$148$1$46 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:148: unsigned char linha = caractere_para_ascii(c);
	lcall	_caractere_para_ascii
	C$output_glcd.h$150$1$46 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:150: esc_glcd(fonte[linha][0], DA, cs);
	mov	a,dpl
	mov	b,#0x05
	mul	ab
	add	a,#_fonte
	mov	r6,a
	mov	a,#(_fonte >> 8)
	addc	a,b
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	setb	_esc_glcd_PARM_2
	mov	c,_escreve_caractere_PARM_2
	mov	_esc_glcd_PARM_3,c
	mov	dpl,r5
	push	ar7
	push	ar6
	lcall	_esc_glcd
	pop	ar6
	pop	ar7
	C$output_glcd.h$151$1$46 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:151: esc_glcd(fonte[linha][1], DA, cs);
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	setb	_esc_glcd_PARM_2
	mov	c,_escreve_caractere_PARM_2
	mov	_esc_glcd_PARM_3,c
	mov	dpl,r5
	push	ar7
	push	ar6
	lcall	_esc_glcd
	pop	ar6
	pop	ar7
	C$output_glcd.h$152$1$46 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:152: esc_glcd(fonte[linha][2], DA, cs);
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	setb	_esc_glcd_PARM_2
	mov	c,_escreve_caractere_PARM_2
	mov	_esc_glcd_PARM_3,c
	mov	dpl,r5
	push	ar7
	push	ar6
	lcall	_esc_glcd
	pop	ar6
	pop	ar7
	C$output_glcd.h$153$1$46 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:153: esc_glcd(fonte[linha][3], DA, cs);
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	setb	_esc_glcd_PARM_2
	mov	c,_escreve_caractere_PARM_2
	mov	_esc_glcd_PARM_3,c
	mov	dpl,r5
	push	ar7
	push	ar6
	lcall	_esc_glcd
	pop	ar6
	pop	ar7
	C$output_glcd.h$154$1$46 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:154: esc_glcd(fonte[linha][4], DA, cs);
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	setb	_esc_glcd_PARM_2
	mov	c,_escreve_caractere_PARM_2
	mov	_esc_glcd_PARM_3,c
	mov	dpl,r7
	lcall	_esc_glcd
	C$output_glcd.h$155$1$46 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:155: esc_glcd(0x00, DA, cs);
	setb	_esc_glcd_PARM_2
	mov	c,_escreve_caractere_PARM_2
	mov	_esc_glcd_PARM_3,c
	mov	dpl,#0x00
	lcall	_esc_glcd
	C$output_glcd.h$156$1$46 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:156: esc_glcd(0x00, DA, cs);
	setb	_esc_glcd_PARM_2
	mov	c,_escreve_caractere_PARM_2
	mov	_esc_glcd_PARM_3,c
	mov	dpl,#0x00
	lcall	_esc_glcd
	C$output_glcd.h$157$1$46 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:157: esc_glcd(0x00, DA, cs);
	setb	_esc_glcd_PARM_2
	mov	c,_escreve_caractere_PARM_2
	mov	_esc_glcd_PARM_3,c
	mov	dpl,#0x00
	lcall	_esc_glcd
	C$output_glcd.h$158$1$46 ==.
	XG$escreve_caractere$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
	G$putchar$0$0 ==.
	C$output_glcd.h$161$1$46 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:161: void putchar(char c){
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	r7,dpl
	C$output_glcd.h$164$1$48 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:164: WDTCN = 0xa5;
	mov	_WDTCN,#0xa5
	C$output_glcd.h$166$1$48 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:166: if(c<=8){
	mov	a,r7
	add	a,#0xff - 0x08
	jc	00112$
	C$output_glcd.h$167$2$49 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:167: conf_pag(c-1, ESQ);
	mov	a,r7
	dec	a
	mov	r6,a
	clr	_conf_pag_PARM_2
	mov	dpl,r6
	push	ar6
	lcall	_conf_pag
	C$output_glcd.h$168$2$49 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:168: conf_Y(0, ESQ);
	clr	_conf_Y_PARM_2
	mov	dpl,#0x00
	lcall	_conf_Y
	pop	ar6
	C$output_glcd.h$169$2$49 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:169: conf_pag(c-1, DIR);
	setb	_conf_pag_PARM_2
	mov	dpl,r6
	lcall	_conf_pag
	C$output_glcd.h$170$2$49 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:170: conf_Y(0, DIR);
	setb	_conf_Y_PARM_2
	mov	dpl,#0x00
	lcall	_conf_Y
	C$output_glcd.h$171$2$49 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:171: conta_caractere = 0;
	mov	_conta_caractere,#0x00
	C$output_glcd.h$172$2$49 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:172: terminal_ativo = 0;
	clr	_terminal_ativo
	sjmp	00114$
00112$:
	C$output_glcd.h$174$1$48 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:174: }else if(c == 9 || terminal_ativo == 1){
	cjne	r7,#0x09,00132$
	sjmp	00107$
00132$:
	jnb	_terminal_ativo,00108$
00107$:
	C$output_glcd.h$175$2$50 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:175: terminal_ativo = 1;
	setb	_terminal_ativo
	C$output_glcd.h$176$2$50 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:176: SBUF0 = c;
	mov	_SBUF0,r7
	C$output_glcd.h$177$2$50 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:177: while(TI0==0);
00101$:
	C$output_glcd.h$178$2$50 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:178: TI0 = 0;
	jbc	_TI0,00114$
	sjmp	00101$
00108$:
	C$output_glcd.h$181$2$51 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:181: if(conta_caractere<8){
	mov	a,#0x100 - 0x08
	add	a,_conta_caractere
	C$output_glcd.h$182$3$52 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:182: lado = ESQ;
	C$output_glcd.h$184$3$53 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:184: lado = DIR;
	mov	_putchar_lado_1_48,c
	C$output_glcd.h$187$2$51 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:187: escreve_caractere(c, lado);
	mov	c,_putchar_lado_1_48
	mov	_escreve_caractere_PARM_2,c
	mov	dpl,r7
	lcall	_escreve_caractere
	C$output_glcd.h$188$2$51 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:188: conta_caractere++;
	inc	_conta_caractere
00114$:
	C$output_glcd.h$190$1$48 ==.
	XG$putchar$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setup'
;------------------------------------------------------------
	G$setup$0$0 ==.
	C$output_glcd.h$192$1$48 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:192: void setup(void){
;	-----------------------------------------
;	 function setup
;	-----------------------------------------
_setup:
	C$output_glcd.h$193$1$55 ==.
;	C:\Users\202019050169\Downloads\trabalho\/output_glcd.h:193: SFRPAGE=LEGACY_PAGE;
	mov	_SFRPAGE,#0x00
	C$output_glcd.h$194$1$55 ==.
	XG$setup$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;t                         Allocated to registers r6 r7 
;------------------------------------------------------------
	G$delay_ms$0$0 ==.
	C$delay.h$6$1$55 ==.
;	C:\Users\202019050169\Downloads\trabalho\/delay.h:6: void delay_ms(unsigned int t){
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	mov	r6,dpl
	mov	r7,dph
	C$delay.h$7$1$57 ==.
;	C:\Users\202019050169\Downloads\trabalho\/delay.h:7: TMOD |= 0x01;
	orl	_TMOD,#0x01
	C$delay.h$8$1$57 ==.
;	C:\Users\202019050169\Downloads\trabalho\/delay.h:8: TMOD &= ~0x02;
	anl	_TMOD,#0xfd
00106$:
	C$delay.h$9$1$57 ==.
;	C:\Users\202019050169\Downloads\trabalho\/delay.h:9: for(;t>0;t--){
	mov	a,r6
	orl	a,r7
	jz	00108$
	C$delay.h$10$2$58 ==.
;	C:\Users\202019050169\Downloads\trabalho\/delay.h:10: WDTCN = 0xa5;
	mov	_WDTCN,#0xa5
	C$delay.h$11$2$58 ==.
;	C:\Users\202019050169\Downloads\trabalho\/delay.h:11: TR0 = 0;
	clr	_TR0
	C$delay.h$12$2$58 ==.
;	C:\Users\202019050169\Downloads\trabalho\/delay.h:12: TF0 = 0;
	clr	_TF0
	C$delay.h$13$2$58 ==.
;	C:\Users\202019050169\Downloads\trabalho\/delay.h:13: TL0 = 0x58;
	mov	_TL0,#0x58
	C$delay.h$14$2$58 ==.
;	C:\Users\202019050169\Downloads\trabalho\/delay.h:14: TH0 = 0x9E;
	mov	_TH0,#0x9e
	C$delay.h$15$2$58 ==.
;	C:\Users\202019050169\Downloads\trabalho\/delay.h:15: TR0 = 1;
	setb	_TR0
	C$delay.h$16$2$58 ==.
;	C:\Users\202019050169\Downloads\trabalho\/delay.h:16: while(TF0 == 0);
00101$:
	jnb	_TF0,00101$
	C$delay.h$9$1$57 ==.
;	C:\Users\202019050169\Downloads\trabalho\/delay.h:9: for(;t>0;t--){
	dec	r6
	cjne	r6,#0xff,00127$
	dec	r7
00127$:
	sjmp	00106$
00108$:
	C$delay.h$18$1$57 ==.
	XG$delay_ms$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_us'
;------------------------------------------------------------
;t                         Allocated to registers r6 r7 
;------------------------------------------------------------
	G$delay_us$0$0 ==.
	C$delay.h$20$1$57 ==.
;	C:\Users\202019050169\Downloads\trabalho\/delay.h:20: void delay_us(unsigned int t){
;	-----------------------------------------
;	 function delay_us
;	-----------------------------------------
_delay_us:
	mov	r6,dpl
	mov	r7,dph
	C$delay.h$21$1$60 ==.
;	C:\Users\202019050169\Downloads\trabalho\/delay.h:21: TMOD |= 0X02;
	orl	_TMOD,#0x02
	C$delay.h$22$1$60 ==.
;	C:\Users\202019050169\Downloads\trabalho\/delay.h:22: TMOD &= ~0X01;
	anl	_TMOD,#0xfe
	C$delay.h$23$1$60 ==.
;	C:\Users\202019050169\Downloads\trabalho\/delay.h:23: TR0 = 0;
	clr	_TR0
	C$delay.h$24$1$60 ==.
;	C:\Users\202019050169\Downloads\trabalho\/delay.h:24: TF0 = 0;
	clr	_TF0
	C$delay.h$25$1$60 ==.
;	C:\Users\202019050169\Downloads\trabalho\/delay.h:25: TL0 = 0xE7;
	mov	_TL0,#0xe7
	C$delay.h$26$1$60 ==.
;	C:\Users\202019050169\Downloads\trabalho\/delay.h:26: TH0 = 0xE7;
	mov	_TH0,#0xe7
	C$delay.h$27$1$60 ==.
;	C:\Users\202019050169\Downloads\trabalho\/delay.h:27: TR0 = 1;
	setb	_TR0
00106$:
	C$delay.h$28$1$60 ==.
;	C:\Users\202019050169\Downloads\trabalho\/delay.h:28: for(;t>0;t--){
	mov	a,r6
	orl	a,r7
	jz	00108$
	C$delay.h$29$2$61 ==.
;	C:\Users\202019050169\Downloads\trabalho\/delay.h:29: WDTCN = 0xa5;
	mov	_WDTCN,#0xa5
	C$delay.h$30$2$61 ==.
;	C:\Users\202019050169\Downloads\trabalho\/delay.h:30: while(TF0 == 0);
00101$:
	C$delay.h$31$2$61 ==.
;	C:\Users\202019050169\Downloads\trabalho\/delay.h:31: TF0 = 0;
	jbc	_TF0,00126$
	sjmp	00101$
00126$:
	C$delay.h$28$1$60 ==.
;	C:\Users\202019050169\Downloads\trabalho\/delay.h:28: for(;t>0;t--){
	dec	r6
	cjne	r6,#0xff,00127$
	dec	r7
00127$:
	sjmp	00106$
00108$:
	C$delay.h$34$1$60 ==.
	XG$delay_us$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'esc_RAM_SPI'
;------------------------------------------------------------
;dado                      Allocated with name '_esc_RAM_SPI_PARM_2'
;end                       Allocated to registers r6 r7 
;end_l                     Allocated to registers r5 
;end_h                     Allocated to registers r7 
;------------------------------------------------------------
	G$esc_RAM_SPI$0$0 ==.
	C$mem_spi.h$17$1$60 ==.
;	C:\Users\202019050169\Downloads\trabalho\/mem_spi.h:17: void esc_RAM_SPI(unsigned int end, unsigned char dado){
;	-----------------------------------------
;	 function esc_RAM_SPI
;	-----------------------------------------
_esc_RAM_SPI:
	mov	r6,dpl
	mov	r7,dph
	C$mem_spi.h$18$1$60 ==.
;	C:\Users\202019050169\Downloads\trabalho\/mem_spi.h:18: unsigned char end_l = end, end_h = end>>8;
	mov	ar5,r6
	C$mem_spi.h$20$1$63 ==.
;	C:\Users\202019050169\Downloads\trabalho\/mem_spi.h:20: CS = LO;
	clr	_P2_3
	C$mem_spi.h$22$1$63 ==.
;	C:\Users\202019050169\Downloads\trabalho\/mem_spi.h:22: SPI0DAT = 0x02;
	mov	_SPI0DAT,#0x02
	C$mem_spi.h$23$1$63 ==.
;	C:\Users\202019050169\Downloads\trabalho\/mem_spi.h:23: while(TXBMT==0); // Espera o shift dos 16 bits serem shiftados
00101$:
	jnb	_TXBMT,00101$
	C$mem_spi.h$25$1$63 ==.
;	C:\Users\202019050169\Downloads\trabalho\/mem_spi.h:25: SPI0DAT = end_h;
	mov	_SPI0DAT,r7
	C$mem_spi.h$26$1$63 ==.
;	C:\Users\202019050169\Downloads\trabalho\/mem_spi.h:26: while(TXBMT==0);
00104$:
	jnb	_TXBMT,00104$
	C$mem_spi.h$28$1$63 ==.
;	C:\Users\202019050169\Downloads\trabalho\/mem_spi.h:28: SPI0DAT = end_l;
	mov	_SPI0DAT,r5
	C$mem_spi.h$29$1$63 ==.
;	C:\Users\202019050169\Downloads\trabalho\/mem_spi.h:29: while(TXBMT==0);
00107$:
	jnb	_TXBMT,00107$
	C$mem_spi.h$31$1$63 ==.
;	C:\Users\202019050169\Downloads\trabalho\/mem_spi.h:31: SPI0DAT = dado;
	mov	_SPI0DAT,_esc_RAM_SPI_PARM_2
	C$mem_spi.h$32$1$63 ==.
;	C:\Users\202019050169\Downloads\trabalho\/mem_spi.h:32: while(TXBMT==0);
00110$:
	jnb	_TXBMT,00110$
	C$mem_spi.h$34$1$63 ==.
;	C:\Users\202019050169\Downloads\trabalho\/mem_spi.h:34: SPIF = 0; // Reseta valor para receber bit flag
	clr	_SPIF
	C$mem_spi.h$35$1$63 ==.
;	C:\Users\202019050169\Downloads\trabalho\/mem_spi.h:35: while(SPIF==0); // Aguarda a sinalizacao do bit flag do fim da instrucao
00113$:
	C$mem_spi.h$36$1$63 ==.
;	C:\Users\202019050169\Downloads\trabalho\/mem_spi.h:36: SPIF = 0; // Reseta valor para receber bit flag
	jbc	_SPIF,00152$
	sjmp	00113$
00152$:
	C$mem_spi.h$38$1$63 ==.
;	C:\Users\202019050169\Downloads\trabalho\/mem_spi.h:38: CS = 1;
	setb	_P2_3
	C$mem_spi.h$39$1$63 ==.
	XG$esc_RAM_SPI$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'le_RAM_SPI'
;------------------------------------------------------------
;end                       Allocated to registers r6 r7 
;end_l                     Allocated to registers r5 
;end_h                     Allocated to registers r7 
;------------------------------------------------------------
	G$le_RAM_SPI$0$0 ==.
	C$mem_spi.h$41$1$63 ==.
;	C:\Users\202019050169\Downloads\trabalho\/mem_spi.h:41: unsigned char le_RAM_SPI(unsigned int end){
;	-----------------------------------------
;	 function le_RAM_SPI
;	-----------------------------------------
_le_RAM_SPI:
	mov	r6,dpl
	mov	r7,dph
	C$mem_spi.h$42$1$63 ==.
;	C:\Users\202019050169\Downloads\trabalho\/mem_spi.h:42: unsigned char end_l = end, end_h = end>>8;
	mov	ar5,r6
	C$mem_spi.h$44$1$65 ==.
;	C:\Users\202019050169\Downloads\trabalho\/mem_spi.h:44: CS = LO;
	clr	_P2_3
	C$mem_spi.h$46$1$65 ==.
;	C:\Users\202019050169\Downloads\trabalho\/mem_spi.h:46: SPI0DAT = 0x03; 
	mov	_SPI0DAT,#0x03
	C$mem_spi.h$47$1$65 ==.
;	C:\Users\202019050169\Downloads\trabalho\/mem_spi.h:47: while(TXBMT==0); // Espera o shift dos 16 bits serem shiftados
00101$:
	jnb	_TXBMT,00101$
	C$mem_spi.h$49$1$65 ==.
;	C:\Users\202019050169\Downloads\trabalho\/mem_spi.h:49: SPI0DAT = end_h;
	mov	_SPI0DAT,r7
	C$mem_spi.h$50$1$65 ==.
;	C:\Users\202019050169\Downloads\trabalho\/mem_spi.h:50: while(TXBMT==0);
00104$:
	jnb	_TXBMT,00104$
	C$mem_spi.h$52$1$65 ==.
;	C:\Users\202019050169\Downloads\trabalho\/mem_spi.h:52: SPI0DAT = end_l;
	mov	_SPI0DAT,r5
	C$mem_spi.h$53$1$65 ==.
;	C:\Users\202019050169\Downloads\trabalho\/mem_spi.h:53: while(TXBMT==0);
00107$:
	jnb	_TXBMT,00107$
	C$mem_spi.h$55$1$65 ==.
;	C:\Users\202019050169\Downloads\trabalho\/mem_spi.h:55: SPI0DAT = 0x00; // Garantir que o dado foi zerado. Limpar a memoria de dados flash
	mov	_SPI0DAT,#0x00
	C$mem_spi.h$56$1$65 ==.
;	C:\Users\202019050169\Downloads\trabalho\/mem_spi.h:56: while(TXBMT==0);
00110$:
	jnb	_TXBMT,00110$
	C$mem_spi.h$58$1$65 ==.
;	C:\Users\202019050169\Downloads\trabalho\/mem_spi.h:58: SPIF = 0;
	clr	_SPIF
	C$mem_spi.h$59$1$65 ==.
;	C:\Users\202019050169\Downloads\trabalho\/mem_spi.h:59: while(SPIF==0);
00113$:
	C$mem_spi.h$60$1$65 ==.
;	C:\Users\202019050169\Downloads\trabalho\/mem_spi.h:60: SPIF = 0;
	jbc	_SPIF,00152$
	sjmp	00113$
00152$:
	C$mem_spi.h$62$1$65 ==.
;	C:\Users\202019050169\Downloads\trabalho\/mem_spi.h:62: CS = 1;
	setb	_P2_3
	C$mem_spi.h$64$1$65 ==.
;	C:\Users\202019050169\Downloads\trabalho\/mem_spi.h:64: return SPI0DAT;
	mov	dpl,_SPI0DAT
	C$mem_spi.h$65$1$65 ==.
	XG$le_RAM_SPI$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'verifica_RAM_SPI'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;aux                       Allocated to registers r3 
;------------------------------------------------------------
	G$verifica_RAM_SPI$0$0 ==.
	C$mem_spi.h$67$1$65 ==.
;	C:\Users\202019050169\Downloads\trabalho\/mem_spi.h:67: unsigned char verifica_RAM_SPI(void){
;	-----------------------------------------
;	 function verifica_RAM_SPI
;	-----------------------------------------
_verifica_RAM_SPI:
	C$mem_spi.h$73$1$67 ==.
;	C:\Users\202019050169\Downloads\trabalho\/mem_spi.h:73: for(i=0; i<8192; i++){
	mov	r6,#0x00
	mov	r7,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
00104$:
	C$mem_spi.h$74$2$68 ==.
;	C:\Users\202019050169\Downloads\trabalho\/mem_spi.h:74: esc_RAM_SPI(i, 170);
	mov	_esc_RAM_SPI_PARM_2,#0xaa
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_esc_RAM_SPI
	pop	ar4
	pop	ar5
	C$mem_spi.h$75$2$68 ==.
;	C:\Users\202019050169\Downloads\trabalho\/mem_spi.h:75: aux = le_RAM_SPI(i);
	mov	dpl,r4
	mov	dph,r5
	push	ar5
	push	ar4
	lcall	_le_RAM_SPI
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$mem_spi.h$77$2$68 ==.
;	C:\Users\202019050169\Downloads\trabalho\/mem_spi.h:77: if(aux != 170){
	cjne	r3,#0xaa,00117$
	sjmp	00102$
00117$:
	C$mem_spi.h$78$3$69 ==.
;	C:\Users\202019050169\Downloads\trabalho\/mem_spi.h:78: printf_fast_f("\x02 ERRO: mem=%05d",i);
	push	ar6
	push	ar7
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	C$mem_spi.h$79$3$69 ==.
;	C:\Users\202019050169\Downloads\trabalho\/mem_spi.h:79: return 0; //erro em um endereco
	mov	dpl,#0x00
	sjmp	00106$
00102$:
	C$mem_spi.h$81$2$68 ==.
;	C:\Users\202019050169\Downloads\trabalho\/mem_spi.h:81: printf_fast_f("\x02 i = %05d",i);
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	C$mem_spi.h$73$1$67 ==.
;	C:\Users\202019050169\Downloads\trabalho\/mem_spi.h:73: for(i=0; i<8192; i++){
	inc	r4
	cjne	r4,#0x00,00118$
	inc	r5
00118$:
	mov	ar6,r4
	mov	ar7,r5
	mov	a,#0x100 - 0x20
	add	a,r5
	jnc	00104$
	C$mem_spi.h$84$1$67 ==.
;	C:\Users\202019050169\Downloads\trabalho\/mem_spi.h:84: return 1; //tudo certo
	mov	dpl,#0x01
00106$:
	C$mem_spi.h$85$1$67 ==.
	XG$verifica_RAM_SPI$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ligar_buzzer'
;------------------------------------------------------------
;ciclos                    Allocated to registers r6 r7 
;meio_periodo              Allocated to registers 
;------------------------------------------------------------
	G$ligar_buzzer$0$0 ==.
	C$main.c$49$1$67 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:49: void ligar_buzzer(){
;	-----------------------------------------
;	 function ligar_buzzer
;	-----------------------------------------
_ligar_buzzer:
	C$main.c$55$1$75 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:55: while(ciclos){
	mov	r6,#0x03
	mov	r7,#0x00
00101$:
	mov	a,r6
	orl	a,r7
	jz	00103$
	C$main.c$56$2$76 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:56: buzzer = 0;
	clr	_P3_5
	C$main.c$57$2$76 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:57: delay_ms(meio_periodo);
	mov	dptr,#0x01f4
	push	ar7
	push	ar6
	lcall	_delay_ms
	C$main.c$58$2$76 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:58: buzzer = 1;
	setb	_P3_5
	C$main.c$59$2$76 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:59: delay_ms(meio_periodo);
	mov	dptr,#0x01f4
	lcall	_delay_ms
	pop	ar6
	pop	ar7
	C$main.c$60$2$76 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:60: ciclos--;
	dec	r6
	cjne	r6,#0xff,00114$
	dec	r7
00114$:
	sjmp	00101$
00103$:
	C$main.c$63$1$75 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:63: buzzer = 0;
	clr	_P3_5
	C$main.c$64$1$75 ==.
	XG$ligar_buzzer$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'resetar_tempo'
;------------------------------------------------------------
;tecla                     Allocated to registers r6 r7 
;------------------------------------------------------------
	G$resetar_tempo$0$0 ==.
	C$main.c$74$1$75 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:74: void resetar_tempo(int tecla) {
;	-----------------------------------------
;	 function resetar_tempo
;	-----------------------------------------
_resetar_tempo:
	mov	r6,dpl
	mov	r7,dph
	C$main.c$75$1$78 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:75: if(tecla == CANCELAR) {
	cjne	r6,#0xff,00103$
	cjne	r7,#0xff,00103$
	C$main.c$76$2$79 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:76: definir_tempo_botao();
	lcall	_definir_tempo_botao
00103$:
	C$main.c$78$1$78 ==.
	XG$resetar_tempo$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'definir_tempo_botao'
;------------------------------------------------------------
;tempoReal                 Allocated to registers 
;m1                        Allocated to registers r6 r7 
;m2                        Allocated to registers r4 r5 
;s1                        Allocated to registers r2 r3 
;s2                        Allocated to registers r0 r1 
;------------------------------------------------------------
	G$definir_tempo_botao$0$0 ==.
	C$main.c$85$1$78 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:85: int definir_tempo_botao() {
;	-----------------------------------------
;	 function definir_tempo_botao
;	-----------------------------------------
_definir_tempo_botao:
	C$main.c$92$1$80 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:92: limpa_glcd(ESQ);
	clr	_limpa_glcd_PARM_1
	lcall	_limpa_glcd
	C$main.c$93$1$80 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:93: limpa_glcd(DIR);
	setb	_limpa_glcd_PARM_1
	lcall	_limpa_glcd
	C$main.c$94$1$80 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:94: conf_pag(0, ESQ);
	clr	_conf_pag_PARM_2
	mov	dpl,#0x00
	lcall	_conf_pag
	C$main.c$95$1$80 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:95: conf_pag(0, DIR);
	setb	_conf_pag_PARM_2
	mov	dpl,#0x00
	lcall	_conf_pag
	C$main.c$97$1$80 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:97: printf_fast_f("\x02 T: %d %d %d %d", m1, m2, s1, s2); // Feedback visual ou mensagem
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
	C$main.c$98$1$80 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:98: m1 = le_tec() * 10;
	lcall	_le_tec
	mov	a,dpl
	mov	b,#0x0a
	mul	ab
	mov	r6,a
	mov	r7,b
	C$main.c$99$1$80 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:99: resetar_tempo(m1);
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_resetar_tempo
	pop	ar6
	pop	ar7
	C$main.c$101$1$80 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:101: printf_fast_f("\x02 T: %d %d %d %d", m1, m2, s1, s2); // Feedback visual ou mensagem
	push	ar7
	push	ar6
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	push	ar6
	push	ar7
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
	C$main.c$102$1$80 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:102: m2 = le_tec();
	lcall	_le_tec
	C$main.c$103$1$80 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:103: resetar_tempo(m2);
	mov	r4,dpl
	mov	r5,#0x00
	mov	dph,r5
	push	ar5
	push	ar4
	lcall	_resetar_tempo
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$main.c$105$1$80 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:105: printf_fast_f("\x02 T: %d %d %d %d", m1, m2, s1, s2); // Feedback visual ou mensagem
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
	C$main.c$106$1$80 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:106: s1 = le_tec() * 10;
	lcall	_le_tec
	mov	a,dpl
	mov	b,#0x0a
	mul	ab
	mov	r2,a
	mov	r3,b
	C$main.c$107$1$80 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:107: resetar_tempo(s1);
	mov	dpl,r2
	mov	dph,r3
	push	ar3
	push	ar2
	lcall	_resetar_tempo
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$main.c$108$1$80 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:108: if(s1 > 50)	s1 = 50;
	clr	c
	mov	a,#0x32
	subb	a,r2
	mov	a,#(0x00 ^ 0x80)
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	00102$
	mov	r2,#0x32
	mov	r3,#0x00
00102$:
	C$main.c$110$1$80 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:110: printf_fast_f("\x02 T: %d %d %d %d", m1, m2, s1, s2); // Feedback visual ou mensagem
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	clr	a
	push	acc
	push	acc
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
	C$main.c$111$1$80 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:111: s2 = le_tec();
	lcall	_le_tec
	mov	r0,dpl
	mov	r1,#0x00
	C$main.c$112$1$80 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:112: resetar_tempo(s2);
	mov	dpl,r0
	mov	dph,r1
	push	ar1
	push	ar0
	lcall	_resetar_tempo
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$main.c$114$1$80 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:114: printf_fast_f("\x02 T: %d %d %d %d", m1, m2, s1, s2); // Feedback visual ou mensagem
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$main.c$116$1$80 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:116: tempoReal = ((m1 + m2) * 60) + (s1 + s2);
	mov	a,r4
	add	a,r6
	mov	__mulint_PARM_2,a
	mov	a,r5
	addc	a,r7
	mov	(__mulint_PARM_2 + 1),a
	mov	dptr,#0x003c
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	mov	a,r0
	add	a,r2
	mov	r2,a
	mov	a,r1
	addc	a,r3
	mov	r3,a
	mov	a,r2
	add	a,r6
	mov	dpl,a
	mov	a,r3
	addc	a,r7
	mov	dph,a
	C$main.c$117$1$80 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:117: return tempoReal;
	C$main.c$119$1$80 ==.
	XG$definir_tempo_botao$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'definir_tempo_bluetooth'
;------------------------------------------------------------
;tempoReal                 Allocated to registers r6 r7 
;------------------------------------------------------------
	G$definir_tempo_bluetooth$0$0 ==.
	C$main.c$128$1$80 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:128: int definir_tempo_bluetooth() {
;	-----------------------------------------
;	 function definir_tempo_bluetooth
;	-----------------------------------------
_definir_tempo_bluetooth:
	C$main.c$130$1$81 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:130: int tempoReal = (int)TECLA;
	mov	r6,_TECLA
	mov	r7,#0x00
	C$main.c$132$1$81 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:132: limpa_glcd(ESQ);
	clr	_limpa_glcd_PARM_1
	push	ar7
	push	ar6
	lcall	_limpa_glcd
	C$main.c$133$1$81 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:133: limpa_glcd(DIR);
	setb	_limpa_glcd_PARM_1
	lcall	_limpa_glcd
	C$main.c$134$1$81 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:134: conf_pag(0, ESQ);
	clr	_conf_pag_PARM_2
	mov	dpl,#0x00
	lcall	_conf_pag
	C$main.c$135$1$81 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:135: conf_pag(0, DIR);
	setb	_conf_pag_PARM_2
	mov	dpl,#0x00
	lcall	_conf_pag
	pop	ar6
	pop	ar7
	C$main.c$137$1$81 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:137: printf_fast_f("Tempo %d:", tempoReal);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
	C$main.c$139$1$81 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:139: return tempoReal;
	mov	dpl,r6
	mov	dph,r7
	C$main.c$141$1$81 ==.
	XG$definir_tempo_bluetooth$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'escolher_entrada'
;------------------------------------------------------------
;tecla_menu                Allocated to registers r6 r7 
;tempo_digital             Allocated to registers r4 r6 
;------------------------------------------------------------
	G$escolher_entrada$0$0 ==.
	C$main.c$150$1$81 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:150: void escolher_entrada() {
;	-----------------------------------------
;	 function escolher_entrada
;	-----------------------------------------
_escolher_entrada:
	C$main.c$154$1$82 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:154: limpa_glcd(ESQ);
	clr	_limpa_glcd_PARM_1
	lcall	_limpa_glcd
	C$main.c$155$1$82 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:155: limpa_glcd(DIR);
	setb	_limpa_glcd_PARM_1
	lcall	_limpa_glcd
	C$main.c$156$1$82 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:156: conf_pag(0, ESQ);
	clr	_conf_pag_PARM_2
	mov	dpl,#0x00
	lcall	_conf_pag
	C$main.c$157$1$82 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:157: conf_pag(0, DIR);
	setb	_conf_pag_PARM_2
	mov	dpl,#0x00
	lcall	_conf_pag
	C$main.c$159$1$82 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:159: printf_fast_f("\x01 Selecione o");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	C$main.c$160$1$82 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:160: printf_fast_f("\x02 tipo entrada:");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	C$main.c$161$1$82 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:161: printf_fast_f("\x04 a - Manual");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	C$main.c$162$1$82 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:162: printf_fast_f("\x05 b - Digital");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	C$main.c$164$1$82 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:164: tecla_menu = 0;
	mov	r6,#0x00
	mov	r7,#0x00
	C$main.c$166$1$82 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:166: while(tecla_menu != MENU_MANUAL || tecla_menu != MENU_DIGITAL) {
00102$:
	cjne	r6,#0x64,00103$
	cjne	r7,#0x00,00103$
	cjne	r6,#0x65,00131$
	cjne	r7,#0x00,00131$
	sjmp	00104$
00131$:
00103$:
	C$main.c$167$2$83 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:167: tecla_menu = le_tec();
	lcall	_le_tec
	mov	r5,dpl
	mov	ar6,r5
	mov	r7,#0x00
	sjmp	00102$
00104$:
	C$main.c$170$1$82 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:170: printf_fast_f("\x06 Tudo pronto!!");
	push	ar7
	push	ar6
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
	C$main.c$172$2$84 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:172: while(1)
	clr	a
	cjne	r6,#0x65,00132$
	cjne	r7,#0x00,00132$
	inc	a
00132$:
	mov	r5,a
	clr	a
	cjne	r6,#0x64,00134$
	cjne	r7,#0x00,00134$
	inc	a
00134$:
	mov	r7,a
00110$:
	C$main.c$175$2$84 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:175: if(tecla_menu==MENU_MANUAL)
	mov	a,r7
	jz	00106$
	C$main.c$177$3$85 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:177: tempo_digital = definir_tempo_botao();
	lcall	_definir_tempo_botao
	C$main.c$178$3$85 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:178: contagemRegressiva(tempo_digital);
	lcall	_contagemRegressiva
	C$main.c$179$3$85 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:179: break;
	sjmp	00112$
00106$:
	C$main.c$182$2$84 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:182: if(tecla_menu==MENU_DIGITAL)
	mov	a,r5
	jz	00110$
	C$main.c$184$3$86 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:184: tempo_digital = definir_tempo_bluetooth();
	lcall	_definir_tempo_bluetooth
	C$main.c$185$3$86 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:185: contagemRegressiva(tempo_digital);
	lcall	_contagemRegressiva
	C$main.c$186$1$82 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:186: break;
00112$:
	C$main.c$193$1$82 ==.
	XG$escolher_entrada$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_ISR'
;------------------------------------------------------------
	G$uart_ISR$0$0 ==.
	C$main.c$203$1$82 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:203: void uart_ISR() __interrupt 4{
;	-----------------------------------------
;	 function uart_ISR
;	-----------------------------------------
_uart_ISR:
	C$main.c$205$1$87 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:205: if(RI0 == 1){
	jnb	_RI0,00103$
	C$main.c$206$2$88 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:206: x = 1;
	setb	_x
	C$main.c$207$2$88 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:207: tecla = SBUF0;
	mov	_tecla,_SBUF0
	C$main.c$208$2$88 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:208: RI0 = 0;
	clr	_RI0
00103$:
	C$main.c$210$1$87 ==.
	XG$uart_ISR$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'le_tec'
;------------------------------------------------------------
	G$le_tec$0$0 ==.
	C$main.c$219$1$87 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:219: unsigned char le_tec(void){
;	-----------------------------------------
;	 function le_tec
;	-----------------------------------------
_le_tec:
	C$main.c$221$1$90 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:221: if(P3_0==0)
	jb	_P3_0,00122$
	C$main.c$222$1$90 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:222: return 0;
	mov	dpl,#0x00
	sjmp	00124$
00122$:
	C$main.c$223$1$90 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:223: else if(P3_1==0)
	jb	_P3_1,00119$
	C$main.c$224$1$90 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:224: return 1;
	mov	dpl,#0x01
	sjmp	00124$
00119$:
	C$main.c$225$1$90 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:225: else if(P3_2==0)
	jb	_P3_2,00116$
	C$main.c$226$1$90 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:226: return 2;
	mov	dpl,#0x02
	sjmp	00124$
00116$:
	C$main.c$227$1$90 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:227: else if(P3_3==0)
	jb	_P3_3,00113$
	C$main.c$228$1$90 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:228: return 3;
	mov	dpl,#0x03
	sjmp	00124$
00113$:
	C$main.c$229$1$90 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:229: else if(P3_4==0)
	jb	_P3_4,00110$
	C$main.c$230$1$90 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:230: return 4;
	mov	dpl,#0x04
	sjmp	00124$
00110$:
	C$main.c$231$1$90 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:231: else if(P3_5==0)
	jb	_P3_5,00107$
	C$main.c$232$1$90 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:232: return 5;
	mov	dpl,#0x05
	sjmp	00124$
00107$:
	C$main.c$233$1$90 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:233: else if(P3_6==0)
	jb	_P3_6,00104$
	C$main.c$234$1$90 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:234: return 6;
	mov	dpl,#0x06
	sjmp	00124$
00104$:
	C$main.c$235$1$90 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:235: else if(P3_7==0)
	jb	_P3_7,00108$
	C$main.c$236$1$90 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:236: return 7;
	mov	dpl,#0x07
	sjmp	00124$
00108$:
	C$main.c$237$1$90 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:237: return TECS_OPEN;
	mov	dpl,#0xff
00124$:
	C$main.c$239$1$90 ==.
	XG$le_tec$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'limpa_tela'
;------------------------------------------------------------
	G$limpa_tela$0$0 ==.
	C$main.c$249$1$90 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:249: void limpa_tela() {
;	-----------------------------------------
;	 function limpa_tela
;	-----------------------------------------
_limpa_tela:
	C$main.c$250$1$91 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:250: limpa_glcd(ESQ);
	clr	_limpa_glcd_PARM_1
	lcall	_limpa_glcd
	C$main.c$251$1$91 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:251: limpa_glcd(DIR);
	setb	_limpa_glcd_PARM_1
	lcall	_limpa_glcd
	C$main.c$252$1$91 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:252: conf_pag(0, ESQ);
	clr	_conf_pag_PARM_2
	mov	dpl,#0x00
	lcall	_conf_pag
	C$main.c$253$1$91 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:253: conf_pag(0, DIR);
	setb	_conf_pag_PARM_2
	mov	dpl,#0x00
	lcall	_conf_pag
	C$main.c$254$1$91 ==.
	XG$limpa_tela$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'contagemRegressiva'
;------------------------------------------------------------
;tempoTotal                Allocated to registers r6 r7 
;minutos                   Allocated to registers r4 r5 
;segundos                  Allocated to registers r2 r3 
;tempoRestante             Allocated to registers r6 r7 
;------------------------------------------------------------
	G$contagemRegressiva$0$0 ==.
	C$main.c$263$1$91 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:263: void contagemRegressiva(int tempoTotal) {
;	-----------------------------------------
;	 function contagemRegressiva
;	-----------------------------------------
_contagemRegressiva:
	mov	r6,dpl
	mov	r7,dph
	C$main.c$268$1$93 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:268: MOTOR = 0; // RELE ? ao Contr?rio
	clr	_P3_7
	C$main.c$269$1$93 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:269: MICROONDAS = 1;		
	setb	_P3_6
	C$main.c$271$1$93 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:271: limpa_glcd(ESQ);
	clr	_limpa_glcd_PARM_1
	push	ar7
	push	ar6
	lcall	_limpa_glcd
	C$main.c$272$1$93 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:272: limpa_glcd(DIR);
	setb	_limpa_glcd_PARM_1
	lcall	_limpa_glcd
	C$main.c$273$1$93 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:273: conf_pag(0, ESQ);
	clr	_conf_pag_PARM_2
	mov	dpl,#0x00
	lcall	_conf_pag
	C$main.c$274$1$93 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:274: conf_pag(0, DIR);
	setb	_conf_pag_PARM_2
	mov	dpl,#0x00
	lcall	_conf_pag
	pop	ar6
	pop	ar7
	C$main.c$276$2$94 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:276: while (tempoRestante >= 0) {
00101$:
	mov	a,r7
	jnb	acc.7,00113$
	ljmp	00103$
00113$:
	C$main.c$277$1$93 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:277: minutos = tempoRestante / 60;
	mov	__divsint_PARM_2,#0x3c
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__divsint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	C$main.c$278$1$93 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:278: segundos = tempoRestante % 60;
	mov	__modsint_PARM_2,#0x3c
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__modsint
	mov	r2,dpl
	mov	r3,dph
	C$main.c$280$2$94 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:280: printf_fast_f("\x01 Start Timer..");
	push	ar3
	push	ar2
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	C$main.c$281$2$94 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:281: printf_fast_f("\x02 %02d:%02d", minutos, segundos);
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar6
	C$main.c$282$2$94 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:282: esc_RAM_SPI(ENDERECO, tempoRestante);
	mov	_esc_RAM_SPI_PARM_2,r6
	mov	dptr,#0x0001
	push	ar6
	lcall	_esc_RAM_SPI
	C$main.c$283$2$94 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:283: delay_ms(1000); // Espera 1 segundo
	mov	dptr,#0x03e8
	lcall	_delay_ms
	pop	ar6
	pop	ar7
	C$main.c$284$2$94 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:284: tempoRestante--;
	dec	r6
	cjne	r6,#0xff,00114$
	dec	r7
00114$:
	ljmp	00101$
00103$:
	C$main.c$287$1$93 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:287: MOTOR = 1;
	setb	_P3_7
	C$main.c$288$1$93 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:288: MICROONDAS = 0;
	clr	_P3_6
	C$main.c$290$1$93 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:290: ligar_buzzer();
	lcall	_ligar_buzzer
	C$main.c$291$1$93 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:291: printf_fast_f("\x07 Pronto");
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	lcall	_printf_fast_f
	dec	sp
	dec	sp
	C$main.c$292$1$93 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:292: delay_ms(1000);
	mov	dptr,#0x03e8
	lcall	_delay_ms
	C$main.c$294$1$93 ==.
	XG$contagemRegressiva$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;aux                       Allocated to registers r7 r6 
;------------------------------------------------------------
	G$main$0$0 ==.
	C$main.c$303$1$93 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:303: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$main.c$306$1$96 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:306: buzzer = 0;
	clr	_P3_5
	C$main.c$308$1$96 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:308: Init_Device();
	lcall	_Init_Device
	C$main.c$309$1$96 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:309: setup();
	lcall	_setup
	C$main.c$311$1$96 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:311: init_GLCD();
	lcall	_init_GLCD
	C$main.c$312$1$96 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:312: limpa_tela();
	lcall	_limpa_tela
	C$main.c$314$1$96 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:314: esc_RAM_SPI(ENDERECO, 5);
	mov	_esc_RAM_SPI_PARM_2,#0x05
	mov	dptr,#0x0001
	lcall	_esc_RAM_SPI
	C$main.c$315$1$96 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:315: aux = le_RAM_SPI(ENDERECO);
	mov	dptr,#0x0001
	lcall	_le_RAM_SPI
	mov	r7,dpl
	mov	r6,#0x00
	C$main.c$317$1$96 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:317: printf_fast_f("\x01 Tempo: %d s",aux);
	push	ar7
	push	ar6
	push	ar7
	push	ar6
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	lcall	_printf_fast_f
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	C$main.c$319$1$96 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:319: delay_ms(5000);
	mov	dptr,#0x1388
	lcall	_delay_ms
	pop	ar6
	pop	ar7
	C$main.c$321$1$96 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:321: contagemRegressiva(aux);
	mov	dpl,r7
	mov	dph,r6
	lcall	_contagemRegressiva
	C$main.c$324$1$96 ==.
;	C:\Users\202019050169\Downloads\trabalho\main.c:324: delay_ms(120000);
	mov	dptr,#0xd4c0
	lcall	_delay_ms
	C$main.c$358$1$96 ==.
	XG$main$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
G$fonte$0$0 == .
_fonte:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5f	; 95
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x7f	; 127
	.db #0x14	; 20
	.db #0x7f	; 127
	.db #0x14	; 20
	.db #0x24	; 36
	.db #0x2a	; 42
	.db #0x7f	; 127
	.db #0x2a	; 42
	.db #0x12	; 18
	.db #0x23	; 35
	.db #0x13	; 19
	.db #0x08	; 8
	.db #0x64	; 100	'd'
	.db #0x62	; 98	'b'
	.db #0x36	; 54	'6'
	.db #0x49	; 73	'I'
	.db #0x55	; 85	'U'
	.db #0x22	; 34
	.db #0x50	; 80	'P'
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x2a	; 42
	.db #0x1c	; 28
	.db #0x2a	; 42
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x3e	; 62
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x3e	; 62
	.db #0x51	; 81	'Q'
	.db #0x49	; 73	'I'
	.db #0x45	; 69	'E'
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x61	; 97	'a'
	.db #0x51	; 81	'Q'
	.db #0x49	; 73	'I'
	.db #0x46	; 70	'F'
	.db #0x21	; 33
	.db #0x41	; 65	'A'
	.db #0x45	; 69	'E'
	.db #0x4b	; 75	'K'
	.db #0x31	; 49	'1'
	.db #0x18	; 24
	.db #0x14	; 20
	.db #0x12	; 18
	.db #0x7f	; 127
	.db #0x10	; 16
	.db #0x27	; 39
	.db #0x45	; 69	'E'
	.db #0x45	; 69	'E'
	.db #0x45	; 69	'E'
	.db #0x39	; 57	'9'
	.db #0x3c	; 60
	.db #0x4a	; 74	'J'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x30	; 48	'0'
	.db #0x01	; 1
	.db #0x71	; 113	'q'
	.db #0x09	; 9
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x36	; 54	'6'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x36	; 54	'6'
	.db #0x06	; 6
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x29	; 41
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x36	; 54	'6'
	.db #0x36	; 54	'6'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x56	; 86	'V'
	.db #0x36	; 54	'6'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x22	; 34
	.db #0x41	; 65	'A'
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x51	; 81	'Q'
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0x32	; 50	'2'
	.db #0x49	; 73	'I'
	.db #0x79	; 121	'y'
	.db #0x41	; 65	'A'
	.db #0x3e	; 62
	.db #0x7e	; 126
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x7e	; 126
	.db #0x7f	; 127
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x36	; 54	'6'
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x7f	; 127
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x51	; 81	'Q'
	.db #0x32	; 50	'2'
	.db #0x7f	; 127
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x41	; 65	'A'
	.db #0x3f	; 63
	.db #0x01	; 1
	.db #0x7f	; 127
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x22	; 34
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x7f	; 127
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x7f	; 127
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x3e	; 62
	.db #0x7f	; 127
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x51	; 81	'Q'
	.db #0x21	; 33
	.db #0x5e	; 94
	.db #0x7f	; 127
	.db #0x09	; 9
	.db #0x19	; 25
	.db #0x29	; 41
	.db #0x46	; 70	'F'
	.db #0x46	; 70	'F'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x31	; 49	'1'
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x7f	; 127
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x3f	; 63
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x1f	; 31
	.db #0x7f	; 127
	.db #0x20	; 32
	.db #0x18	; 24
	.db #0x20	; 32
	.db #0x7f	; 127
	.db #0x63	; 99	'c'
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x63	; 99	'c'
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x78	; 120	'x'
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x61	; 97	'a'
	.db #0x51	; 81	'Q'
	.db #0x49	; 73	'I'
	.db #0x45	; 69	'E'
	.db #0x43	; 67	'C'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x78	; 120	'x'
	.db #0x7f	; 127
	.db #0x48	; 72	'H'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x20	; 32
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x48	; 72	'H'
	.db #0x7f	; 127
	.db #0x38	; 56	'8'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x7e	; 126
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x3c	; 60
	.db #0x7f	; 127
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x7d	; 125
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x44	; 68	'D'
	.db #0x3d	; 61
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x10	; 16
	.db #0x28	; 40
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x04	; 4
	.db #0x18	; 24
	.db #0x04	; 4
	.db #0x78	; 120	'x'
	.db #0x7c	; 124
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x78	; 120	'x'
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x38	; 56	'8'
	.db #0x7c	; 124
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x18	; 24
	.db #0x7c	; 124
	.db #0x7c	; 124
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x48	; 72	'H'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x20	; 32
	.db #0x04	; 4
	.db #0x3f	; 63
	.db #0x44	; 68	'D'
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x3c	; 60
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x7c	; 124
	.db #0x1c	; 28
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x1c	; 28
	.db #0x3c	; 60
	.db #0x40	; 64
	.db #0x30	; 48	'0'
	.db #0x40	; 64
	.db #0x3c	; 60
	.db #0x44	; 68	'D'
	.db #0x28	; 40
	.db #0x10	; 16
	.db #0x28	; 40
	.db #0x44	; 68	'D'
	.db #0x0c	; 12
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x3c	; 60
	.db #0x44	; 68	'D'
	.db #0x64	; 100	'd'
	.db #0x54	; 84	'T'
	.db #0x4c	; 76	'L'
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x36	; 54	'6'
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x36	; 54	'6'
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x2a	; 42
	.db #0x1c	; 28
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x2a	; 42
	.db #0x08	; 8
	.db #0x08	; 8
Fmain$__str_0$0$0 == .
___str_0:
	.db 0x02
	.ascii " ERRO: mem=%05d"
	.db 0x00
Fmain$__str_1$0$0 == .
___str_1:
	.db 0x02
	.ascii " i = %05d"
	.db 0x00
Fmain$__str_2$0$0 == .
___str_2:
	.db 0x02
	.ascii " T: %d %d %d %d"
	.db 0x00
Fmain$__str_3$0$0 == .
___str_3:
	.ascii "Tempo %d:"
	.db 0x00
Fmain$__str_4$0$0 == .
___str_4:
	.db 0x01
	.ascii " Selecione o"
	.db 0x00
Fmain$__str_5$0$0 == .
___str_5:
	.db 0x02
	.ascii " tipo entrada:"
	.db 0x00
Fmain$__str_6$0$0 == .
___str_6:
	.db 0x04
	.ascii " a - Manual"
	.db 0x00
Fmain$__str_7$0$0 == .
___str_7:
	.db 0x05
	.ascii " b - Digital"
	.db 0x00
Fmain$__str_8$0$0 == .
___str_8:
	.db 0x06
	.ascii " Tudo pronto!!"
	.db 0x00
Fmain$__str_9$0$0 == .
___str_9:
	.db 0x01
	.ascii " Start Timer.."
	.db 0x00
Fmain$__str_10$0$0 == .
___str_10:
	.db 0x02
	.ascii " %02d:%02d"
	.db 0x00
Fmain$__str_11$0$0 == .
___str_11:
	.db 0x07
	.ascii " Pronto"
	.db 0x00
Fmain$__str_12$0$0 == .
___str_12:
	.db 0x01
	.ascii " Tempo: %d s"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
