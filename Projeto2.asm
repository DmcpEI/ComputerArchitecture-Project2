
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

; Menu Preco Total
OpcaoContinuarPrecoTotal EQU 1
OpcaoCancelarPrecoTotal EQU 2

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

; Menu Inseriu Dinheiro
OpcaoContinuarInseriuDinheiro EQU 1

; Menu Talao
OpcaoContinuarTalao EQU 1

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

; Menu Escolher Bilhete
OpcaoSimEscolherBilhete EQU 1
OpcaoNaoEscolherBilhete EQU 2

; Menu Erro
OpcaoVoltarErro EQU 7


CaracterVazio EQU 20H                                       ; Caracter vazio

StackPointer EQU 1000H		                                ; Endereço do Stack Pointer

;Endereços para escrita de valores--------------------------------------------------------------------------------------------------------

; Stock
EndPrimeiroLugarStock EQU 22DH								; Endereço do primeiro lugar do display para escrever o valor no stock (da direita para a esquerda)

; Preço Total
EndEscreverPrecoTotalCentimos EQU 239H						; Endereço do primeiro lugar do display para escrever os centimos do preço total (da direita para a esquerda)
EndEscreverPrecoTotalEuros EQU 236H							; Endereço do primeiro lugar do display para escrever os euros preço total (da direita para a esquerda)

; Dinheiro Inserido
EndDinheiroInseridoCentimos EQU 22EH						; Endereço do primeiro lugar do display para escrever os centimos do dinheiro inserido (da direita para a esquerda)
EndDinheiroInseridoEuros EQU 22BH							; Endereço do primeiro lugar do display para escrever os euros do dinheiro inserido (da direita para a esquerda)

; Talão
EndNumeroPEPETalao EQU 219H									; Endereço do primeiro lugar do display para escrever o número do PEPE (da direita para a esquerda)
EndPrecosCentimosTalao EQU 22EH								; Endereço do primeiro lugar do display para escrever os centimos do preco total no talão
EndPrecosEurosTalao EQU 22BH								; Endereço do primeiro lugar do display para escrever os euros do preco total no talão

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

; Valores monetarios
Valor10Centimos EQU 10
Valor20Centimos EQU 20
Valor50Centimos EQU 50
Valor1Euro EQU 100
Valor2Euros EQU 200
Valor5Euros EQU 500

;Variáveis de Compra---------------------------------------------------------------------------------------------------------------------

PrecoTotalCompra EQU 500H									; Preço total da compra a ser feita
ValorInseridoCompra EQU 510H								; Valor total inserido pelo utilizador durante o pagamento
ValorEmFaltaCompra EQU 520H									; Valor que falta para completar o preço total da compra (PrecoTotalCompra - ValorInseridoCompra)
TrocoCompra EQU 530H										; Troco a ser devolvido ao utilizador (ValorInseridoCompra - PrecoTotalCompra)

;PEPEs-----------------------------------------------------------------------------------------------------------------------------------

BaseDeDadosPEPE EQU 1000H									; Endereço inicial da base de dados dos PEPEs
FimBaseDeDadosPEPE EQU 1090H								; Endereço final da base de dados dos PEPEs
NPepes EQU 10A0H											; Número de PEPEs na base de dados (Máximo de 10 PEPEs)

;Passe do Stock--------------------------------------------------------------------------------------------------------------------------

Place 100H
PalavraPasseStock:											;Palavra-passe para aceder ao stock (73 74 6F 63 6B)
	String "stock"

PalavraPasseVerificar EQU 235H 								; Palavra-passe escrita pelo utilizador para verificação

;-----------------------------------------------------------------------------------------------------------------------------------------
;                                                               Menus
;-----------------------------------------------------------------------------------------------------------------------------------------

PLACE 2000H

Display_MenuInicial:

    String " MAQUINA VENDAS "
    String "     METRO      "
    String "                "
    String "1 -  Comprar    "
    String "2 -  Usar Cartao"
    String "3 -  Stock      "
	String "                "

PLACE 2100H

