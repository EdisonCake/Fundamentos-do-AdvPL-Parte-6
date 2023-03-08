/* 7 – Utilize um PE para adicionar uma nova opção ao
botão “Outras Ações” do cadastro de
fornecedores. Essa opção deverá ter o nome
“Cad. Produtos” e quando clicar nela, deverá abrir
o browse do cadastro de produtos, permitindo
realizar qualquer uma das operações padrão
(Incluir, Alterar, Visualizar, Excluir...) */

#INCLUDE 'TOTVS.CH'

User Function MA020ROT()
    local aRotUser := {}

    aAdd(aRotUser, {'Cad.Produto', 'u_mBrowSB1', 0, 6})

Return aRotUser

