
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
Opcao10CentimosInserir1 EQU 1
Opcao20CentimosInserir1 EQU 2
Opcao50CentimosInserir1 EQU 3
OpcaoSeguinteInserir1 EQU 5
OpcaoCancelarInserir1 EQU 7

; Menu Inserir Dinheiro 2
Opcao1EuroInserir2 EQU 1
Opcao2EuroInserir2 EQU 2
Opcao5EurosInserir2 EQU 3
OpcaoSeguinteInserir2 EQU 5
OpcaoCancelarInserir2 EQU 7

; Menu Inserir Dinheiro 3
Opcao10EuroInserir3 EQU 1
Opcao20EuroInserir3 EQU 2
OpcaoSeguinteInserir3 EQU 5
OpcaoCancelarInserir3 EQU 7
OpcaoConfirmarInserir3 EQU 0

; Menu Quantidade Dinheiro Inserir

OpcaoConfirmarInserir EQU 1
OpcaoCancelarInserir EQU 7

; Menu Usar Cartão
OpcaoContinuarCartao EQU 1
OpcaoCancelarCartao EQU 5

; Menu Comprar Cartão
OpcaoComprarCartao EQU 1
OpcaoRecarregarCartao EQU 2

; Menu Verificar Stock

OpcaoConsultarVerificarStock EQU 1
OpcaoCancelarVerificarStock  EQU 7

; Menu Stock
OpcaoConsultarStock EQU 1
OpcaoInserirStock EQU 2
OpcaoVoltarStock EQU 5

; Menu Consultar Stock
OpcaoSeguinteStock EQU 5
OpcaoAnteriorStock EQU 6
OpcaoSairStock EQU 7

; Menu Erro
OpcaoVoltarErro EQU 7


CaracterVazio EQU 20H                                       ; Caracter vazio

StackPointer EQU 1000H		                                ; Endereço do Stack Pointer

EndPrimeiroLugarStock EQU 22DH								; Endereço do primeiro lugar do display para escrever o valor no stock

;Preços dos bilhetes----------------------------------------------------------------------------------------------------------------------

BEstacao1Preco EQU 150
BEstacao2Preco EQU 250
BEstacao3Preco EQU 400
BEstacao4Preco EQU 550
BEstacao5Preco EQU 700

;Dinheiro--------------------------------------------------------------------------------------------------------------------------------

; Disponibilidade das moedas para troco
DispMoedas10 EQU 300H
DispMoedas20 EQU 310H
DispMoedas50 EQU 320H
DispMoedas1	EQU 330H
DispMoedas2 EQU 340H
DispNotas5 EQU 350H

; Número de moedas em operação de compra
OprMoedas10 EQU 360H
OprMoedas20 EQU 370H
OprMoedas50 EQU 380H
OprMoedas1 EQU 390H
OprMoedas2 EQU 3A0H
OprNotas5 EQU 3B0H

; Número de moedas em stock
StockMoedas10 EQU 3C0H
StockMoedas20 EQU 3D0H
StockMoedas50 EQU 3E0H
StockMoedas1 EQU 3F0H
StockMoedas2 EQU 400H
StockNotas5 EQU 410H

;Passe do Stock--------------------------------------------------------------------------------------------------------------------------

Place 100H

PalavraPasseStock:											;Palavra-passe para aceder ao stock (73 74 6F 63 6B)
	String "stock"

PalavraPasseVerificar EQU 235H 								; Palavra-passe escrita pelo utilizador para verificação

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

Display_Talao:                                              ;Display do Talao

    String "   PEPE GERADO  "
    String "       001      "
	String "            .00 "
	String "Inserido..  .00 "
	String "Troco...... .00 "
	String "                "
	String " 1 - Continuar  "
    
PLACE 2300H

Display_CodigoPEPE:                                         ;Display de introdução do código PEPE
    
    String "  INTRODUZA N.  "
    String "      PEPE      "
    String "                "
    String "     XXXXX      "
    String "                "
    String " 1 - Continuar  "
    String " 5 - Cancelar   "

PLACE 2400H