Display_MenuComprar:

    String "  MENU ESTACAO  "
    String "1-ESTACAO 1:1.50"
    String "2-ESTACAO 2:2.50"
    String "3-ESTACAO 3:4.00"
    String "4-ESTACAO 4:5.50"
    String "5-ESTACAO 5:7.00"
	String "6 - Cancelar    "

PLACE 2200H

Display_Talao:

    String "   PEPE GERADO  "
    String "       000      "
	String "Total:      .00 "
	String "Inserido:   .00 "
	String "Troco:      .00 "
	String "                "
	String " 1 - Continuar  "
    
PLACE 2300H

Display_CodigoPEPE:
    
    String "  INTRODUZA N.  "
    String "      PEPE      "
    String "                "
    String "     XXXXX      "
    String "                "
    String " 1 - Continuar  "
    String " 5 - Cancelar   "

PLACE 2400H

Display_NPEPEErrado:
	String " ---- ERRO ---- "
	String "                "
	String "     Nº PEPE    "
	String "    incorreto   "
	String "                "
	String " 7 - Voltar     "
	String " ---- ERRO ---- "

PLACE 2500H

Display_MenuUsarPEPE:

    String "   SALDO PEPE   "
    String "                "
    String "     00.00      "
    String "                "
    String "1 - Comprar     "
    String "2 - Recarregar  "
    String "                "

PLACE 2600H

Display_Pagamento:
    String "   Pagamento    "
	String "   Inserido:    "
	String "     0.00       "
	String "     Euros      "
	String "                "
	String "6 - Cancelar    "
	String "9 - Confirmar   "

Place 2700H  											  

Display_FaltaMoedasTroco:
	String "---- Alerta ----"
	String "     Moedas     "
	String "    Em stock    "
	String "  insuficientes "
	String "   para troco   "
	String "                "
	String " 1 - Continuar  "

Place 2800H

Display_FaltaInserirMoedas:
	String " ---- ERRO ---- "
	String " Valor inserido "
    String "       é        "
	String "  insuficiente  "
	String "                "
	String " 7 - Voltar     "
	String " ---- ERRO ---- "

Place 2900H

Display_Agradecimento:
	String "!!!!!!!!!!!!!!!!"
	String "    Obrigado    "
	String "    Pela sua    "
	String "     Compra     "
	String "                "
	String " 1 - Continuar  "
	String "!!!!!!!!!!!!!!!!"

Place 2A00H

Display_VerificacaoStock:           
	String "     STOCK      "
	String "                "
	String " PALAVRA-PASSE: "
	String "     *****      "
	String "                "
	String "1 - Consultar   "
	String "7 - Cancelar    "

Place 2B00H
                                                   
Display_ConsultarStock1:
	String "    CONSULTA    "
	String "     STOCK      "
	String " 10 Cent...     "
	String " 20 Cent...     "
	String " 50 Cent...     "
    String "5 - Seguinte    "
	String "7 - Sair        "

Place 2C00H

Display_ConsultarStock2:
	String "    CONSULTA    "
	String "     STOCK      "
	String " 1 Euro....     "
	String " 2 Euros...     "
	String " 5 Euros...     "
	String "6 - Anterior    "
	String "7 - Sair        "
	
Place 2D00H

Display_InserirDinheiro1:
	String "    INSERCAO    "
	String "  DE  DINHEIRO  " 
	String "1 - 10 Cent     "
	String "2 - 20 Cent     "
	String "3 - 50 Cent     "
	String "5 - Seguinte    "
	String "7 - Cancelar    "

Place 2E00H

Display_InserirDinheiro2:
	String "    INSERCAO    "
	String "  DE  DINHEIRO  " 
	String "1 - 1 Euro      "
	String "2 - 2 Euros     "
	String "3 - 5 Euros     "
	String "5 - Seguinte    "
	String "7 - Cancelar    "

Place 2F00H

Display_InserirDinheiro3:
	String "    INSERCAO    "
	String "  DE  DINHEIRO  " 
	String "1 - 10 Euros    "
	String "2 - 20 Euros    "
	String "                "
	String "5 - Seguinte    "
	String "7 - Cancelar    "

