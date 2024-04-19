
; Periféricos de Entrada-----------------------------------------------------------------------------------------------------------------

ON_OFF EQU 1A0H                                             ; Botão ON/OFF

Opcao EQU 1B0H                                              ; Botão Opção

OK EQU 1C0H                                                 ; Botão OK

; Periféricos de Saída-------------------------------------------------------------------------------------------------------------------

Display_beginning EQU 200H                                            ; Endereço de início do display de 7 segmentos

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

LeOnOff:

    MOV R0, ON_OFF
    MOVB R1, [R0]
    CMP R1, 1
    JNE LeOnOff

Ligado:

    MOV R2, Display_MenuInicial
    CALL LimpaDisplay
    CALL MostraDisplay
    CALL LimpaPerifericos

LeOpcao:

	MOV R0, Opcao                                           ; R0 tem o endereço do botão opção
    MOVB R1, [R0]                                           ; Leitura do periferico Opção
    CMP R1, 0
	JEQ LeOpcao                                             ; Se o valor do botão for 0, refaz a leitura
	
	CMP R1, OpcaoComprar
	JEQ RotinaComprarIntermedio

	CMP R1, OpcaoUsarCartao
	JEQ RotinaUsarCartaoIntermedio

    CMP R1, OpcaoStock
	JEQ RotinaStockIntermedio
	
	CALL RotinaErro
	JMP Ligado

;-----------------------------------------------------------------------------------------------------------------------------------------
;									                       Jumps para as Rotinas
;-----------------------------------------------------------------------------------------------------------------------------------------

LigadoIntermedio:
    JMP Ligado

RotinaComprarIntermedio:
    JMP RotinaComprar

RotinaUsarCartaoIntermedio:
    JMP RotinaUsarCartao

RotinaStockIntermedio:
    JMP RotinaStock

;-----------------------------------------------------------------------------------------------------------------------------------------
;									                       Rotina Limpa Display
;-----------------------------------------------------------------------------------------------------------------------------------------
; Limpa o display
;-----------------------------------------------------------------------------------------------------------------------------------------

LimpaDisplay:

	PUSH R0 
	PUSH R1 
	PUSH R2 

	MOV R0, Display_beginning
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

    PUSH R0
    PUSH R1
    PUSH R2

    MOV R0, ON_OFF
    MOV R1, Opcao
    MOV R2, OK

    MOV R9, 0

    MOVB [R0], R9
    MOVB [R1], R9
    MOVB [R2], R9

    POP R2
    POP R1
    POP R0
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

    MOV R0, Display_beginning
    MOV R1, Display_end

CicloDisplay:

    MOV R3, [R2]
    MOV [R0], R3
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
;
;-----------------------------------------------------------------------------------------------------------------------------------------

RotinaComprar:

    MOV R2, Display_MenuComprar
    CALL LimpaDisplay
    CALL MostraDisplay
    CALL LimpaPerifericos

LeOpcaoComprar:

	MOV R0, Opcao                                           
    MOVB R1, [R0]                                         
    CMP R1, 0
	JEQ LeOpcaoComprar                                     
	
	CMP R1, OpcaoEst1
	JEQ LigadoIntermedio

	CMP R1, OpcaoEst2
	JEQ LigadoIntermedio

    CMP R1, OpcaoEst3
	JEQ LigadoIntermedio

	CMP R1, OpcaoEst4
	JEQ LigadoIntermedio

    CMP R1, OpcaoEst5
	JEQ LigadoIntermedio

    CMP R1, OpcaoCancelarCompra
	JEQ LigadoIntermedio
	
	CALL RotinaErro
	JMP RotinaComprar

;-----------------------------------------------------------------------------------------------------------------------------------------
;									                         Rotina Usar Cartão
;-----------------------------------------------------------------------------------------------------------------------------------------
;
;-----------------------------------------------------------------------------------------------------------------------------------------

RotinaUsarCartao:

    MOV R2, 
    CALL LimpaDisplay
    CALL MostraDisplay
    CALL LimpaPerifericos

LeOpcaoUsarCartao:

	MOV R0, Opcao                                           
    MOVB R1, [R0]                                         
    CMP R1, 0
	JEQ LeOpcaoUsarCartao                                   
	
	CMP R1, OpcaoContinuarCartao
	JEQ LigadoIntermedio

	CMP R1, OpcaoCancelarCartao
	JEQ LigadoIntermedio
	
	CALL RotinaErro
	JMP RotinaComprar

;-----------------------------------------------------------------------------------------------------------------------------------------
;									                            Rotina Stock
;-----------------------------------------------------------------------------------------------------------------------------------------
;
;-----------------------------------------------------------------------------------------------------------------------------------------

RotinaStock:

    MOV R2, 
    CALL LimpaDisplay
    CALL MostraDisplay
    CALL LimpaPerifericos

LeOpcaoStock:

	MOV R0, Opcao                                           
    MOVB R1, [R0]                                         
    CMP R1, 0
	JEQ LeOpcaoStock                                  
	
	CMP R1, OpcaoSeguinteStock
	JEQ LigadoIntermedio

	CMP R1, OpcaoAnteriorStock
	JEQ LigadoIntermedio

    CMP R1, OpcaoSairStock
	JEQ LigadoIntermedio
	
	CALL RotinaErro
	JMP RotinaComprar

;-----------------------------------------------------------------------------------------------------------------------------------------
;									                            Rotina Erro
;-----------------------------------------------------------------------------------------------------------------------------------------
;
;-----------------------------------------------------------------------------------------------------------------------------------------

RotinaErro:

    JMP Ligado