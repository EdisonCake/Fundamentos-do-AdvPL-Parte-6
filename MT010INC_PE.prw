#INCLUDE 'TOTVS.CH'

User Function MT010INC()
    Local aArea     := GetArea()
    Local aAreaSB1  := SB1->(GetArea())
    Local lRetorno  := .F.

    if ExistBlock('AddCad')
        lRetorno := ExecBlock('AddCad', .F., .F.)
    endif

    RestArea(aArea)
    RestArea(aAreaSB1)
Return lRetorno
