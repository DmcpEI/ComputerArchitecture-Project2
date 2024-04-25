; Periférico de Entrada-----------------------------------------------------------------------------------------------------------------

PER_EN EQU 1A0H                                             ; Botão ON/OFF

; Periféricos de Saída-------------------------------------------------------------------------------------------------------------------

Display_beginning EQU 200H                                  ; Endereço de início do display de 7 segmentos

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

; Menu Primeira Compra
OpcaoContinuarPrimeiraCompra EQU 1

; Menu Troco Devolvido
OpcaoSeguinteTrocoDevolvido EQU 5
OpcaoSairTrocoDevolvido EQU 7

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

; Devolução de Troco
EndPrimeiroLugarTroco EQU 22DH								; Endereço do primeiro lugar do display para escrever o valor do troco (da direita para a esquerda)

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

; Endereços do numero de moedas/notas para troco
TrocoMoedas10 EQU 300H
TrocoMoedas20 EQU 310H
TrocoMoedas50 EQU 320H
TrocoMoedas1 EQU 330H
TrocoMoedas2 EQU 340H
TrocoNotas5 EQU 350H
TrocoNotas10 EQU 360H
TrocoNotas20 EQU 370H

; Endereços dos números de moedas/notas em stock
StockMoedas10 EQU 380H
StockMoedas20 EQU 390H
StockMoedas50 EQU 3A0H
StockMoedas1 EQU 3B0H
StockMoedas2 EQU 3C0H
StockNotas5 EQU 3D0H
StockNotas10 EQU 3E0H
StockNotas20 EQU 3F0H

; Valores monetarios
Valor10Centimos EQU 10
Valor20Centimos EQU 20
Valor50Centimos EQU 50
Valor1Euro EQU 100
Valor2Euros EQU 200
Valor5Euros EQU 500
Valor10Euros EQU 1000
Valor20Euros EQU 2000

;Variáveis de Compra---------------------------------------------------------------------------------------------------------------------

PrecoTotalCompra EQU 500H									; Preço total da compra a ser feita
ValorInseridoCompra EQU 510H								; Valor total inserido pelo utilizador durante o pagamento
ValorEmFaltaCompra EQU 520H									; Valor que falta para completar o preço total da compra (PrecoTotalCompra - ValorInseridoCompra)
TrocoCompra EQU 530H										; Troco a ser devolvido ao utilizador (ValorInseridoCompra - PrecoTotalCompra)

;PEPEs-----------------------------------------------------------------------------------------------------------------------------------

BaseDeDadosPEPE EQU 1000H									; Endereço inicial da base de dados dos PEPEs
FimBaseDeDadosPEPE EQU 1090H								; Endereço final da base de dados dos PEPEs
NPepes EQU 10A0H											; Número de PEPEs na base de dados (Máximo de 10 PEPEs)
NPEPEVerificar EQU 238H										; Número do PEPE a verificar (da direita para a esquerda)

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
    String "       XX       "
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

Display_ErroEspacoInsuficiente:
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

Display_VerificacaoStock:           
	String "     STOCK      "
	String "                "
	String " PALAVRA-PASSE: "
	String "     *****      "
	String "                "
	String "1 - Consultar   "
	String "7 - Cancelar    "

Place 2900H
                                                   
Display_ConsultarStock1:
	String "    CONSULTA    "
	String "     STOCK      "
	String " 10 Cent...     "
	String " 20 Cent...     "
	String " 50 Cent...     "
    String "5 - Seguinte    "
	String "7 - Sair        "

Place 2A00H

Display_ConsultarStock2:
	String "    CONSULTA    "
	String "     STOCK      "
	String " 1 Euro....     "
	String " 2 Euros...     "
	String " 5 Euros...     "
	String "6 - Anterior    "
	String "7 - Sair        "
	
Place 2B00H

Display_InserirDinheiro1:
	String "    INSERCAO    "
	String "  DE  DINHEIRO  " 
	String "1 - 10 Cent     "
	String "2 - 20 Cent     "
	String "3 - 50 Cent     "
	String "5 - Seguinte    "
	String "7 - Cancelar    "

Place 2C00H

Display_InserirDinheiro2:
	String "    INSERCAO    "
	String "  DE  DINHEIRO  " 
	String "1 - 1 Euro      "
	String "2 - 2 Euros     "
	String "3 - 5 Euros     "
	String "5 - Seguinte    "
	String "7 - Cancelar    "

Place 2D00H

Display_InserirDinheiro3:
	String "    INSERCAO    "
	String "  DE  DINHEIRO  " 
	String "1 - 10 Euros    "
	String "2 - 20 Euros    "
	String "                "
	String "5 - Seguinte    "
	String "7 - Cancelar    "

Place 2E00H

Display_PalavraPasseErrada:
	String " ---- ERRO ---- "
	String " PALAVRA-PASSE  "
    String "    INSERIDA    "
	String "   INCORRETA    "
	String "                "
	String " 7 - Voltar     "
	String " ---- ERRO ---- "

Place 2F00H

Display_EscolheuBilhete:
	String "----------------"
	String "ESCOLHEU BILHETE"
	String "                "
	String "DESEJA ESCOLHER "
	String " OUTRA ESTACAO? "
	String "1 - Sim  2 - Nao"
	String "----------------"

Place 3000H

Display_PrecoTotal:
	String "----------------"
	String "  PRECO TOTAL   "
	String "----------------"
	String "       .00      "
	String "1 - Continuar   "
	String "2 - Cancelar    "
	String "----------------"

Place 3100H

