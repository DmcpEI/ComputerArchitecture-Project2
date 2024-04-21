
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

; Menu Inserir Dinheiro 1
OpcaoContinuarInserir1 EQU 1
OpcaoSeguinteInserir1 EQU 2
OpcaoCancelarInserir1 EQU 6

; Menu Inserir Dinheiro 2
OpcaoContinuarInserir2 EQU 1
OpcaoAnteriorInserir2 EQU 2
OpcaoCancelarInserir2 EQU 6

; Menu Usar Cartão
OpcaoContinuarCartao EQU 1
OpcaoCancelarCartao EQU 5

; Menu Comprar Cartão
OpcaoComprarCartao EQU 1
OpcaoRecarregarCartao EQU 2

; Menu Stock
OpcaoConsultarStock EQU 1
OpcaoInserirStock EQU 2
OpcaoVoltarStock EQU 5

; Menu Consultar Stock
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
	String "6 - Cancelar    "

PLACE 2200H

Display_MenuInserir1:                                        ;Display do menu

    String "INSERIR DINHEIRO"
	String " 10 Cent...  0  "
	String " 20 Cent...  0  "
	String " 50 Cent...  0  "
	String "1 - Continuar   "
	String "2 - Seguinte    "
	String "6 - Cancelar    "

PLACE 2300H

Display_MenuInserir2:                                        ;Display do menu

    String "INSERIR DINHEIRO"
    String " 1  euro...  0  "
    String " 2  euro...  0  "
    String " 5  euro...  0  "
	String "1 - Continuar   "
	String "2 - Anterior    "
	String "6 - Cancelar    "

PLACE 2400H

Display_Talao:                                              ;Display do Talao

    String "   PEPE GERADO  "
    String "       001      "
	String "            .00 "
	String "Inserido..  .00 "
	String "Troco...... .00 "
	String "                "
	String " 1 - Continuar  "
    
PLACE 2500H

Display_CodigoPEPE:                                         ;Display de introdução do código PEPE
    
    String "  INTRODUZA N.  "
    String "      PEPE      "
    String "                "
    String "     XXXXX      "
    String "                "
    String " 1 - Continuar  "
    String " 5 - Cancelar   "

PLACE 2600H

Display_NPEPEErrado:										;Display de nº pepe errado	
	String " ---- ERRO ---- "
	String "                "
	String "     Nº PEPE    "
	String "    incorreto   "
	String "                "
	String " 7 - Voltar     "
	String " ---- ERRO ---- "

PLACE 2700H

Display_MenuUsarPEPE:                                      ;Display do menu de compra usando PEPE

    String "   SALDO PEPE   "
    String "                "
    String "     00.00      "
    String "                "
    String "1 - Comprar     "
    String "2 - Recarregar  "
    String "                "

PLACE 2800H

Display_Pagamento:                                         ;Display de pagamento
    String "   Pagamento    "
	String "   Inserido:    "
	String "     0.00       "
	String "     Euros      "
	String "                "
	String "6 - Cancelar    "
	String "9 - Confirmar   "

Place 2900H  											  

Display_FaltaMoedasTroco:                                  ;Display para a falta de moedas de troco
	String "---- Alerta ----"
	String "     Moedas     "
	String "    Em stock    "
	String "  insuficientes "
	String "   para troco   "
	String "                "
	String " 1 - Continuar  "

Place 2A00H

Display_FaltaInserirMoedas:                               ;Display para a falta inserir moedas para pagamento
	String " ---- ERRO ---- "
	String " Valor inserido "
    String "       é        "
	String "  insuficiente  "
	String "                "
	String " 7 - Voltar     "
	String " ---- ERRO ---- "

Place 2B00H

Display_Agradecimento:									  ;Display para a falta de saldo no cartão
	String "!!!!!!!!!!!!!!!!"
	String "    Obrigado    "
	String "    Pela sua    "
	String "     Compra     "
	String "                "
	String " 1 - Continuar  "
	String "!!!!!!!!!!!!!!!!"

Place 2C00H

Display_Stock:                                            ;Display para gerir o stock              
	String "                "
	String "     STOCK      "
	String "                "
	String " 1 - Consultar  "
	String " 2 - Inserir    "
	String " 7 - Voltar     "
	String "                "

Place 2D00H
                                                   
Display_ConsultarStock1:									  ;Display para consultar o stock
	String "    CONSULTA    "
	String "     STOCK      "
	String " 10 Cent...  0  "
	String " 20 Cent...  0  "
	String " 50 Cent...  0  "
    String "5 - Seguinte    "
	String "7 - Voltar      "

Place 2E00H

Display_ConsultarStock2:									  ;Display para consultar o stock
	String "    CONSULTA    "
	String "     STOCK      "
	String "1 - 1 Euro....0 "
	String "2 - 2 Euros...0 "
	String "                "
	String "7 - Voltar      "
	String "9 - Sair        "
	
Place 2F00H

Display_InserirMoedas1:									    ;Display da inserção de Moedas stock
	String "    INSERCAO    "
	String "   DE  MOEDAS   "
	String "1 - 10 Cent...0 "
	String "2 - 20 Cent...0 "
	String "3 - 50 Cent...0 "
	String "5 - Seguinte    "
	String "7 - Voltar      "

Place 3000H

Display_InserirMoedas2:										;Display da inserção de Moedas stock
	String "    INSERCAO    "
	String "   DE  MOEDAS   "
	String "1 - 1 Euro....0 "
	String "2 - 2 Euros...0 "
	String "                "
	String "7 - Voltar      "
	String "9 - Sair        "	