Place 3000H

Display_QuantasInserir:
	String "    Quantas     "
	String " moedas / notas "
	String "    inserir?    "
	String "       0        "
	String "                "
	String "1 - Confirmar   "
	String "7 - Cancelar    "

Place 3100H

Display_InseridoSucesso:
	String "!!!!!!!!!!!!!!!!"
	String "                "
	String "    Dinheiro    "
	String "  inserido com  "
	String "    sucesso     "
	String "                "
	String "1 - Seguinte    "

Place 3200H

Display_DinheiroInseridoDevolvido:      
	String "!!!!!!!!!!!!!!!!"
	String "                "
	String "    Dinheiro    "
	String "  devolvido com "
	String "    sucesso     "
	String "                "
	String "1 - Seguinte    "   

Place 3300H

Display_PalavraPasseErrada:
	String " ---- ERRO ---- "
	String " PALAVRA-PASSE  "
    String "    INSERIDA    "
	String "   INCORRETA    "
	String "                "
	String " 7 - Voltar     "
	String " ---- ERRO ---- "

Place 3400H

Display_EscolheuBilhete:
	String "----------------"
	String "ESCOLHEU BILHETE"
	String "                "
	String "DESEJA ESCOLHER "
	String " OUTRA ESTACAO? "
	String "1 - Sim  2 - Nao"
	String "----------------"

Place 3500H

Display_PrecoTotal:
	String "----------------"
	String "  PRECO TOTAL   "
	String "----------------"
	String "       .00      "
	String "1 - Continuar   "
	String "2 - Cancelar    "
	String "----------------"

Place 3600H

Display_Erro:
	String " ---- ERRO ---- "
	String "                "
	String "    OPCAO NAO   "
	String "   DISPONIVEL   "
	String "                "
	String " 7 - Voltar     "
	String " ---- ERRO ---- "

Place 3700H

Display_InseriuDinheiro:
	String "----------------"
	String "                "
	String " INSERIU:   .00 "
	String " FALTA:     .00 "
	String "                "
	String "1 - Continuar   "
	String "----------------"
   
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

	MOV R1, R9										; R1 tem o endereço a escrever
	MOV R2, 10										; R2 tem o valor 10 usado para a conta para passar de decimal para hexadecimal
	MOV R3, 48										; R3 tem o valor 48 que é o valor do caracter 0 em ASCII

CicloEscreveDisplay:

	MOV R0, R8										; R0 tem o valor a escrever
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
	PUSH R8
	PUSH R9

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

	POP R9
	POP R8
	POP R3
	POP R2
	POP R1
	POP R0
	RET

;-----------------------------------------------------------------------------------------------------------------------------------------
;									                       Rotina Escrever Preco
;-----------------------------------------------------------------------------------------------------------------------------------------
; 
;-----------------------------------------------------------------------------------------------------------------------------------------
; R7 -> Preço a escrever
;-----------------------------------------------------------------------------------------------------------------------------------------

EscreverPreco:

	PUSH R0
	PUSH R1
	PUSH R2
	PUSH R3
	PUSH R8
	PUSH R9

	MOV R1, 100										; R1 tem o valor 100 para obter os euros e os cêntimos					

	MOV R0, R7										; R0 tem o preço a escrever					
	DIV R0, R1										; R0 tem os euros			

	MOV R3, R7										; R3 tem o preço a escrever             					
	MOD R3, R1										; R3 tem os cêntimos					

CicloEscrevePreco:

	MOV R9, EndEscreverPrecoTotalEuros				; R9 tem o endereço a escrever
	MOV R8, R0										; R8 tem os euros
	CALL EscreveDisplay								; Chama a rotina EscreveDisplay, que escreve os euros no display	
	MOV R9, EndEscreverPrecoTotalCentimos			; R9 tem o endereço a escrever
	MOV R8, R3										; R8 tem os cêntimos
	CALL EscreveDisplay								; Chama a rotina EscreveDisplay, que escreve os cêntimos no display							

	POP R9
	POP R8
	POP R3
	POP R2
	POP R1
	POP R0
	RET

