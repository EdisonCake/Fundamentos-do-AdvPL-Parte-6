/* 7 � Utilize um PE para adicionar uma nova op��o ao
bot�o �Outras A��es� do cadastro de
fornecedores. Essa op��o dever� ter o nome
�Cad. Produtos� e quando clicar nela, dever� abrir
o browse do cadastro de produtos, permitindo
realizar qualquer uma das opera��es padr�o
(Incluir, Alterar, Visualizar, Excluir...) */

#INCLUDE 'TOTVS.CH'

User Function MA020ROT()
    local aRotUser := {}

    aAdd(aRotUser, {'Cad.Produto', 'u_mBrowSB1', 0, 6})

Return aRotUser