Display_Erro:
	String " ---- ERRO ---- "
	String "                "
	String "    OPCAO NAO   "
	String "   DISPONIVEL   "
	String "                "
	String " 7 - Voltar     "
	String " ---- ERRO ---- "

Place 3200H

Display_InseriuDinheiro:
	String "----------------"
	String "                "
	String " INSERIU:   .00 "
	String " FALTA:     .00 "
	String "                "
	String "1 - Continuar   "
	String "----------------"

Place 3300H

Display_PrimeiraCompra:
	String "    PARABENS    "
	String "VIAGEM GRATUITA!"
	String "                "
	String "VALOR DA COMPRA "
	String "   CARREGADO    "
	String "   NO CARTAO    "
	String "1 - Continuar   "

Place 3400H

Display_TrocoDevolvido1:      
	String "  RETIRE O SEU  "
	String "     TROCO!     "
	String " 10 Cent...     "
	String " 20 Cent...     "
	String " 50 Cent...     "
    String "5 - Seguinte    "
	String "7 - Sair        "

Place 3500H

Display_TrocoDevolvido2:      
	String "  RETIRE O SEU  "
	String "     TROCO!     "
	String " 1 Euro....     "
	String " 2 Euros...     "
	String " 5 Euros...     "
	String "5 - Seguinte    "
	String "7 - Sair        "

Place 3600H

Display_TrocoDevolvido3:      
	String "  RETIRE O SEU  "
	String "     TROCO!     "
	String " 10 Euros..     "
	String " 20 Euros..     "
	String "                "
	String "5 - Seguinte    "
	String "7 - Sair        "  
   
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

    MOV R0, PER_EN
    MOVB R1, [R0]
    CMP R1, 1
    JNE LeOnOff
	CALL VerificaDinheiro

Ligado:

    MOV R2, Display_MenuInicial
    CALL MostraDisplay
    CALL LimpaPerifericos

LeOpcao:

	MOV R0, PER_EN                                           ; R0 tem o endereço do botão opção
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

    MOV R0, PER_EN									; R0 tem o endereço do botão PER_ENT

    MOV R9, 0										; R9 tem o valor 0

    MOVB [R0], R9									; Coloca o valor 0 no botão ON/OFF

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

    MOV R0, StockMoedas10							; R0 tem o endereço do stock de moedas de 10 centimos (Que são as primeiras na memória)
    MOV R1, StockNotas20 							; R1 tem o endereço do stock de notas de 20 euros (Que são as ultimas na memória)
	MOV R5, 16										; R5 tem o valor de 10 para passar de endereço em endereço
	MOV R6, 10 										; R6 tem o valor 10 para fins de adição

CicloVerificaDinheiro:

	MOV R2, [R0]									; R2 tem a quantidade de dinheiro do valor monetário atual
	MOV R3, R6										; R3 tem o valor 10
	CMP R2, R3										; Compara a quantidade de dinheiro do valor monetário atual com 10
	JGE DinheiroSuficiente							; Se a quantidade de dinheiro do valor monetário atual for maior ou igual a 10, salta para a etiqueta DinheiroSuficiente
	MOV R4, R6										; R4 tem o valor 10 para obter a diferença entre a quantidade de dinheiro do valor monetário atual e 10
	SUB R4, R2										; Subtrai a quantidade de dinheiro do valor monetário atual a 10
	ADD R2, R4										; Adiciona a diferença entre a quantidade de dinheiro do valor monetário atual e 10 à quantidade de dinheiro do valor monetário atual
	MOV [R0], R2									; Atualiza a quantidade de dinheiro do valor monetário atual

DinheiroSuficiente:

	ADD R0, R5										; Adiciona 16 ao endereço do valor monetário atual
	CMP R0, R1										; Compara o endereço do valor monetário atual com o endereço do stock de notas de 20 euros
	JLE CicloVerificaDinheiro						; Se o endereço do valor monetário atual for menor ou igual ao endereço do stock de notas de 20 euros, repete o ciclo

	POP R6
	POP R5
	POP R4
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
;									                       Rotina Adiciona Stock
;-----------------------------------------------------------------------------------------------------------------------------------------
; Atualiza o stock de moedas/notas adicionando 1 à quantidade de dinheiro do valor monetário atual
;-----------------------------------------------------------------------------------------------------------------------------------------
; R5 -> Valor a adicionar ao stock / inserido pelo utilizador
;-----------------------------------------------------------------------------------------------------------------------------------------

AdicionaStock:

	PUSH R0
	PUSH R1
	PUSH R2
	PUSH R3
	PUSH R4

	MOV R0, StockMoedas10							; R0 tem o endereço do stock de moedas de 10 centimos (Que são as primeiras na memória)
	MOV R1, StockNotas20							; R1 tem o endereço do stock de notas de 20 euros (Que são as ultimas na memória)
	MOV R3, 16										; R3 tem o valor de 16 para passar de endereço em endereço

