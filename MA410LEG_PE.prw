#INCLUDE 'PROTHEUS.CH'

User Function MA410LEG()
    local aLeg := {{'CHECKOK', 'Pedido em aberto'},;
                    {'BR_CANCEL', 'Pedido encerrado'},;
                    {'GCTPIMSE', 'Pedido liberado'}}

    AADD(aLeg, {"BR_AZUL" ,"Pedido Bloqueado por Regra"})
    AADD(aLeg, {"BR_LARANJA" ,"Pedido Bloqueado por Verba"})

Return aLeg
