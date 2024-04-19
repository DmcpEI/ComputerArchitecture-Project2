
; Periféricos de Entrada-----------------------------------------------------------------------------------------------------------------

OK EQU 1C0H                                                 ; Botão OK

Opcao EQU 1B0H                                              ; Botão Opção

ON_OFF EQU 1A0H                                             ; Botão ON/OFF

; Periféricos de Saída-------------------------------------------------------------------------------------------------------------------

Display EQU 200H                                            ; Endereço de início do display de 7 segmentos

Display_end EQU 26FH                                        ; Endereço de fim do display de 7 segmentos

;Constantes--------------------------------------------------------------------------------------------------------------------------------

; Menu Inicial
OpcaoComprar EQU 1
OpcaoUsarCartao EQU 2
OpcaoStock EQU 3

; Menu Comprar
OpcaoEst1 EQU 1
OpcaoEst2 EQU 2
OpcaoEst3 EQU 3
OpcaoEst4 EQU 4
OpcaoEst5 EQU 5
OpcaoCancelarCompra EQU 6

; Menu Usar Cartão
OpcaoContinuarCartao EQU 1
OpcaoCancelarCartao EQU 5

; Menu Comprar Cartão
OpcaoComprarCartao EQU 1
OpcaoRecarregarCartao EQU 2

; Menu Stock
OpcaoSeguinteStock EQU 1
OpcaoAnteriorStock EQU 2
OpcaoSairStock EQU 5


CaracterVazio EQU 20H                                       ; Caracter vazio

StackPointer EQU 1000H		                                ; Endereço do Stack Pointer

;Preços dos bilhetes----------------------------------------------------------------------------------------------------------------------


;-----------------------------------------------------------------------------------------------------------------------------------------
;                                                               Menus
;-----------------------------------------------------------------------------------------------------------------------------------------

PLACE 2000H

Display_MenuInicial:                                        ;Display do menu de seleção inicial

    String " MAQUINA VENDAS "
    String "     METRO      "
    String "                "
    String "1 -  Comprar    "
    String "2 -  Usar Cartao"
    String "3 -  Stock      "
	String "                "

PLACE 2100H

Display_MenuComprar:                                        ;Display do menu de compra sem cartao

    String "  MENU ESTACAO  "
    String "1-ESTACAO 1:1.50"
    String "2-ESTACAO 2:2.50"
    String "3-ESTACAO 3:4.00"
    String "4-ESTACAO 4:5.50"
    String "5-ESTACAO 5:7.00"
	String "6 - CANCELAR    "

;-----------------------------------------------------------------------------------------------------------------------------------------
;                                                      Código de Inicialização
;-----------------------------------------------------------------------------------------------------------------------------------------

Place 0000H

Inicio:

	MOV R0, Principio                                       ; Coloca em R0 o endereço da etiqueta Principio
	JMP R0                                                  ; Salta para a etiqueta Principio

;-----------------------------------------------------------------------------------------------------------------------------------------
;									                       Rotina Principal
;-----------------------------------------------------------------------------------------------------------------------------------------
; Inicializa a máquina e mostrar o menu principal no display 
;-----------------------------------------------------------------------------------------------------------------------------------------

Place 6000H

Principio:

    MOV SP, StackPointer
    CALL LimpaDisplay
    CALL LimpaPerifericos
    MOV R0, ON_OFF

LeOnOff:

    MOVB R1, [R0]
    CMP R1, 1
    JNE LeOnOff

Ligado:

    MOV R2, Display_MenuInicial
    CALL MostraDisplay
    CALL LimpaPerifericos

LeOpcao:

	MOV R0, Opcao                                           ; R0 tem o endereço do botão opção
    MOV R4, [R3]                                            ; Leitura do periferico Opção
    CMP R4, 0
	JEQ LeOpcao                                             ; Se o valor do botão for 0, refaz a leitura
	
	CMP R4, OpcaoComprar
	JEQ RotinaComprar

	CMP R4, OpcaoUsarCartao
	JEQ RotinaUsarCartao

    CMP R4, OpcaoStock
	JEQ RotinaStock
	
	CALL RotinaErro
	JMP Ligado

;-----------------------------------------------------------------------------------------------------------------------------------------
;									                       Rotina Limpa Display
;-----------------------------------------------------------------------------------------------------------------------------------------
; Limpa o display
;-----------------------------------------------------------------------------------------------------------------------------------------

LimpaDisplay:

	PUSH R0 
	PUSH R1 
	PUSH R2 

	MOV R0, Display
	MOV R1, Display_end
	
CicloLimpa:

	MOV R2, CaracterVazio
	MOVB [R0], R2
	ADD R0, 1
	CMP R0,R1
	JLE CicloLimpa
	
	POP R2
	POP R1
	POP R0
	RET

;-----------------------------------------------------------------------------------------------------------------------------------------
;									                       Rotina Limpa Periféricos
;-----------------------------------------------------------------------------------------------------------------------------------------
; Limpa/Zera os periféricos
;-----------------------------------------------------------------------------------------------------------------------------------------

LimpaPerifericos:

    MOV R0, ON_OFF
    MOV R1, Opcao
    MOV R2, OK
    RET

;-----------------------------------------------------------------------------------------------------------------------------------------
;									                       Rotina Mostrar Display
;-----------------------------------------------------------------------------------------------------------------------------------------
; Mostra o display
;-----------------------------------------------------------------------------------------------------------------------------------------


MostraDisplay:

    PUSH R0
    PUSH R1
    PUSH R3

    MOV R0, Display
    MOV R1, Display_end

CicloDisplay:

    MOV R3, [R2]
    MOVB [R0], R3
    ADD R0, 2
    ADD R2, 2
    CMP R0, R1
    JLE CicloDisplay

    POP R3
    POP R1
    POP R0
    RET

;-----------------------------------------------------------------------------------------------------------------------------------------
;									                           Rotina Comprar
;-----------------------------------------------------------------------------------------------------------------------------------------
; Mostra o display
;-----------------------------------------------------------------------------------------------------------------------------------------

RotinaComprar:

    MOV R2, Display_MenuComprar
    CALL MostraDisplay
    CALL LimpaPerifericos

;-----------------------------------------------------------------------------------------------------------------------------------------
;									                         Rotina Usar Cartão
;-----------------------------------------------------------------------------------------------------------------------------------------
; Mostra o display
;-----------------------------------------------------------------------------------------------------------------------------------------

RotinaUsarCartao:

    JMP Ligado

;-----------------------------------------------------------------------------------------------------------------------------------------
;									                            Rotina Stock
;-----------------------------------------------------------------------------------------------------------------------------------------
; Mostra o display
;-----------------------------------------------------------------------------------------------------------------------------------------

RotinaStock:

    JMP Ligado

;-----------------------------------------------------------------------------------------------------------------------------------------
;									                            Rotina Erro
;-----------------------------------------------------------------------------------------------------------------------------------------
; Mostra o display
;-----------------------------------------------------------------------------------------------------------------------------------------

RotinaErro:

    JMP Ligado