CicloAtualizaStock:

	MOV R4, Valor10Centimos 						; R4 tem o valor de 10 centimos
	CMP R4, R5										; Compara o valor a adicionar ao stock com o valor de 10 centimos
	JEQ AtualizarStock								; Se o valor a adicionar ao stock for igual ao valor de 10 centimos, salta para a etiqueta AtualizarStock

	ADD R0, R3										; Adiciona 16 ao endereço do valor monetário atual

	MOV R4, Valor20Centimos 						; R4 tem o valor de 20 centimos
	CMP R4, R5										; Compara o valor a adicionar ao stock com o valor de 20 centimos
	JEQ AtualizarStock								; Se o valor a adicionar ao stock for igual ao valor de 20 centimos, salta para a etiqueta AtualizarStock

	ADD R0, R3										; Adiciona 16 ao endereço do valor monetário atual

	MOV R4, Valor50Centimos 						; R4 tem o valor de 50 centimos
	CMP R4, R5										; Compara o valor a adicionar ao stock com o valor de 50 centimos
	JEQ AtualizarStock								; Se o valor a adicionar ao stock for igual ao valor de 50 centimos, salta para a etiqueta AtualizarStock

	ADD R0, R3										; Adiciona 16 ao endereço do valor monetário atual

	MOV R4, Valor1Euro 								; R4 tem o valor de 1 euro
	CMP R4, R5										; Compara o valor a adicionar ao stock com o valor de 1 euro
	JEQ AtualizarStock								; Se o valor a adicionar ao stock for igual ao valor de 1 euro, salta para a etiqueta AtualizarStock

	ADD R0, R3										; Adiciona 16 ao endereço do valor monetário atual

	MOV R4, Valor2Euros 							; R4 tem o valor de 2 euros
	CMP R4, R5										; Compara o valor a adicionar ao stock com o valor de 2 euros
	JEQ AtualizarStock								; Se o valor a adicionar ao stock for igual ao valor de 2 euros, salta para a etiqueta AtualizarStock
	
	ADD R0, R3										; Adiciona 16 ao endereço do valor monetário atual

	MOV R4, Valor5Euros 							; R4 tem o valor de 5 euros
	CMP R4, R5										; Compara o valor a adicionar ao stock com o valor de 5 euros
	JEQ AtualizarStock								; Se o valor a adicionar ao stock for igual ao valor de 5 euros, salta para a etiqueta AtualizarStock

	ADD R0, R3										; Adiciona 16 ao endereço do valor monetário atual

	MOV R4, Valor10Euros 							; R4 tem o valor de 10 euros
	CMP R4, R5										; Compara o valor a adicionar ao stock com o valor de 10 euros
	JEQ AtualizarStock								; Se o valor a adicionar ao stock for igual ao valor de 10 euros, salta para a etiqueta AtualizarStock

	ADD R0, R3										; Adiciona 16 ao endereço do valor monetário atual

	MOV R4, Valor20Euros 							; R4 tem o valor de 20 euros
	CMP R4, R5										; Compara o valor a adicionar ao stock com o valor de 20 euros
	JEQ AtualizarStock								; Se o valor a adicionar ao stock for igual ao valor de 20 euros, salta para a etiqueta AtualizarStock

	JMP FimAtualizaStock							; Salta para a etiqueta FimAtualizaStock

AtualizarStock:

	MOV R2, [R0]									; R2 tem a quantidade de dinheiro do valor monetário atual
	ADD R2, 1										; Adiciona 1 à quantidade de dinheiro do valor monetário atual
	MOV [R0], R2									; Atualiza a quantidade de dinheiro do valor monetário atual

FimAtualizaStock:

	POP R4
	POP R3
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
;									                  Rotina Criar PEPE
;-----------------------------------------------------------------------------------------------------------------------------------------
; Cria um novo PEPE guardando na base de dados dos PEPEs
;-----------------------------------------------------------------------------------------------------------------------------------------

CriarPEPE:

	PUSH R0
	PUSH R1
	PUSH R2
	PUSH R3
	PUSH R4
	PUSH R5
	PUSH R6

	MOV R0, NPepes
	MOV R1, [R0]
	MOV R2, BaseDeDadosPEPE							; R2 tem o endereço da base de dados dos PEPEs
	MOV R4, 16										; R4 tem o valor 16 para passar de endereço em endereço

	ADD R1, 1 										; Adiciona 1 ao número de PEPEs
	MOV [R0], R1									; Atualiza o número de PEPEs

	MOV R11, R1										; R11 tem o número do PEPE a ser criado para ser carregado com o valor dos bilhetes depois da primeira compra

	SUB R2, R4										; Subtrai 16 ao endereço da base de dados dos PEPEs para fins de ciclo de modo que ao adicionar começar no primeiro lugar da base de dados

	MOV R5, 0										; R5 tem o valor 0 para fins de contagem de linhas para colocar o novo PEPE no lugar correto da base de dados dos PEPEs
	MOV R6, 10										; R6 tem o valor 10 para fins de comparação com o número do PEPE a ser criado, de modo a saber se já existem 10 PEPEs

CicloCriarPEPE:

	CMP R1, R6										; Compara o número do PEPE a ser criado com 10
	JGT MaximoCriado								; Se o número do PEPE a ser criado for maior que 10, salta para a etiqueta MaximoCriado
	
	ADD R5, 1										; Adiciona 1 ao número de linhas para colocar o novo PEPE
	ADD R2, R4										; Adiciona 16 ao endereço da base de dados dos PEPEs para passar para o próximo lugar da base de dados
	CMP R5, R1										; Compara o número de linhas para colocar o novo PEPE com o número do PEPE a ser criado
	JNE CicloCriarPEPE								; Se o número de linhas para colocar o novo PEPE for diferente do número do PEPE a ser criado, repete o ciclo

	MOV R3, R1										; R3 tem o número do PEPE a ser criado
	MOV [R2], R3									; Atualiza a base de dados dos PEPEs com o número do PEPE a ser criado

	JMP FimCicloCriarPEPE							; Salta para a etiqueta FimCicloCriarPEPE

MaximoCriado:

	MOV R10, 1										; R10 tem o valor 1 para sinalizar que não tem lugar para mais nenhum PEPE

	JMP FimCicloCriarPEPE							; Salta para a etiqueta FimCicloCriarPEPE

FimCicloCriarPEPE:

	POP R6
	POP R5
	POP R4
	POP R3
	POP R2
	POP R1
	POP R0
	RET