Display_NPEPEErrado:										;Display de nº pepe errado	
	String " ---- ERRO ---- "
	String "                "
	String "     Nº PEPE    "
	String "    incorreto   "
	String "                "
	String " 7 - Voltar     "
	String " ---- ERRO ---- "

PLACE 2500H

Display_MenuUsarPEPE:                                      ;Display do menu de compra usando PEPE

    String "   SALDO PEPE   "
    String "                "
    String "     00.00      "
    String "                "
    String "1 - Comprar     "
    String "2 - Recarregar  "
    String "                "

PLACE 2600H

Display_Pagamento:                                         ;Display de pagamento
    String "   Pagamento    "
	String "   Inserido:    "
	String "     0.00       "
	String "     Euros      "
	String "                "
	String "6 - Cancelar    "
	String "9 - Confirmar   "

Place 2700H  											  

Display_FaltaMoedasTroco:                                  ;Display para a falta de moedas de troco
	String "---- Alerta ----"
	String "     Moedas     "
	String "    Em stock    "
	String "  insuficientes "
	String "   para troco   "
	String "                "
	String " 1 - Continuar  "

Place 2800H

Display_FaltaInserirMoedas:                               ;Display para a falta inserir moedas para pagamento
	String " ---- ERRO ---- "
	String " Valor inserido "
    String "       é        "
	String "  insuficiente  "
	String "                "
	String " 7 - Voltar     "
	String " ---- ERRO ---- "

Place 2900H

Display_Agradecimento:									  ;Display para a falta de saldo no cartão
	String "!!!!!!!!!!!!!!!!"
	String "    Obrigado    "
	String "    Pela sua    "
	String "     Compra     "
	String "                "
	String " 1 - Continuar  "
	String "!!!!!!!!!!!!!!!!"

Place 2A00H

Display_VerificacaoStock:                                            ;Display para gerir o stock              
	String "     STOCK      "
	String "                "
	String " PALAVRA-PASSE: "
	String "     *****      "
	String "                "
	String "1 - Consultar   "
	String "7 - Cancelar    "

Place 2B00H
                                                   
Display_ConsultarStock1:									  ;Display para consultar o stock
	String "    CONSULTA    "
	String "     STOCK      "
	String " 10 Cent...     "
	String " 20 Cent...     "
	String " 50 Cent...     "
    String "5 - Seguinte    "
	String "7 - Sair        "

Place 2C00H

Display_ConsultarStock2:									  ;Display para consultar o stock
	String "    CONSULTA    "
	String "     STOCK      "
	String " 1 Euro....     "
	String " 2 Euros...     "
	String " 5 Euros...     "
	String "6 - Anterior    "
	String "7 - Sair        "
	
Place 2D00H

Display_InserirDinheiro1:									    ;Display da inserção de dinheiro stock
	String "    INSERCAO    "
	String "  DE  DINHEIRO  " 
	String "1 - 10 Cent...0 "
	String "2 - 20 Cent...0 "
	String "3 - 50 Cent...0 "
	String "5 - Seguinte    "
	String "7 - Cancelar    "

Place 2E00H

Display_InserirDinheiro2:									    ;Display da inserção de dinheiro stock
	String "    INSERCAO    "
	String "  DE  DINHEIRO  " 
	String "1 - 1 Euro....0 "
	String "2 - 2 Euros...0 "
	String "3 - 5 Euros...0 "
	String "5 - Seguinte    "
	String "7 - Cancelar    "

Place 2F00H

Display_InserirDinheiro3:									    ;Display da inserção de dinheiro stock
	String "    INSERCAO    "
	String "  DE  DINHEIRO  " 
	String "1 - 10 Euros..0 "
	String "2 - 20 Euros..0 "
	String "5 - Seguinte    "
	String "7 - Cancelar    "
	String "0 - Confirmar   "

Place 3000H

Display_QuantasInserir:										 ;Display da quantidade de moedas a inserir no stock
	String "    Quantas     "
	String " moedas / notas "
	String "    inserir?    "
	String "       0        "
	String "                "
	String "1 - Confirmar   "
	String "7 - Cancelar    "

Place 3100H

