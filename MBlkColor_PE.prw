#INCLUDE 'Protheus.ch'

#DEFINE CLR_RGB_VERMELHO RGB(255,000,000)
#DEFINE CLR_RGB_BRANCO RGB(254,254,254)

User Function MBlkColor()
    aRet := {}

    aAdd(aRet, (CLR_RGB_BRANCO)  )
    aAdd(aRet, (CLR_RGB_VERMELHO))

Return aRet