;-----------------------------------------------------------------------------------------------------------------------------------------
;									                      Rotina Carregar PEPE
;-----------------------------------------------------------------------------------------------------------------------------------------
; Carrega um PEPE com um valor monetário
;-----------------------------------------------------------------------------------------------------------------------------------------
; R10 -> Valor a ser carregado no PEPE
; R11 -> Número do PEPE a ser carregado
;-----------------------------------------------------------------------------------------------------------------------------------------

CarregarPEPE:

	PUSH R0
	PUSH R1
	PUSH R2
	PUSH R3
	PUSH R4

	MOV R0, BaseDeDadosPEPE							; R0 tem o endereço da base de dados dos PEPEs
	MOV R1, 16										; R1 tem o valor 16 para passar de endereço em endereço
	MOV R3, R10										; R3 tem o valor a ser carregado no PEPE
	MOV R4, R11										; R4 tem o número do PEPE a ser carregado

	SUB R0, R1										; Subtrai 16 ao endereço da base de dados dos PEPEs para fins de ciclo de modo que ao adicionar começar no primeiro lugar da base de dados dos PEPEs

CicloCarregarPEPE:

	ADD R0, R1										; Adiciona 16 ao endereço da base de dados dos PEPEs para passar para o próximo lugar da base de dados
	MOV R2, [R0]									; R2 tem o número do PEPE atual
	CMP R2, R4										; Compara o número do PEPE atual com o número do PEPE a ser carregado
	JNE CicloCarregarPEPE							; Se o número do PEPE atual for diferente do número do PEPE a ser carregado, repete o ciclo

	ADD R0, 4										; Adiciona 4 ao endereço da base de dados dos PEPEs para passar para o lugar do valor monetario do PEPE
	MOV [R0], R3									; Atualiza o valor monetario do PEPE

	POP R4
	POP R3
	POP R2
	POP R1
	POP R0
	RET

;-----------------------------------------------------------------------------------------------------------------------------------------
;									                      Rotina Devolve Troco
;-----------------------------------------------------------------------------------------------------------------------------------------
; Devolve o troco da compra, retirando o valor do troco da compra do stock da máquina
;-----------------------------------------------------------------------------------------------------------------------------------------

DevolveTroco:

	PUSH R0
	PUSH R1
	PUSH R2
	PUSH R3
	PUSH R4

	MOV R4, TrocoCompra								; R4 tem o endereço do troco da compra
	MOV R0, [R4]									; R0 tem o troco da compra

CicloDevolveTroco:

	CMP R0, 0										; Compara o troco da compra com 0
	JZ FimCicloDevolveTroco							; Se o troco da compra for 0, salta para a etiqueta FimCicloDevolveTroco

	MOV R3, TrocoNotas20							; R3 tem o endereço do troco de notas de 20 euros

	MOV R1, R0										; R1 tem o troco da compra
	MOV R2, 2000 									; R2 tem o valor 2000 para comparar com o troco da compra (20 euros)
	SUB R1, R2										; Subtrai 2000 ao troco da compra
	CMP R1, 0										; Compara o troco da compra com 0
	JGE Devolver									; Se o troco da compra for maior ou igual a 0, salta para a etiqueta Devolver

	MOV R3, TrocoNotas10							; R3 tem o endereço do troco de notas de 10 euros

	MOV R1, R0										; R1 tem o troco da compra
	MOV R2, 1000 									; R2 tem o valor 1000 para comparar com o troco da compra (10 euros)
	SUB R1, R2										; Subtrai 1000 ao troco da compra
	CMP R1, 0										; Compara o troco da compra com 0
	JGE Devolver									; Se o troco da compra for maior ou igual a 0, salta para a etiqueta Devolver

	MOV R3, TrocoNotas5								; R3 tem o endereço do troco de notas de 5 euros

	MOV R1, R0										; R1 tem o troco da compra
	MOV R2, 500 									; R2 tem o valor 500 para comparar com o troco da compra (5 euros)
	SUB R1, R2										; Subtrai 500 ao troco da compra
	CMP R1, R2										; Compara o troco da compra com 0
	JGE Devolver									; Se o troco da compra for maior ou igual a 0, salta para a etiqueta Devolver

	MOV R3, TrocoMoedas2							; R3 tem o endereço do troco de moedas de 2 euros

	MOV R1, R0										; R1 tem o troco da compra
	MOV R2, 200 									; R2 tem o valor 200 para comparar com o troco da compra (2 euros)
	SUB R1, R2										; Subtrai 200 ao troco da compra
	CMP R1, 0										; Compara o troco da compra com 0
	JGE Devolver									; Se o troco da compra for maior ou igual a 0, salta para a etiqueta Devolver

	MOV R3, TrocoMoedas1							; R3 tem o endereço do troco de moedas de 1 euro

	MOV R1, R0										; R1 tem o troco da compra
	MOV R2, 100 									; R2 tem o valor 100 para comparar com o troco da compra (1 euro)
	SUB R1, R2										; Subtrai 100 ao troco da compra
	CMP R1, 0										; Compara o troco da compra com 0
	JGE Devolver									; Se o troco da compra for maior ou igual a 0, salta para a etiqueta Devolver

	MOV R3, TrocoMoedas50							; R3 tem o endereço do troco de moedas de 50 cêntimos

	MOV R1, R0										; R1 tem o troco da compra
	MOV R2, 50 										; R2 tem o valor 50 para comparar com o troco da compra (50 cêntimos)
	SUB R1, R2										; Subtrai 50 ao troco da compra
	CMP R1, 0										; Compara o troco da compra com 0
	JGE Devolver									; Se o troco da compra for maior ou igual a 0, salta para a etiqueta Devolver

	MOV R3, TrocoMoedas20							; R3 tem o endereço do troco de moedas de 20 cêntimos

	MOV R1, R0										; R1 tem o troco da compra
	MOV R2, 20 										; R2 tem o valor 20 para comparar com o troco da compra (20 cêntimos)
	SUB R1, R2										; Subtrai 20 ao troco da compra
	CMP R1, 0										; Compara o troco da compra com 0
	JGE Devolver									; Se o troco da compra for maior ou igual a 0, salta para a etiqueta Devolver

	MOV R3, TrocoMoedas10							; R3 tem o endereço do troco de moedas de 10 cêntimos

	MOV R1, R0										; R1 tem o troco da compra
	MOV R2, 10 										; R2 tem o valor 10 para comparar com o troco da compra (10 cêntimos)
	SUB R1, R2										; Subtrai 10 ao troco da compra
	CMP R1, 0										; Compara o troco da compra com 0
	JEQ CicloDevolveTroco							; Se o troco da compra for 0, repete o ciclo