Display_InseridoSucesso:									 ;Display da mensagem de inserção de dinheiro stock
	String "!!!!!!!!!!!!!!!!"
	String "                "
	String "    Dinheiro    "
	String "  inserido com  "
	String "    sucesso     "
	String "                "
	String "1 - Seguinte    "

Place 3200H

Display_DinheiroInseridoDevolvido:                           ;Display da mensagem do dinheiro inserido devolvido quando cancelado        
	String "!!!!!!!!!!!!!!!!"
	String "                "
	String "    Dinheiro    "
	String "  devolvido com "
	String "    sucesso     "
	String "                "
	String "1 - Seguinte    "   

Place 3300H

Display_PalavraPasseErrada:									 ;Display da mensagem de palavra-passe errada
	String " ---- ERRO ---- "
	String " PALAVRA-PASSE  "
    String "    INSERIDA    "
	String "   INCORRETA    "
	String "                "
	String " 7 - Voltar     "
	String " ---- ERRO ---- "
   
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
	CALL VerificaDinheiro

Ligado:

    MOV R2, Display_MenuInicial
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
;									                               Jumps
;-----------------------------------------------------------------------------------------------------------------------------------------

LigadoIntermedio:
    JMP Ligado

RotinaComprarIntermedio:
    JMP RotinaComprar

RotinaUsarCartaoIntermedio:
    JMP RotinaUsarCartao

RotinaStockIntermedio:
    JMP VerificacaoStock

;-----------------------------------------------------------------------------------------------------------------------------------------
;									                       Rotina Limpa Display
;-----------------------------------------------------------------------------------------------------------------------------------------
; Limpa o display
;-----------------------------------------------------------------------------------------------------------------------------------------

LimpaDisplay:

	PUSH R0 
	PUSH R1 
	PUSH R2 

	MOV R0, Display_beginning						; R0 tem o endereço de início do display
	MOV R1, Display_end								; R1 tem o endereço de fim do display
	
CicloLimpa:

	MOV R2, CaracterVazio							; R2 tem o valor do caracter vazio
	MOVB [R0], R2									; Coloca o caracter vazio no display
	ADD R0, 1										; Adiciona 1 ao endereço do display
	CMP R0, R1										; Compara o endereço do display com o endereço de fim do display
	JLE CicloLimpa									; Se o endereço do display for menor ou igual ao endereço de fim do display, repete o ciclo
	
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

    MOV R0, ON_OFF									; R0 tem o endereço do botão ON/OFF
    MOV R1, Opcao									; R1 tem o endereço do botão Opção
    MOV R2, OK										; R2 tem o endereço do botão OK

    MOV R9, 0										; R9 tem o valor 0

    MOVB [R0], R9									; Coloca o valor 0 no botão ON/OFF
    MOVB [R1], R9									; Coloca o valor 0 no botão Opção
    MOVB [R2], R9									; Coloca o valor 0 no botão OK

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

    MOV R0, Display_beginning						; R0 tem o endereço de início do display
    MOV R1, Display_end								; R1 tem o endereço de fim do display

CicloDisplay:

    MOV R3, [R2]									; R3 tem o valor do caracter a mostrar
    MOV [R0], R3									; Coloca o caracter a mostrar no display
    ADD R0, 2										; Adiciona 2 ao endereço do display
    ADD R2, 2										; Adiciona 2 ao endereço do caracter a mostrar
    CMP R0, R1										; Compara o endereço do display com o endereço de fim do display
    JLE CicloDisplay								; Se o endereço do display for menor ou igual ao endereço de fim do display, repete o ciclo

    POP R3
    POP R1
    POP R0
    RET

;-----------------------------------------------------------------------------------------------------------------------------------------
;									                       Rotina Verifica Dinheiro
;-----------------------------------------------------------------------------------------------------------------------------------------
; Verfica a quantidade de cada tipo monetário no stock de modo a ter algum suficiente no inicio da maquina
;-----------------------------------------------------------------------------------------------------------------------------------------

