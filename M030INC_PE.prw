/* 6 – Utilizando Ponto de Entrada, crie uma rotina
que fará com que qualquer cliente, quando for
cadastrado no Protheus, tenha o status de
bloqueado (A1_MSBLQL = 1). */

#INCLUDE 'TOTVS.CH'

User Function M030INC()
    local lRetorno := .f.
    local aArea := GetArea()
    local aAreaSA1 := SA1->(GetArea())

    if ExistBlock("CadCli")
        lRetorno := ExecBlock("CadCli", .F., .F.)
    endif

    RestArea(aArea)
    RestArea(aAreaSA1)
Return lRetorno