Devolver:

	SUB R0, R2  									; Subtrai o valor do valor monetário devolvido ao troco da compra
	MOV R2, [R3]									; R2 tem o valor atual da quantidade de notas ou moedas desse tipo a devolver
	ADD R2, 1										; Adiciona 1 ao valor atual da quantidade de notas ou moedas desse tipo a devolver
	MOV [R3], R2 									; Atualiza o valor da quantidade de notas ou moedas desse tipo a devolver
	JMP CicloDevolveTroco							; Repete o ciclo

FimCicloDevolveTroco:

	POP R4
	POP R3
	POP R2
	POP R1
	POP R0
	RET

;-----------------------------------------------------------------------------------------------------------------------------------------
;									                      Rotina Retira Stock
;-----------------------------------------------------------------------------------------------------------------------------------------
; Retira o stock de moedas/notas para dar como troco
;-----------------------------------------------------------------------------------------------------------------------------------------

RetiraStock:

	PUSH R0
	PUSH R1
	PUSH R2
	PUSH R3
	PUSH R4
	PUSH R5

	MOV R0, TrocoMoedas10 							; R0 tem o endereço das moedas de 10 centimos a dar como troco (Que são as primeiras na memória)
	MOV R5, TrocoNotas20							; R5 tem o endereço das notas de 20 euros a dar como troco (Que são as ultimas na memória)
	MOV R1, StockMoedas10							; R1 tem o endereço do stock de moedas de 10 centimos (Que são as primeiras na memória)
	MOV R2, 16										; R2 tem o valor 16 para passar de endereço em endereço

CicloRetiraStock:

	MOV R3, [R0]									; R3 tem a quantidade de moedas de um certo valor a dar como troco
	MOV R4, [R1]									; R4 tem a quantidade de moedas de um certo valor no stock
	CMP R3, R4										; Compara a quantidade de moedas de um certo valor a dar como troco com a quantidade de moedas de um certo valor no stock
	JGT ErroSemTroco								; Se a quantidade de moedas de um certo valor a dar como troco for maior que a quantidade de moedas de um certo valor no stock, salta para a etiqueta ErroSemTroco
	SUB R4, R3										; Subtrai a quantidade de moedas de um certo valor a dar como troco à quantidade de moedas de um certo valor no stock
	MOV [R1], R4									; Atualiza a quantidade de moedas de um certo valor no stock

	ADD R0, R2										; Adiciona 16 ao endereço atual a dar como troco para passar para o próximo valor monetário
	ADD R1, R2										; Adiciona 16 ao endereço atual no stock para passar para o próximo valor monetário
	CMP R0, R5										; Compara o endereço atual a dar como troco com o endereço das notas de 20 euros
	JNE CicloRetiraStock							; Se o endereço atual a dar como troco for diferente do endereço das notas de 20 euros, repete o ciclo

	JMP FimRetiraStock								; Salta para a etiqueta FimRetiraStock

ErroSemTroco:

	MOV R10, 1										; R10 tem o valor 1 para sinalizar que não há troco

FimRetiraStock:

	POP R5
	POP R4
	POP R3
	POP R2
	POP R1
	POP R0
	RET

;-----------------------------------------------------------------------------------------------------------------------------------------
;									                      Rotina Escrever Troco 
;-----------------------------------------------------------------------------------------------------------------------------------------
;
;-----------------------------------------------------------------------------------------------------------------------------------------
; R6 -> Quantidade de valores a escrever
; R7 -> Endereço do primeiro valor a escrever
;-----------------------------------------------------------------------------------------------------------------------------------------

EscreverTroco:

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
	MOV R9, EndPrimeiroLugarTroco					; R9 tem o endereço do primeiro lugar do display a escrever

CicloEscreveTroco:

	MOV R8, [R2]									; R8 tem a quantidade do valor monetário atual
	CALL EscreveDisplay								; Chama a rotina EscreveDisplay, que escreve a quantidade do valor monetário atual (valor em R8) no display (endereço em R9)
	ADD R0, 1										; Adiciona 1 ao contador de valores escritos
	CMP R0, R1										; Compara o contador de valores escritos com a quantidade de valores a escrever
	JGT FimCicloEscreveTroco						; Se o contador de valores escritos for maior que a quantidade de valores a escrever, salta para a etiqueta FimCicloEscreveTroco
	ADD R2, R3										; Adiciona 16 ao endereço do valor monetário atual de modo a passar para o próximo valor monetário
	ADD R9, R3										; Adiciona 16 ao endereço do display de modo a passar para o próximo lugar do display
	JMP CicloEscreveTroco							; Repete o ciclo

