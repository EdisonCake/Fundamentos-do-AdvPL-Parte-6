/* 4 – Você acabou de mudar a legenda no browse dos
pedidos de venda, agora, utilizando outro PE,
altere as imagens da janela onde é possível
identificar o que cada legenda representa. Deve
ficar desse jeito: */

#INCLUDE 'PROTHEUS.CH'

User Function MA410LEG()
    local aLeg := {{'CHECKOK', 'Pedido em aberto'},;
                    {'BR_CANCEL', 'Pedido encerrado'},;
                    {'GCTPIMSE', 'Pedido liberado'}}

    AADD(aLeg, {"BR_AZUL" ,"Pedido Bloqueado por Regra"})
    AADD(aLeg, {"BR_LARANJA" ,"Pedido Bloqueado por Verba"})

Return aLeg