;-----------------------------------------------------------------------------------------------------------------------------------------
;									                  Rotina Atualizar Preco Em Falta
;-----------------------------------------------------------------------------------------------------------------------------------------
; Atualiza e escreve o preço em falta da compra e o valor total inserido pelo utilizador
;-----------------------------------------------------------------------------------------------------------------------------------------
; R5 -> Valor inserido pelo o utilizador
;-----------------------------------------------------------------------------------------------------------------------------------------

AtualizarPrecoEmFalta:

	PUSH R0
	PUSH R1
	PUSH R2
	PUSH R6
	PUSH R7

	MOV R0, ValorInseridoCompra						; R0 tem o endereço do valor total inserido pelo utilizador
	MOV R1, [R0] 									; R1 tem o valor total inserido pelo utilizador						
	ADD R1, R5										; Adiciona o valor inserido pelo utilizador ao valor total inserido
	MOV [R0], R1									; Atualiza o valor total inserido pelo utilizador 			

	MOV R0, ValorEmFaltaCompra						; R0 tem o endereço do preço em falta da compra
	MOV R1, [R0]									; R1 tem o preço em falta da compra

	CMP R5, R1										; Compara o valor inserido pelo utilizador
	JGE FoiPago										; Se o valor inserido pelo utilizador for maior ou igual ao preço em falta da compra, salta para a etiqueta Pago

	SUB R1, R5 										; Subtrai o valor inserido pelo utilizador ao preço em falta da compra				
	MOV [R0], R1									; Atualiza o preço em falta da compra 					

	MOV R2, ValorInseridoCompra						; R2 tem o endereço do valor total inserido pelo utilizador
	MOV R6, [R2]									; R6 tem o valor total inserido pelo utilizador						
	MOV R2, ValorEmFaltaCompra						; R2 tem o endereço do preço em falta da compra
	MOV R7, [R2]									; R7 tem o preço em falta da compra

	CALL EscreverPrecoAtualizado					; Chama a rotina EscreverPrecoAtualizado, que escreve o preço em falta da compra e o valor inserido total atualizados no display

	JMP FimAtualizarPrecoEmFalta					; Salta para a etiqueta FimAtualizarPrecoEmFalta

FoiPago:

	MOV R1, 0 										; R1 tem o valor 0
	MOV [R0], R1									; Atualiza o preço em falta da compra para 0
	MOV R10, 1										; R10 tem o valor 1 para sinalizar que o preço em falta foi pago

	JMP FimAtualizarPrecoEmFalta					; Salta para a etiqueta FimAtualizarPrecoEmFalta
	
FimAtualizarPrecoEmFalta:

	POP R7
	POP R6
	POP R2
	POP R1
	POP R0
	RET

;-----------------------------------------------------------------------------------------------------------------------------------------
;									                  Rotina Escrever Preco Atualizado
;-----------------------------------------------------------------------------------------------------------------------------------------
; Escreve o preço total inserido pelo utilizador e o valor que falta para completar o preço total da compra
;-----------------------------------------------------------------------------------------------------------------------------------------
; R6 -> Valor total inserido pelo utilizador
; R7 -> Valor que falta para completar o preço total da compra
;-----------------------------------------------------------------------------------------------------------------------------------------

EscreverPrecoAtualizado:

	PUSH R0
	PUSH R1
	PUSH R2
	PUSH R3
	PUSH R4
	PUSH R5
	PUSH R8
	PUSH R9

	MOV R0, 100										; R0 tem o valor 100 para obter os euros e os cêntimos 
	MOV R3, EndDinheiroInseridoEuros				; R3 tem o endereço a escrever os euros
	MOV R4, EndDinheiroInseridoCentimos				; R4 tem o endereço a escrever os cêntimos
	MOV R5, 16										; R5 tem o valor 16 para passar de linha em linha