FimCicloEscreveTroco:

	POP R9
	POP R8
	POP R3
	POP R2
	POP R1
	POP R0
	RET

;-----------------------------------------------------------------------------------------------------------------------------------------
;									                       Rotina Verifica PEPE
;-----------------------------------------------------------------------------------------------------------------------------------------
; Verifica se o PEPE introduzido pelo utilizador existe na base de dados dos PEPEs
;-----------------------------------------------------------------------------------------------------------------------------------------

VerificaPEPE:

	PUSH R0
	PUSH R1
	PUSH R2
	PUSH R3
	PUSH R4
	PUSH R5
	PUSH R6

	MOV R0, BaseDeDadosPEPE							; R0 tem o endereço da base de dados dos PEPEs
	MOV R1, 16										; R1 tem o valor 16 para passar de endereço em endereço
	MOV R3, NPEPEVerificar							; R3 tem o endereço do PEPE introduzido pelo utilizador

	SUB R0, R1										; Subtrai 16 ao endereço da base de dados dos PEPEs para fins de ciclo de modo que ao adicionar começar no primeiro lugar da base de dados dos PEPEs

	MOV R5, 0										; R5 tem o valor 0 para fins de contagem de linhas para verificar se o PEPE introduzido pelo utilizador existe na base de dados dos PEPEs

	MOV R6, 10 										; R6 tem o valor 10 para fins de comparação com o número de linhas para verificar se o PEPE introduzido pelo utilizador existe na base de dados dos PEPEs

CicloVerificaPEPE:

	CMP R5, R6										; Compara o número de linhas para verificar se o PEPE introduzido pelo utilizador existe na base de dados dos PEPEs com 10
	JEQ NaoEncontrado								; Se o número de linhas para verificar se o PEPE introduzido pelo utilizador existe na base de dados dos PEPEs for igual a 10, salta para a etiqueta NaoEncontrado
	ADD R5, 1										; Adiciona 1 ao número de linhas verificadas

	ADD R0, R1										; Adiciona 16 ao endereço da base de dados dos PEPEs para passar para o próximo lugar da base de dados
	MOV R2, [R0]									; R2 tem o número do PEPE atual
	MOV R4, [R3]									; R4 tem o número do PEPE introduzido pelo utilizador
	CMP R2, R4										; Compara o número do PEPE atual com o número do PEPE introduzido pelo utilizador
	JNE CicloVerificaPEPE							; Se o número do PEPE atual for diferente do número do PEPE introduzido pelo utilizador, repete o ciclo

	JMP Encontrado									; Se o número do PEPE atual for igual ao número do PEPE introduzido pelo utilizador, salta para a etiqueta Encontrado

NaoEncontrado:

	MOV R6, 0										; R6 tem o valor 0, que quer dizer que o PEPE introduzido pelo utilizador não existe
	JMP FimCicloVerificaPEPE						; Salta para a etiqueta FimCicloVerificaPEPE

Encontrado:

	MOV R6, 1										; R6 tem o valor 1, que quer dizer que o PEPE introduzido pelo utilizador existe
	JMP FimCicloVerificaPEPE						; Salta para a etiqueta FimCicloVerificaPEPE

FimCicloVerificaPEPE:

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
; Verifica se a palavra-passe introduzida pelo utilizador está correta
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

	MOV R8, [R2]									; R8 tem a quantidade do valor monetário atual
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
;									                           Etiqueta Comprar
;-----------------------------------------------------------------------------------------------------------------------------------------
;
;-----------------------------------------------------------------------------------------------------------------------------------------

RotinaComprar:

    MOV R2, Display_MenuComprar						; R2 tem o endereço do display do menu de compra
    CALL MostraDisplay								; Mostra o display do menu de compra
    CALL LimpaPerifericos							; Limpa os periféricos

LeOpcaoComprar:

	MOV R0, PER_EN                                           
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
	JEQ VoltarInicioCompra
	
	CALL RotinaErro
	JMP RotinaComprar

VoltarInicioCompra:
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

	MOV R0, PER_EN                                           
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

	MOV R0, PER_EN                                           
	MOVB R1, [R0]                                         
	CMP R1, 0
	JEQ LeOpcaoMostraPrecoTotal                                     
	
	CMP R1, OpcaoContinuarPrecoTotal
	JEQ InserirDinheiro1

	CMP R1, OpcaoCancelarPrecoTotal
	JEQ VoltarInicioCompra
	
	CALL RotinaErro
	JMP MostraPrecoTotal

InserirDinheiro1:

	MOV R2, Display_InserirDinheiro1				; R2 tem o endereço do display da inserção de dinheiro
	CALL MostraDisplay								; Mostra o display da inserção de dinheiro
	CALL LimpaPerifericos							; Limpa os periféricos

LeOpcaoInserirDinheiro1:

	MOV R0, PER_EN                                           
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
	JEQ VoltarInicioCompra
	
	CALL RotinaErro
	JMP InserirDinheiro1

InserirDinheiro2:
	
	MOV R2, Display_InserirDinheiro2				; R2 tem o endereço do display da inserção de dinheiro
	CALL MostraDisplay								; Mostra o display da inserção de dinheiro
	CALL LimpaPerifericos							; Limpa os periféricos

LeOpcaoInserirDinheiro2:

	MOV R0, PER_EN                                           
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
	JEQ VoltarInicioCompra2
	
	CALL RotinaErro
	JMP InserirDinheiro2

InserirDinheiro3:

	MOV R2, Display_InserirDinheiro3				; R2 tem o endereço do display da inserção de dinheiro
	CALL MostraDisplay								; Mostra o display da inserção de dinheiro
	CALL LimpaPerifericos							; Limpa os periféricos

