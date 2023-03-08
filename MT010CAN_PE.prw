/* 1 � Crie um ponto de entrada que seja executado
na inclus�o/altera��o de produtos. O objetivo
desse PE � acrescentar o texto �Cad. Manual - �
antes da descri��o do produto.
o Ex: �Cad. Manual � Fone de Ouvido� 

5 � Utilizando Ponto de Entrada, crie uma rotina
que far� com que qualquer produto, quando for
cadastrado no Protheus, tenha o status de
bloqueado (B1_MSBLQL = 1). */

#INCLUDE 'TOTVS.CH'

User Function MT010CAN()
    local nOpc := PARAMIXB[1]

    if (INCLUI .or. ALTERA) .and. nOpc == 1
        if ExistBlock('AddCad')
            ExecBlock('AddCad', .F., .F.)
        endif
    endif

Return 