CicloEscrevePrecoAtualizado:

	MOV R1, R6										; R1 tem o valor total inserido pelo utilizador										
	DIV R1, R0										; R1 tem os euros     													
	MOV R2, R6										; R2 tem o valor total inserido pelo utilizador										
	MOD R2, R0										; R2 tem os cêntimos									

	MOV R9, R3										; R9 tem o endereço a escrever os euros
	MOV R8, R1										; R8 tem os euros
	CALL EscreveDisplay								; Chama a rotina EscreveDisplay, que escreve os euros no display	
	MOV R9, R4										; R9 tem o endereço a escrever os cêntimos
	MOV R8, R2										; R8 tem os cêntimos
	CALL EscreveDisplay								; Chama a rotina EscreveDisplay, que escreve os cêntimos no display	

	MOV R1, R3										; R1 tem o endereço a escrever os euros
	MOV R2, R4										; R2 tem o endereço a escrever os cêntimos
	ADD R1, R5										; Adiciona 16 ao endereço a escrever os euros para passar para a proxima linha
	ADD R2, R5										; Adiciona 16 ao endereço a escrever os cêntimos para passar para a proxima linha

	MOV R3, R7										; R3 tem o valor que falta para completar o preço total da compra										
	DIV R3, R0										; R3 tem os euros													
	MOV R4, R7										; R4 tem o valor que falta para completar o preço total da compra										
	MOD R4, R0										; R4 tem os cêntimos

	MOV R9, R1										; R9 tem o endereço a escrever os euros
	MOV R8, R3										; R8 tem os euros
	CALL EscreveDisplay								; Chama a rotina EscreveDisplay, que escreve os euros no display	
	MOV R9, R2										; R9 tem o endereço a escrever os cêntimos
	MOV R8, R4										; R8 tem os cêntimos
	CALL EscreveDisplay								; Chama a rotina EscreveDisplay, que escreve os cêntimos no display	

	POP R9
	POP R8
	POP R5
	POP R4
	POP R3
	POP R2
	POP R1
	POP R0
	RET

;-----------------------------------------------------------------------------------------------------------------------------------------
;									                      Rotina Escrever Talao
;-----------------------------------------------------------------------------------------------------------------------------------------
; Escreve os valores do número do PEPE criado, do preço total da compra, valor total inserido pelo utilizador e troco no talão
;-----------------------------------------------------------------------------------------------------------------------------------------