VerificaDinheiro:

    PUSH R0
    PUSH R1
    PUSH R2
	PUSH R3
    PUSH R4
	PUSH R5
	PUSH R6
	PUSH R7

    MOV R0, StockMoedas10							; R0 tem o endereço do stock de moedas de 10 centimos (Que são as primeiras na memória)
    MOV R1, StockNotas5								; R1 tem o endereço do stock de notas de 5 euros (Que são as ultimas na memória)
	MOV R5, 16										; R5 tem o valor de 10 para passar de endereço em endereço
	MOV R6, DispMoedas10							; R6 tem o endereço da disponibilidade de moedas de 10 centimos
	MOV R7, DispNotas5								; R7 tem o endereço da disponibilidade de notas de 5 euros

CicloVerificaDinheiro:

	MOV R2, [R0]									; R2 tem a quantidade de dinheiro do valor monetário atual
	MOV R3, 5										; R3 tem o valor de 5 para comparar com a quantidade de dinheiro do valor monetário atual
	CMP R2, R3										; Compara a quantidade de dinheiro do valor monetário atual com 5
	JGE DinheiroSuficiente							; Se a quantidade de dinheiro do valor monetário atual for maior ou igual a 5, salta para a etiqueta DinheiroSuficiente
	MOV R4, 5										; R4 tem o valor de 5 de modo a obter a diferença
	SUB R4, R2										; R4 tem a quantidade de dinheiro do valor monetário atual que falta para ser 5
	ADD R2, R4										; Adiciona a quantidade de dinheiro do valor monetário atual que falta para ser 5
	MOVB [R0], R2									; Atualiza a quantidade de dinheiro do valor monetário atual
	MOV R4, 1										; R4 tem o valor 1 de modo a atualizar a disponibilidade
	MOVB [R6], R4									; Atualiza a disponibilidade do valor monetário atual

DinheiroSuficiente:

	ADD R0, R5										; Adiciona 16 ao endereço do valor monetário atual
	ADD R6, R5										; Adiciona 16 ao endereço da disponibilidade do valor monetário atual
	CMP R0, R1										; Compara o endereço do valor monetário atual com o endereço do valor monetário de 5 euros
	JLT CicloVerificaDinheiro						; Se o endereço do valor monetário atual for menor que o endereço do valor monetário de 5 euros, repete o ciclo

	POP R7
	POP R6
	POP R5
	POP R4
	POP R3
    POP R2
    POP R1
    POP R0
    RET

;-----------------------------------------------------------------------------------------------------------------------------------------
;									                               Jumps
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
;									                       Rotina Escrever Stock
;-----------------------------------------------------------------------------------------------------------------------------------------
; Escreve as quantidades de cada valor monetário do stock da maquina no display
;-----------------------------------------------------------------------------------------------------------------------------------------
; R6 -> Quantidade de valores a escrever
; R7 -> Endereço do primeiro valor a escrever
;-----------------------------------------------------------------------------------------------------------------------------------------

EscreverStock:

	PUSH R0
	PUSH R1
	PUSH R2
	PUSH R3

	MOV R0, 1										; R0 é o contador de valores escritos e começa a 1
	MOV R1, R6										; R1 tem a quantidade de valores a escrever
	MOV R2, R7										; R2 tem o endereço do primeiro valor a escrever
	MOV R3, 16										; R3 tem o valor 16 que é o número de bytes entre cada valor a escrever
	MOV R9, EndPrimeiroLugarStock					; R9 tem o endereço do primeiro lugar do display a escrever

CicloEscreveStock:

	MOVB R8, [R2]									; R8 tem a quantidade do valor monetário atual
	CALL EscreveDisplay								; Chama a rotina EscreveDisplay, que escreve a quantidade do valor monetário atual (valor em R8) no display (endereço em R9)
	ADD R0, 1										; Adiciona 1 ao contador de valores escritos
	CMP R0, R1										; Compara o contador de valores escritos com a quantidade de valores a escrever
	JGT FimCicloEscreveStock						; Se o contador de valores escritos for maior que a quantidade de valores a escrever, salta para a etiqueta FimCicloEscreveStock
	ADD R2, R3										; Adiciona 16 ao endereço do valor monetário atual de modo a passar para o próximo valor monetário
	ADD R9, R3										; Adiciona 16 ao endereço do display de modo a passar para o próximo lugar do display
	JMP CicloEscreveStock							; Repete o ciclo

