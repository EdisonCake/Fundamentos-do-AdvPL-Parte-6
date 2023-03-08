/* 8 – Utilizando um Ponto de Entrada, faça com que
os registros bloqueados de qualquer tabela sejam
apresentados com uma cor diferente, como no
exemplo abaixo (o produto “TESTE 02” está
bloqueado): */

#INCLUDE 'Protheus.ch'

#DEFINE CLR_RGB_ROSA_PASTEL RGB(255,203,219)
#DEFINE CLR_RGB_GREY31 RGB(79,79,79)

User Function MBlkColor()
    aRet := {}

    aAdd(aRet, (CLR_RGB_GREY31)  )
    aAdd(aRet, (CLR_RGB_ROSA_PASTEL))

Return aRet