EscreverTalao:

	PUSH R0
	PUSH R1
	PUSH R2
	PUSH R3
	PUSH R4
	PUSH R5
	PUSH R6
	PUSH R7
	PUSH R8
	PUSH R9

	MOV R0, 16										; R0 tem o valor 16 para passar de endereço em endereço
	MOV R1, 100										; R1 tem o valor 100 para obter os euros e os cêntimos

	MOV R2, EndNumeroPEPETalao						; R2 tem o endereço a escrever o número do PEPE
	MOV R3, EndPrecosEurosTalao						; R3 tem o primeiro endereço a escrever os euros dos preços	
	MOV R4, EndPrecosCentimosTalao					; R4 tem o primeiro endereço a escrever os cêntimos dos preços						

	; Escrever o número do PEPE
	MOV R5, NPepes									; R5 tem o endereço do número de PEPEs
	MOV R6, [R5]									; R6 tem o número de PEPEs
	ADD R6, 1										; Adiciona 1 ao número de PEPEs
	MOV [R5], R6									; Atualiza o número de PEPEs

	MOV R8, [R5]									; R8 tem o número de PEPEs
	MOV R9, R2										; R9 tem o endereço a escrever o número do PEPE
	CALL EscreveDisplay								; Chama a rotina EscreveDisplay, que escreve o número do PEPE no display

	; Escrever o preço total
	MOV R5, PrecoTotalCompra						; R5 tem o endereço do preço total da compra
	MOV R6, [R5]									; R6 tem o preço total da compra
	DIV R6, R1										; R6 tem os euros do preco total
	MOV R7, [R5]									; R7 tem o preço total da compra
	MOD R7, R1										; R7 tem os cêntimos do preco total

	MOV R9, R3										; R9 tem o endereço a escrever os euros do preço total
	MOV R8, R6										; R8 tem os euros do preço total
	CALL EscreveDisplay								; Chama a rotina EscreveDisplay, que escreve os euros do preço total no display
	MOV R9, R4										; R9 tem o endereço a escrever os cêntimos do preço total
	MOV R8, R7										; R8 tem os cêntimos do preço total
	CALL EscreveDisplay								; Chama a rotina EscreveDisplay, que escreve os cêntimos do preço total no display

	MOV R6, R3										; R6 tem o endereço a escrever os euros dos preços
	MOV R7, R4										; R7 tem o endereço a escrever os cêntimos dos preços
	ADD R6, R0										; Adiciona 16 ao endereço a escrever os euros dos preços para passar para o próximo preço a escrever que neste caso é o valor total inserido
	ADD R7, R0										; Adiciona 16 ao endereço a escrever os cêntimos dos preços para passar para o próximo preço a escrever que neste caso é o valor total inserido

	; Escrever o valor inserido
	MOV R5, ValorInseridoCompra						; R5 tem o endereço do valor total inserido pelo utilizador
	MOV R3, [R5]									; R3 tem o valor total inserido pelo utilizador
	DIV R3, R1										; R3 tem os euros do valor total inserido
	MOV R4, [R5]									; R4 tem o valor total inserido pelo utilizador
	MOD R4, R1										; R4 tem os cêntimos do valor total inserido

	MOV R9, R6										; R9 tem o endereço a escrever os euros do valor total inserido
	MOV R8, R3										; R8 tem os euros do valor total inserido
	CALL EscreveDisplay								; Chama a rotina EscreveDisplay, que escreve os euros do valor total inserido no display
	MOV R9, R7										; R9 tem o endereço a escrever os cêntimos do valor total inserido
	MOV R8, R4										; R8 tem os cêntimos do valor total inserido
	CALL EscreveDisplay								; Chama a rotina EscreveDisplay, que escreve os cêntimos do valor total inserido no display


	MOV R3, R6										; R3 tem o endereço a escrever os euros dos preços
	MOV R4, R7										; R4 tem o endereço a escrever os cêntimos dos preços
	ADD R3, R0										; Adiciona 16 ao endereço a escrever os euros dos preços para passar para o próximo preço a escrever que neste caso é o troco
	ADD R4, R0										; Adiciona 16 ao endereço a escrever os cêntimos dos preços para passar para o próximo preço a escrever que neste caso é o troco

	; Escrever o troco
	MOV R5, TrocoCompra								; R5 tem o endereço do troco da compra
	MOV R6, [R5]									; R6 tem o troco da compra
	DIV R6, R1										; R6 tem os euros do troco
	MOV R7, [R5]									; R7 tem o troco da compra
	MOD R7, R1										; R7 tem os cêntimos do troco

	MOV R9, R3										; R9 tem o endereço a escrever os euros do troco
	MOV R8, R6										; R8 tem os euros do troco
	CALL EscreveDisplay								; Chama a rotina EscreveDisplay, que escreve os euros do troco no display
	MOV R9, R4										; R9 tem o endereço a escrever os cêntimos do troco
	MOV R8, R7										; R8 tem os cêntimos do troco
	CALL EscreveDisplay								; Chama a rotina EscreveDisplay, que escreve os cêntimos do troco no display

	POP R9
	POP R8
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
	JEQ EscolhaBilhetes

	MOV R5, BEstacao2Preco
	CMP R1, OpcaoEst2
	JEQ EscolhaBilhetes

	MOV R5, BEstacao3Preco
    CMP R1, OpcaoEst3
	JEQ EscolhaBilhetes

	MOV R5, BEstacao4Preco
	CMP R1, OpcaoEst4
	JEQ EscolhaBilhetes

	MOV R5, BEstacao5Preco
    CMP R1, OpcaoEst5
	JEQ EscolhaBilhetes

    CMP R1, OpcaoCancelarCompra
	JEQ VoltarInicio
	
	CALL RotinaErro
	JMP RotinaComprar

VoltarInicio:
	JMP Ligado