FimCicloEscreveStock:

	POP R3
	POP R2
	POP R1
	POP R0
	RET

;-----------------------------------------------------------------------------------------------------------------------------------------
;									                        Rotina Escrever Display
;-----------------------------------------------------------------------------------------------------------------------------------------
; Escreve no display uma certa quantidade de valores, linha a linha na mesma coluna
;-----------------------------------------------------------------------------------------------------------------------------------------
; R8 -> Valor a escrever
; R9 -> Endereço a escrever
;-----------------------------------------------------------------------------------------------------------------------------------------

EscreveDisplay:

	PUSH R0
	PUSH R1
	PUSH R2
	PUSH R3

	MOV R0, R8										; R0 tem o valor a escrever
	MOV R1, R9										; R1 tem o endereço a escrever
	MOV R2, 10										; R2 tem o valor 10 usado para a conta para passar de deciaml para hexadecimal
	MOV R3, 48										; R3 tem o valor 48 que é o valor do caracter 0 em ASCII

CicloEscreveDisplay:

	MOD R0, R2										; R0 tem o resto da divisão do valor a escrever por 10
	ADD R0, R3										; Adiciona o valor do caracter 0 em ASCII ao valor a escrever
	MOVB [R1], R0									; Escreve o valor a escrever no display
	SUB R1, 1										; Subtrai 1 ao endereço a escrever de modo a para o lugar a esquerda se o valor a escrever tiver mais que 1 digito
	DIV R8, R2										; Divide o valor a escrever por 10 para obter o próximo digito
	CMP R8, 0										; Compara o valor a escrever com 0 para saber se tem mais um digito
	JEQ FimCicloEscreveDisplay						; Se o valor for 0 acaba o ciclo
	JMP CicloEscreveDisplay							; Se o valor não for 0 repete o ciclo

FimCicloEscreveDisplay:

	POP R3
	POP R2
	POP R1
	POP R0
	RET

;-----------------------------------------------------------------------------------------------------------------------------------------
;									                   Rotina Verifica Palavra-Passe
;-----------------------------------------------------------------------------------------------------------------------------------------
; Escreve no display uma certa quantidade de valores, linha a linha na mesma coluna
;-----------------------------------------------------------------------------------------------------------------------------------------

VerificaPalavraPasseStock:

	PUSH R0
	PUSH R1
	PUSH R2
	PUSH R3
	PUSH R4

	MOV R0, PalavraPasseStock						; R0 tem o endereço da palavra-passe para aceder ao stock
	MOV R1, PalavraPasseVerificar					; R1 tem o endereço da palavra-passe introduzida pelo utilizador

CicloVerificaPalavraPasseStock:

	MOVB R2, [R0]									; R2 tem o caracter da palavra-passe para aceder ao stock
	MOVB R3, [R1]									; R3 tem o caracter da palavra-passe introduzida pelo utilizador
	CMP R2, R3										; Compara o caracter da palavra-passe para aceder ao stock com o caracter da palavra-passe introduzida pelo utilizador
	JNE PalavraPasseErrada							; Se os caracteres forem diferentes, salta para a etiqueta PalavraPasseErrada
	ADD R0, 1										; Adiciona 1 ao endereço da palavra-passe para aceder ao stock
	ADD R1, 1										; Adiciona 1 ao endereço da palavra-passe introduzida pelo utilizador
	MOVB R4, [R0]									; R4 tem o próximo caracter da palavra-passe para aceder ao stock									
	CMP R4, 0										; Compara o próximo caracter da palavra-passe para aceder ao stock com 0
	JNE CicloVerificaPalavraPasseStock				; Se o próximo caracter da palavra-passe para aceder ao stock não for 0, repete o ciclo
	JMP PalavraPasseCorreta							; Se o próximo caracter da palavra-passe para aceder ao stock for 0, salta para a etiqueta PalavraPasseCorreta

PalavraPasseErrada:

	MOV R6, 0										; R6 tem o valor 0, que quer dizer que a palavra-passe está errada
	JMP FimCicloVerificaPalavraPasseStock

PalavraPasseCorreta:

	MOV R6, 1										; R6 tem o valor 0, que quer dizer que a palavra-passe está errada
	JMP FimCicloVerificaPalavraPasseStock

