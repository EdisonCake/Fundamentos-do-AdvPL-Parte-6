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