EscolhaBilhetes:

	MOV R2, Display_EscolheuBilhete					; R2 tem o endereço do display da escolha de bilhetes
	CALL MostraDisplay								; Mostra o display da escolha de bilhetes
	CALL LimpaPerifericos							; Limpa os periféricos
	MOV R6, PrecoTotalCompra						; R6 tem o endereço do preço total da compra
	MOV R7, [R6]									; R7 tem o valor do preço total da compra
	ADD R7, R5										; Adiciona o preço do bilhete escolhido ao preço total da compra
	MOV [R6], R7									; Atualiza o preço total da compra

LeOpcaoEscolhaBilhetes:

	MOV R0, Opcao                                           
	MOVB R1, [R0]                                         
	CMP R1, 0
	JEQ LeOpcaoEscolhaBilhetes                                     
	
	CMP R1, OpcaoSimEscolherBilhete
	JEQ RotinaComprar

	CMP R1, OpcaoNaoEscolherBilhete
	JEQ MostraPrecoTotal
	
	CALL RotinaErro
	JMP EscolhaBilhetes

MostraPrecoTotal:

	MOV R2, Display_PrecoTotal						; R2 tem o endereço do display do preço total
	CALL MostraDisplay								; Mostra o display do preço total
	CALL LimpaPerifericos							; Limpa os periféricos
	MOV R6, PrecoTotalCompra						; R6 tem o endereço do preço total da compra
	MOV R8, ValorEmFaltaCompra						; R8 tem o endereço do valor em falta da compra
	MOV R7, [R6]									; R7 tem o valor do preço total da compra
	MOV [R8], R7									; Atualiza o valor em falta da compra
	CALL EscreverPreco								; Chama a rotina EscreverPreco, que escreve o preço total da compra no display

LeOpcaoMostraPrecoTotal:

	MOV R0, Opcao                                           
	MOVB R1, [R0]                                         
	CMP R1, 0
	JEQ LeOpcaoMostraPrecoTotal                                     
	
	CMP R1, OpcaoContinuarPrecoTotal
	JEQ InserirDinheiro1

	CMP R1, OpcaoCancelarPrecoTotal
	JEQ LigadoIntermedio3
	
	CALL RotinaErro
	JMP MostraPrecoTotal

InserirDinheiro1:

	MOV R2, Display_InserirDinheiro1				; R2 tem o endereço do display da inserção de dinheiro
	CALL MostraDisplay								; Mostra o display da inserção de dinheiro
	CALL LimpaPerifericos							; Limpa os periféricos

LeOpcaoInserirDinheiro1:

	MOV R0, Opcao                                           
	MOVB R1, [R0]                                         
	CMP R1, 0
	JEQ LeOpcaoInserirDinheiro1                                     
	
	MOV R5, Valor10Centimos
	CMP R1, Opcao10CentimosInserir1
	JEQ InseriuDinheiro

	MOV R5, Valor20Centimos
	CMP R1, Opcao20CentimosInserir1
	JEQ InseriuDinheiro

	MOV R5, Valor50Centimos
	CMP R1, Opcao50CentimosInserir1
	JEQ InseriuDinheiro

	CMP R1, OpcaoSeguinteInserir1
	JEQ InserirDinheiro2

	CMP R1, OpcaoCancelarInserir1
	JEQ LigadoIntermedio3
	
	CALL RotinaErro
	JMP InserirDinheiro1

InserirDinheiro2:
	
	MOV R2, Display_InserirDinheiro2				; R2 tem o endereço do display da inserção de dinheiro
	CALL MostraDisplay								; Mostra o display da inserção de dinheiro
	CALL LimpaPerifericos							; Limpa os periféricos

LeOpcaoInserirDinheiro2:

	MOV R0, Opcao                                           
	MOVB R1, [R0]                                         
	CMP R1, 0
	JEQ LeOpcaoInserirDinheiro2                                     
	
	MOV R5, Valor1Euro
	CMP R1, Opcao1EuroInserir2
	JEQ InseriuDinheiro

	MOV R5, Valor2Euros
	CMP R1, Opcao2EuroInserir2
	JEQ InseriuDinheiro

	MOV R5, Valor5Euros
	CMP R1, Opcao5EurosInserir2
	JEQ InseriuDinheiro

	CMP R1, OpcaoSeguinteInserir2
	JEQ InserirDinheiro3

	CMP R1, OpcaoCancelarInserir2
	JEQ LigadoIntermedio3
	
	CALL RotinaErro
	JMP InserirDinheiro2