FimCicloVerificaPalavraPasseStock:

	POP R4
	POP R3
	POP R2
	POP R1
	POP R0
	RET

;-----------------------------------------------------------------------------------------------------------------------------------------
;									                           Etiqueta Comprar
;-----------------------------------------------------------------------------------------------------------------------------------------
;
;-----------------------------------------------------------------------------------------------------------------------------------------

RotinaComprar:

    MOV R2, Display_MenuComprar						; R2 tem o endereço do display do menu de compra
    CALL MostraDisplay								; Mostra o display do menu de compra
    CALL LimpaPerifericos							; Limpa os periféricos

LeOpcaoComprar:

	MOV R0, Opcao                                           
    MOVB R1, [R0]                                         
    CMP R1, 0
	JEQ LeOpcaoComprar                                     
	
	MOV R5, BEstacao1Preco
	CMP R1, OpcaoEst1
	JEQ RotinaInserirDinheiro1

	MOV R5, BEstacao2Preco
	CMP R1, OpcaoEst2
	JEQ RotinaInserirDinheiro1

	MOV R5, BEstacao3Preco
    CMP R1, OpcaoEst3
	JEQ RotinaInserirDinheiro1

	MOV R5, BEstacao4Preco
	CMP R1, OpcaoEst4
	JEQ RotinaInserirDinheiro1

	MOV R5, BEstacao5Preco
    CMP R1, OpcaoEst5
	JEQ RotinaInserirDinheiro1

    CMP R1, OpcaoCancelarCompra
	JEQ LigadoIntermedio3
	
	CALL RotinaErro
	JMP RotinaComprar

RotinaInserirDinheiro1:

	MOV R2, Display_InserirDinheiro1
	CALL MostraDisplay
	CALL LimpaPerifericos

LeOpcaoInserirDinheiro1:

	MOV R0, Opcao                                           
	MOVB R1, [R0]                                         
	CMP R1, 0
	JEQ LeOpcaoInserirDinheiro1
	
	CMP R1, Opcao10CentimosInserir1
	JEQ QunatidadeDinheiroInserir

	CMP R1, Opcao20CentimosInserir1
	JEQ QunatidadeDinheiroInserir

	CMP R1, Opcao50CentimosInserir1
	JEQ QunatidadeDinheiroInserir

	CMP R1, OpcaoSeguinteInserir1
	JEQ RotinaInserirDinheiro2

	CMP R1, OpcaoCancelarInserir1
	JEQ LigadoIntermedio3
	
	CALL RotinaErro
	JMP RotinaInserirDinheiro1

RotinaInserirDinheiro2:

	MOV R2, Display_InserirDinheiro2
	CALL MostraDisplay
	CALL LimpaPerifericos

LeOpcaoInserirDinheiro2:

	MOV R0, Opcao                                           
	MOVB R1, [R0]                                         
	CMP R1, 0
	JEQ LeOpcaoInserirDinheiro2
	
	CMP R1, Opcao1EuroInserir2
	JEQ QunatidadeDinheiroInserir

	CMP R1, Opcao2EuroInserir2
	JEQ QunatidadeDinheiroInserir

	CMP R1, Opcao5EurosInserir2
	JEQ QunatidadeDinheiroInserir

	CMP R1, OpcaoSeguinteInserir2
	JEQ RotinaInserirDinheiro3

	CMP R1, OpcaoCancelarInserir2
	JEQ LigadoIntermedio3
	
	CALL RotinaErro
	JMP RotinaInserirDinheiro2

RotinaInserirDinheiro3:

	MOV R2, Display_InserirDinheiro3
	CALL MostraDisplay
	CALL LimpaPerifericos

LeOpcaoInserirDinheiro3:

	MOV R0, Opcao                                           
	MOVB R1, [R0]                                         
	CMP R1, 0
	JEQ LeOpcaoInserirDinheiro3

	CMP R1, Opcao10EuroInserir3
	JEQ QunatidadeDinheiroInserir

	CMP R1, Opcao20EuroInserir3
	JEQ QunatidadeDinheiroInserir

	CMP R1, OpcaoSeguinteInserir3
	JEQ QunatidadeDinheiroInserir

	CMP R1, OpcaoCancelarInserir3
	JEQ LigadoIntermedio3

	CMP R1, OpcaoConfirmarInserir3
	JEQ RotinaInserirDinheiro3
	
	CALL RotinaErro
	JMP RotinaInserirDinheiro3