LeOpcaoInserirDinheiro3:

	MOV R0, PER_EN                                           
	MOVB R1, [R0]                                         
	CMP R1, 0
	JEQ LeOpcaoInserirDinheiro3                                     
	
	;MOV R5, Valor10Euros
	CMP R1, Opcao10EuroInserir3
	JEQ VoltarInicioCompra2

	;MOV R5, Valor20Euros
	CMP R1, Opcao20EuroInserir3
	JEQ VoltarInicioCompra2

	CMP R1, OpcaoSeguinteInserir3
	JEQ InserirDinheiro1

	CMP R1, OpcaoCancelarInserir3
	JEQ VoltarInicioCompra2
	
	CALL RotinaErro
	JMP InserirDinheiro3

InseriuDinheiro:

	MOV R2, Display_InseriuDinheiro					; R2 tem o endereço do display da inserção de dinheiro
	CALL MostraDisplay								; Mostra o display da inserção de dinheiro
	CALL LimpaPerifericos							; Limpa os periféricos

	CALL AdicionaStock								; Chama a rotina AdicionaStock, que adiciona o valor do dinheiro inserido ao stock da máquina

	MOV R10, 0										; R10 tem o valor 0 para sinalizar que o preço em falta não foi pago

	CALL AtualizarPrecoEmFalta						; Chama a rotina AtualizarPrecoEmFalta, que atualiza o preço em falta da compra e o valor total inserido pelo utilizador

	CMP R10, 1 									 	; Compara o valor de R10 com 1, que quer dizer que o preço em falta foi pago
	JEQ Pago										; Se o valor de R10 for 1, salta para a etiqueta Pago

LeOpcaoInseriuDinheiro:

	MOV R0, PER_EN                                           
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

	MOV R10, 0 										; R10 tem o valor 0 para saber se tem espaço para criar um novo PEPE

	CALL CriarPEPE									; Chama a rotina CriarPEPE, que cria um novo PEPE	

	CMP R10, 1 										; Compara o valor de R10 com 1, que quer dizer que não tem espaço para criar um novo PEPE
	;JEQ SemEspaco									; Se o valor de R10 for 1, salta para a etiqueta SemEspaco

	CALL EscreverTalao								; Chama a rotina EscreverTalao, que escreve os valores do número do PEPE criado, preco total, valor total inserido e troco no talão

LeOpcaoPago:

	MOV R0, PER_EN                                           
	MOVB R1, [R0]                                         
	CMP R1, 0
	JEQ LeOpcaoPago                                     
	
	CMP R1, OpcaoContinuarTalao
	JEQ PrimeiraCompra
	
	CALL RotinaErro
	JMP Pago

VoltarInicioCompra2:
	JMP Ligado

;SemEspaco:

PrimeiraCompra:

	MOV R2, Display_PrimeiraCompra					; R2 tem o endereço do display da primeira compra
	CALL MostraDisplay								; Mostra o display da primeira compra
	CALL LimpaPerifericos							; Limpa os periféricos

	MOV R5, PrecoTotalCompra						; R5 tem o endereço do preço total da compra
	MOV R10, [R5]									; R11 tem o valor do preço total da compra
	CALL CarregarPEPE								; Chama a rotina CarregarPEPE, que carrega o valor do preço total da compra no PEPE criado

LeOpcaoPrimeiraCompra:

	MOV R0, PER_EN                                           
	MOVB R1, [R0]                                         
	CMP R1, 0
	JEQ LeOpcaoPrimeiraCompra                                     
	
	CMP R1, OpcaoContinuarPrimeiraCompra
	JEQ Troco
	
	CALL RotinaErro
	JMP PrimeiraCompra

Troco:

	MOV R5, TrocoCompra								; R5 tem o endereço do troco da compra
	MOV R6, [R5]									; R6 tem o valor do troco da compra

	CMP R6, 0										; Compara o valor do troco da compra com 0
	JGT DevolverTroco								; Se o valor do troco da compra for maior que 0, salta para a etiqueta DevolverTroco
	JMP Ligado										; Se o valor do troco da compra for igual a 0, volta ao menu principal

DevolverTroco:

	CALL DevolveTroco 								; Chama a rotina DevolveTroco, que retira da máquina os valores monetários correspondentes ao troco da compra

	MOV R10, 0										; R10 tem o valor 0 para fins de verificação de devolução de troco

	CALL RetiraStock								; Chama a rotina RetiraStock, que retira da máquina os valores monetários correspondentes ao troco da compra

	CMP R10, 1										; Compara o valor de R10 com 1, que quer dizer que não há como devolver o troco
	;JEQ SemTroco									; Se o valor de R10 for 1, salta para a etiqueta SemTroco

DevolverTroco1:

	MOV R2, Display_TrocoDevolvido1					; R2 tem o endereço do display da devolução do troco
	CALL MostraDisplay								; Mostra o display da devolução do troco
	CALL LimpaPerifericos							; Limpa os periféricos

	MOV R6, 3 										; R6 tem o valor 3, que é a quantidade de valores a escrever
	MOV R7, TrocoMoedas10							; R7 tem o endereço do primeiro valor a escrever
	CALL EscreverTroco								; Chama a rotina EscreverTroco, que escreve os valores monetários devolvidos no display

LeOpcaoDevolverTroco1:

	MOV R0, PER_EN                                           
	MOVB R1, [R0]                                         
	CMP R1, 0
	JEQ LeOpcaoDevolverTroco1                                     
	
	CMP R1, OpcaoSeguinteTrocoDevolvido
	JEQ DevolverTroco2

	CMP R1, OpcaoSairTrocoDevolvido
	JEQ VoltarInicioCompra2
	
	CALL RotinaErro
	JMP DevolverTroco1