InserirDinheiro3:

	MOV R2, Display_InserirDinheiro3				; R2 tem o endereço do display da inserção de dinheiro
	CALL MostraDisplay								; Mostra o display da inserção de dinheiro
	CALL LimpaPerifericos							; Limpa os periféricos

LeOpcaoInserirDinheiro3:

	MOV R0, Opcao                                           
	MOVB R1, [R0]                                         
	CMP R1, 0
	JEQ LeOpcaoInserirDinheiro3                                     
	
	;MOV R5, Valor10Euros
	CMP R1, Opcao10EuroInserir3
	JEQ LigadoIntermedio3

	;MOV R5, Valor20Euros
	CMP R1, Opcao20EuroInserir3
	JEQ LigadoIntermedio3

	CMP R1, OpcaoSeguinteInserir3
	JEQ InserirDinheiro1

	CMP R1, OpcaoCancelarInserir3
	JEQ LigadoIntermedio3
	
	CALL RotinaErro
	JMP InserirDinheiro3

InseriuDinheiro:

	MOV R2, Display_InseriuDinheiro					; R2 tem o endereço do display da inserção de dinheiro
	CALL MostraDisplay								; Mostra o display da inserção de dinheiro
	CALL LimpaPerifericos							; Limpa os periféricos

	MOV R10, 0										; R10 tem o valor 0 para sinalizar que o preço em falta não foi pago

	CALL AtualizarPrecoEmFalta						; Chama a rotina AtualizarPrecoEmFalta, que atualiza o preço em falta da compra e o valor total inserido pelo utilizador

	CMP R10, 1 									 	; Compara o valor de R10 com 1, que quer dizer que o preço em falta foi pago
	JEQ Pago										; Se o valor de R10 for 1, salta para a etiqueta Pago

LeOpcaoInseriuDinheiro:

	MOV R0, Opcao                                           
	MOVB R1, [R0]                                         
	CMP R1, 0
	JEQ LeOpcaoInseriuDinheiro                                     
	
	CMP R1, OpcaoContinuarInseriuDinheiro
	JEQ InserirDinheiro1
	
	CALL RotinaErro
	JMP InseriuDinheiro

Pago:

	MOV R2, Display_Talao							; R2 tem o endereço do display do talão
	CALL MostraDisplay								; Mostra o display do talão
	CALL LimpaPerifericos							; Limpa os periféricos

	MOV R5, PrecoTotalCompra						; R5 tem o endereço do preço total da compra
	MOV R6, [R5]									; R6 tem o valor do preço total da compra
	MOV R5, ValorInseridoCompra						; R5 tem o endereço do valor total inserido pelo utilizador
	MOV R7, [R5]									; R7 tem o valor do valor total inserido pelo utilizador
	MOV R5, TrocoCompra								; R5 tem o endereço do preço em falta da compra
	SUB R7, R6										; Subtrai o preço total da compra ao valor total inserido pelo utilizador
	MOV [R5], R7									; Atualiza o troco da compra

	CALL EscreverTalao								; Chama a rotina EscreverTalao, que escreve os valores do número do PEPE criado (atualiza este tmb), preco total, valor total inserido e troco no talão	

LeOpcaoPago:

	MOV R0, Opcao                                           
	MOVB R1, [R0]                                         
	CMP R1, 0
	JEQ LeOpcaoPago                                     
	
	CMP R1, OpcaoContinuarTalao
	JEQ LigadoIntermedio3
	
	CALL RotinaErro
	JMP Pago
	
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

;Verificação da Palavra Passe-------------------------------------------------------------------------------------------------------------
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

;Exposição do Stock da máquina------------------------------------------------------------------------------------------------------------
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