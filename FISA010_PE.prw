/* 9 – Desenvolva um PE na rotina FISA010 (Cadastro
de Municípios – Módulo 09). Esse PE deve ser
utilizado para que, quando o usuário confirmar a
inclusão de um novo município seja verificado se o
nome já existe para a UF selecionada.
Se já existir, exibir uma mensagem e impedir que o
processo continue. Caso contrário, deixar o
programa prosseguir normalmente. */

#INCLUDE "PROTHEUS.CH"

User Function FISA010()
    local aParam   := PARAMIXB
    local lRet     := .T.
    local oObj     := NIL
    local cIdPonto := ""
    local cIdModel := ""

    if aParam <> NIL
          oObj := aParam[1]         // Objeto do formulário ou do modelo, conforme o caso.
          cIDPonto := aParam[2]     // ID do local de execução do ponto de entrada.
          cIDModel := aParam[3]     // ID do formulário.

        If (cIDPonto == "MODELPOS")       // Na validação total do modelo.
            if ExistBlock('CadMun')
                lRet := ExecBlock('CadMun', .F.)
            endif
        endif
     EndIf

Return lRet