DevolverTroco2:

	MOV R2, Display_TrocoDevolvido2					; R2 tem o endereço do display da devolução do troco
	CALL MostraDisplay								; Mostra o display da devolução do troco
	CALL LimpaPerifericos							; Limpa os periféricos

	MOV R6, 3 										; R6 tem o valor 3, que é a quantidade de valores a escrever
	MOV R7, TrocoMoedas1							; R7 tem o endereço do primeiro valor a escrever
	CALL EscreverTroco								; Chama a rotina EscreverTroco, que escreve os valores monetários devolvidos no display

LeOpcaoDevolverTroco2:

	MOV R0, PER_EN                                           
	MOVB R1, [R0]                                         
	CMP R1, 0
	JEQ LeOpcaoDevolverTroco2                                     
	
	CMP R1, OpcaoSeguinteTrocoDevolvido
	JEQ DevolverTroco3

	CMP R1, OpcaoSairTrocoDevolvido
	JEQ VoltarInicioCompra2
	
	CALL RotinaErro
	JMP DevolverTroco2

DevolverTroco3:

	MOV R2, Display_TrocoDevolvido3					; R2 tem o endereço do display da devolução do troco
	CALL MostraDisplay								; Mostra o display da devolução do troco
	CALL LimpaPerifericos							; Limpa os periféricos

	MOV R6, 2 										; R6 tem o valor 2, que é a quantidade de valores a escrever
	MOV R7, TrocoNotas10							; R7 tem o endereço do primeiro valor a escrever
	CALL EscreverTroco								; Chama a rotina EscreverTroco, que escreve os valores monetários devolvidos no display

LeOpcaoDevolverTroco3:

	MOV R0, PER_EN                                           
	MOVB R1, [R0]                                         
	CMP R1, 0
	JEQ LeOpcaoDevolverTroco3                                     
	
	CMP R1, OpcaoSeguinteTrocoDevolvido
	JEQ DevolverTroco1

	CMP R1, OpcaoSairTrocoDevolvido
	JEQ VoltarInicioCompra2
	
	CALL RotinaErro
	JMP DevolverTroco3
	
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

	MOV R0, PER_EN                                           
    MOVB R1, [R0]                                         
    CMP R1, 0
	JEQ LeOpcaoUsarCartao                                   
	
	CMP R1, OpcaoContinuarCartao
	JEQ VoltarInicioUsarCartao

	CMP R1, OpcaoCancelarCartao
	JEQ VoltarInicioUsarCartao
	
	CALL RotinaErro
	JMP RotinaUsarCartao

VoltarInicioUsarCartao:
	JMP Ligado

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

	MOV R0, PER_EN         							; R0 tem o endereço do botão opção                                  
	MOVB R1, [R0]									; Leitura do periferico Opção                                         
	CMP R1, 0										; Compara o valor do botão opção com 0
	JEQ LePalavraPasseStock							; Se o valor do botão for 0, refaz a leitura                                 

	CMP R1, OpcaoConsultarVerificarStock			; Compara o valor do botão opção com a opção de consultar stock
	JEQ ConsultarVerificarStock						; Se o valor do botão for igual à opção de consultar stock, salta para a etiqueta ConsultarVerificarStock

	CMP R1, OpcaoCancelarVerificarStock				; Compara o valor do botão opção com a opção de cancelar
	JEQ VoltarInicioStock							; Se o valor do botão for igual à opção de cancelar, salta para o menu principal

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

	MOV R0, PER_EN         							; R0 tem o endereço do botão opção                                  
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

	MOV R0, PER_EN         							; R0 tem o endereço do botão opção                                  
	MOVB R1, [R0]									; Leitura do periferico Opção                                         
	CMP R1, 0										; Compara o valor do botão opção com 0
	JEQ LeOpcaoConsultarStock						; Se o valor do botão for 0, refaz a leitura                                 
	
	CMP R1, OpcaoSeguinteStock						; Compara o valor do botão opção com a opção de seguinte
	JEQ ConsultarStock2								; Se o valor do botão for igual à opção de seguinte, salta para a próxima página de stock

	CMP R1, OpcaoSairStock							; Compara o valor do botão opção com a opção de sair
	JEQ VoltarInicioStock							; Se o valor do botão for igual à opção de sair, salta para o menu principal

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

	MOV R0, PER_EN									; R0 tem o endereço do botão opção                                           
	MOVB R1, [R0]									; Leitura do periferico Opção                                         
	CMP R1, 0										; Compara o valor do botão opção com 0
	JEQ LeOpcaoConsultarStock2						; Se o valor do botão for 0, refaz a leitura                                  
	
	CMP R1, OpcaoAnteriorStock						; Compara o valor do botão opção com a opção de anterior
	JEQ ConsultarStock								; Se o valor do botão for igual à opção de anterior, salta para a página anterior de stock

	CMP R1, OpcaoSairStock							; Compara o valor do botão opção com a opção de sair
	JEQ VoltarInicioStock							; Se o valor do botão for igual à opção de sair, salta para o menu principal

	CALL RotinaErro
	JMP ConsultarStock2

VoltarInicioStock:
	JMP Ligado

;-----------------------------------------------------------------------------------------------------------------------------------------
;									                            Rotina Erro
;-----------------------------------------------------------------------------------------------------------------------------------------
;
;-----------------------------------------------------------------------------------------------------------------------------------------

RotinaErro:

    JMP Ligado