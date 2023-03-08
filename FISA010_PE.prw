/* 9 � Desenvolva um PE na rotina FISA010 (Cadastro
de Munic�pios � M�dulo 09). Esse PE deve ser
utilizado para que, quando o usu�rio confirmar a
inclus�o de um novo munic�pio seja verificado se o
nome j� existe para a UF selecionada.
Se j� existir, exibir uma mensagem e impedir que o
processo continue. Caso contr�rio, deixar o
programa prosseguir normalmente. */

#INCLUDE "PROTHEUS.CH"

User Function FISA010()
    local aParam   := PARAMIXB
    local lRet     := .T.
    local oObj     := NIL
    local cIdPonto := ""
    local cIdModel := ""

    if aParam <> NIL
          oObj := aParam[1]         // Objeto do formul�rio ou do modelo, conforme o caso.
          cIDPonto := aParam[2]     // ID do local de execu��o do ponto de entrada.
          cIDModel := aParam[3]     // ID do formul�rio.

        If (cIDPonto == "MODELPOS")       // Na valida��o total do modelo.
            if ExistBlock('CadMun')
                lRet := ExecBlock('CadMun', .F.)
            endif
        endif
     EndIf

Return lRet
