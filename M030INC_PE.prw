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