QunatidadeDinheiroInserir:

	MOV R2, Display_QuantasInserir
	CALL MostraDisplay
	CALL LimpaPerifericos

LeQuantidadeDinheiroInserir:

	MOV R0, Opcao                                           
	MOVB R1, [R0]                                         
	CMP R1, 0
	JEQ LeQuantidadeDinheiroInserir

	CMP R1, OpcaoConfirmarInserir
	JEQ LigadoIntermedio3

	CMP R1, OpcaoCancelarInserir
	JEQ LigadoIntermedio3

	CALL RotinaErro
	JMP QunatidadeDinheiroInserir

;-----------------------------------------------------------------------------------------------------------------------------------------
;									                         Etiqueta Usar Cartão
;-----------------------------------------------------------------------------------------------------------------------------------------
;
;-----------------------------------------------------------------------------------------------------------------------------------------

RotinaUsarCartao:

    MOV R2, Display_CodigoPEPE
    CALL MostraDisplay
    CALL LimpaPerifericos

LeOpcaoUsarCartao:

	MOV R0, Opcao                                           
    MOVB R1, [R0]                                         
    CMP R1, 0
	JEQ LeOpcaoUsarCartao                                   
	
	CMP R1, OpcaoContinuarCartao
	JEQ LigadoIntermedio3

	CMP R1, OpcaoCancelarCartao
	JEQ LigadoIntermedio3
	
	CALL RotinaErro
	JMP RotinaUsarCartao

;-----------------------------------------------------------------------------------------------------------------------------------------
;									                               Jumps
;-----------------------------------------------------------------------------------------------------------------------------------------

LigadoIntermedio3:
    JMP LigadoIntermedio2

RotinaComprarIntermedio3:
    JMP RotinaComprarIntermedio2

RotinaUsarCartaoIntermedio3:
    JMP RotinaUsarCartaoIntermedio2

RotinaStockIntermedio3:
    JMP RotinaStockIntermedio2

;-----------------------------------------------------------------------------------------------------------------------------------------
;									                            Etiqueta Stock
;-----------------------------------------------------------------------------------------------------------------------------------------
;
;-----------------------------------------------------------------------------------------------------------------------------------------

VerificacaoStock:

	MOV R2, Display_VerificacaoStock				; R2 tem o endereço do display para autenticação no stock
	CALL MostraDisplay								; Mostra o display de autenticação no stock
	CALL LimpaPerifericos							; Limpa os periféricos

LePalavraPasseStock:

	MOV R0, Opcao         							; R0 tem o endereço do botão opção                                  
	MOVB R1, [R0]									; Leitura do periferico Opção                                         
	CMP R1, 0										; Compara o valor do botão opção com 0
	JEQ LePalavraPasseStock							; Se o valor do botão for 0, refaz a leitura                                 

	CMP R1, OpcaoConsultarVerificarStock			; Compara o valor do botão opção com a opção de consultar stock
	JEQ ConsultarVerificarStock						; Se o valor do botão for igual à opção de consultar stock, salta para a etiqueta ConsultarVerificarStock

	CMP R1, OpcaoCancelarVerificarStock				; Compara o valor do botão opção com a opção de cancelar
	JEQ LigadoIntermedio3							; Se o valor do botão for igual à opção de cancelar, salta para o menu principal

	CALL RotinaErro
	JMP VerificacaoStock

ConsultarVerificarStock:

	MOV R6, 0										; R6 tem o valor 0
	CALL VerificaPalavraPasseStock					; Chama a rotina VerificaPalavraPasseStock, que verifica se a palavra-passe introduzida está correta
	CMP R6, 1										; Compara o valor de R6 com 1, que quer dizer que a palavra-passe está correta
	JEQ ConsultarStock								; Se o valor de R6 for 1, salta para a etiqueta ConsultarStock

