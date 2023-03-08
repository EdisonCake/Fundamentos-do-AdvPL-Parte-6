/* 2 – Crie um campo na tabela SC5 com as seguintes
características:
o Nome do Campo: Tipo de Inclusão
o Opções do Campo (Lista): Manual / Automático
Após criar o campo, utilize um ponto de entrada
para impedir a exclusão de pedidos de venda que
tenham esse novo campo com o valor “Automático”. */

#INCLUDE 'TOTVS.CH'

User Function A410EXC()
    local lRetorno := .F.
    local aArea     := GetArea()
    local aAreaSC5  := SC5->(GetArea())

    if ExistBlock('DelPed')
        lRetorno := ExecBlock('DelPed', .F., .F.)
    endif

    RestArea(aArea)
    RestArea(aAreaSC5)
Return lRetorno