Place 3100H

Display_QuantasInserir:										 ;Display da quantidade de moedas a inserir no stock
	String "    Quantas     "
	String "moedas inserir ?"
	String "                "
	String "       0        "
	String "                "
	String "1 - Confirmar   "
	String "7 - Cancelar    "

Place 3200H

Display_InseridoSucesso:									 ;Display da mensagem de inserção de dinheiro stock
	String "!!!!!!!!!!!!!!!!"
	String "   Dinheiro     "
	String "  inserido com  "
	String "    sucesso     "
	String "                "
	String "                "
	String "1 - Seguinte    "

Place 3300H

Display_DinheiroInseridoDevolvido:                           ;Display da mensagem do dinheiro inserido devolvido quando cancelado        
	String "!!!!!!!!!!!!!!!!"
	String "                "
	String "   Dinheiro     "
	String "  devolvido com  "
	String "    sucesso     "
	String "                "
	String "1 - Seguinte    "   
   
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
;									                       Jumps para as Rotinas
;-----------------------------------------------------------------------------------------------------------------------------------------

LigadoIntermedio2:
    JMP LigadoIntermedio

RotinaComprarIntermedio2:
    JMP RotinaComprarIntermedio

RotinaUsarCartaoIntermedio2:
    JMP RotinaUsarCartaoIntermedio

RotinaStockIntermedio2:
    JMP RotinaStockIntermedio

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
	JEQ RotinaInserirDinheiro1

	CMP R1, OpcaoEst2
	JEQ RotinaInserirDinheiro1

    CMP R1, OpcaoEst3
	JEQ RotinaInserirDinheiro1

	CMP R1, OpcaoEst4
	JEQ RotinaInserirDinheiro1

    CMP R1, OpcaoEst5
	JEQ RotinaInserirDinheiro1

    CMP R1, OpcaoCancelarCompra
	JEQ LigadoIntermedio2
	
	CALL RotinaErro
	JMP RotinaComprar

RotinaInserirDinheiro1:

	MOV R2, Display_MenuInserir1
	CALL LimpaDisplay
	CALL MostraDisplay
	CALL LimpaPerifericos

LeOpcaoInserirDinheiro1:

	MOV R0, Opcao                                           
	MOVB R1, [R0]                                         
	CMP R1, 0
	JEQ LeOpcaoInserirDinheiro1
	
	CMP R1, OpcaoContinuarInserir1
	JEQ RotinaInserirDinheiro2

	CMP R1, OpcaoSeguinteInserir1
	JEQ RotinaInserirDinheiro2

	CMP R1, OpcaoCancelarInserir1 ; Tem de devover o dinheiro
	JEQ LigadoIntermedio2
	
	CALL RotinaErro
	JMP RotinaInserirDinheiro1

RotinaInserirDinheiro2:

	MOV R2, Display_MenuInserir2
	CALL LimpaDisplay
	CALL MostraDisplay
	CALL LimpaPerifericos

LeOpcaoInserirDinheiro2:

	MOV R0, Opcao                                           
	MOVB R1, [R0]                                         
	CMP R1, 0
	JEQ LeOpcaoInserirDinheiro2
	
	CMP R1, OpcaoContinuarInserir2
	JEQ RotinaInserirDinheiro2

	CMP R1, OpcaoAnteriorInserir2
	JEQ RotinaInserirDinheiro1

	CMP R1, OpcaoCancelarInserir2 ; Tem de devover o dinheiro
	JEQ LigadoIntermedio2
	
	CALL RotinaErro
	JMP RotinaInserirDinheiro2

;-----------------------------------------------------------------------------------------------------------------------------------------
;									                         Rotina Usar Cartão
;-----------------------------------------------------------------------------------------------------------------------------------------
;
;-----------------------------------------------------------------------------------------------------------------------------------------

RotinaUsarCartao:

    MOV R2, Display_CodigoPEPE
    CALL LimpaDisplay
    CALL MostraDisplay
    CALL LimpaPerifericos

LeOpcaoUsarCartao:

	MOV R0, Opcao                                           
    MOVB R1, [R0]                                         
    CMP R1, 0
	JEQ LeOpcaoUsarCartao                                   
	
	CMP R1, OpcaoContinuarCartao
	JEQ LigadoIntermedio2

	CMP R1, OpcaoCancelarCartao
	JEQ LigadoIntermedio2
	
	CALL RotinaErro
	JMP RotinaUsarCartao

;-----------------------------------------------------------------------------------------------------------------------------------------
;									                            Rotina Stock
;-----------------------------------------------------------------------------------------------------------------------------------------
;
;-----------------------------------------------------------------------------------------------------------------------------------------

RotinaStock:

    MOV R2, Display_Stock
    CALL LimpaDisplay
    CALL MostraDisplay
    CALL LimpaPerifericos

LeOpcaoStock:

	MOV R0, Opcao                                           
    MOVB R1, [R0]                                         
    CMP R1, 0
	JEQ LeOpcaoStock                                  
	
	CMP R1, OpcaoConsultarStock
	JEQ LigadoIntermedio2

	CMP R1, OpcaoInserirStock
	JEQ LigadoIntermedio2

    CMP R1, OpcaoVoltarStock
	JEQ LigadoIntermedio2
	
	CALL RotinaErro
	JMP RotinaStock

;-----------------------------------------------------------------------------------------------------------------------------------------
;									                            Rotina Erro
;-----------------------------------------------------------------------------------------------------------------------------------------
;
;-----------------------------------------------------------------------------------------------------------------------------------------

RotinaErro:

    JMP Ligado