PalavraPasseIntroduzidaErrada:

	MOV R2, Display_PalavraPasseErrada				; R2 tem o endereço do display de palavra-passe errada
	CALL MostraDisplay								; Mostra o display de palavra-passe errada
	CALL LimpaPerifericos							; Limpa os periféricos

LeOpcaoPalavraPasseIntroduzidaErrada:

	MOV R0, Opcao         							; R0 tem o endereço do botão opção                                  
	MOVB R1, [R0]									; Leitura do periferico Opção                                         
	CMP R1, 0										; Compara o valor do botão opção com 0
	JEQ LeOpcaoPalavraPasseIntroduzidaErrada					; Se o valor do botão for 0, refaz a leitura                                 
	
	CMP R1, OpcaoVoltarErro							; Compara o valor do botão opção com a opção de voltar
	JEQ VerificacaoStock							; Se o valor do botão for igual à opção de voltar, salta para a etiqueta VerificacaoStock

	CALL RotinaErro
	JMP PalavraPasseIntroduzidaErrada

ConsultarStock:

	MOV R2, Display_ConsultarStock1					; R2 tem o endereço do display do menu de consultar stock
	CALL MostraDisplay								; Mostra o primeiro display de consultar stock
	CALL LimpaPerifericos							; Limpa os periféricos
	MOV R6, 3										; R6 tem o valor 3 que é o número de valores a escrever no display
	MOV R7, StockMoedas10							; R7 tem o endereço do primeiro valor a escrever no display
	CALL EscreverStock								; Chama a rotina EscreverStock, que escreve as quantidades dos valores monetários no stock da maquina no display

LeOpcaoConsultarStock:

	MOV R0, Opcao         							; R0 tem o endereço do botão opção                                  
	MOVB R1, [R0]									; Leitura do periferico Opção                                         
	CMP R1, 0										; Compara o valor do botão opção com 0
	JEQ LeOpcaoConsultarStock						; Se o valor do botão for 0, refaz a leitura                                 
	
	CMP R1, OpcaoSeguinteStock						; Compara o valor do botão opção com a opção de seguinte
	JEQ ConsultarStock2								; Se o valor do botão for igual à opção de seguinte, salta para a próxima página de stock

	CMP R1, OpcaoSairStock							; Compara o valor do botão opção com a opção de sair
	JEQ LigadoIntermedio3							; Se o valor do botão for igual à opção de sair, salta para o menu principal

	CALL RotinaErro
	JMP ConsultarStock

ConsultarStock2:

	MOV R2, Display_ConsultarStock2					; R2 tem o endereço do display do menu de consultar stock
	CALL MostraDisplay								; Mostra o segundo display de consultar stock
	CALL LimpaPerifericos							; Limpa os periféricos
	MOV R6, 3										; R6 tem o valor 3 que é o número de valores a escrever no display
	MOV R7, StockMoedas1							; R7 tem o endereço do primeiro valor a escrever no display
	CALL EscreverStock								; Chama a rotina EscreverStock, que escreve as quantidades dos valores monetários no stock da maquina no display

LeOpcaoConsultarStock2:

	MOV R0, Opcao									; R0 tem o endereço do botão opção                                           
	MOVB R1, [R0]									; Leitura do periferico Opção                                         
	CMP R1, 0										; Compara o valor do botão opção com 0
	JEQ LeOpcaoConsultarStock2						; Se o valor do botão for 0, refaz a leitura                                  
	
	CMP R1, OpcaoAnteriorStock						; Compara o valor do botão opção com a opção de anterior
	JEQ ConsultarStock								; Se o valor do botão for igual à opção de anterior, salta para a página anterior de stock

	CMP R1, OpcaoSairStock							; Compara o valor do botão opção com a opção de sair
	JEQ LigadoIntermedio3							; Se o valor do botão for igual à opção de sair, salta para o menu principal

	CALL RotinaErro
	JMP ConsultarStock2

;-----------------------------------------------------------------------------------------------------------------------------------------
;									                            Rotina Erro
;-----------------------------------------------------------------------------------------------------------------------------------------
;
;-----------------------------------------------------------------------------------------------------------------------------------------

RotinaErro:

    JMP Ligado