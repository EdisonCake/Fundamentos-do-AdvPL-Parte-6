#INCLUDE 'TOTVS.CH'
#INCLUDE 'TBICONN.CH'
#INCLUDE 'TOPCONN.CH'

// Rotina para validação extra do cadastro de produtos
User Function AddCad()
    Local aArea := GetArea()
     
    RecLock("SB1", .F.)

    SB1->B1_DESC := 'Cad. Manual - ' + M->B1_DESC   // A descrição do produto tem adicionado um "Cad. Manual".
    SB1->B1_MSBLQL := "1"                           // O cadastro é automaticamente bloqueado/inativado após o cadastro.
    
    SB1->(MsUnlock())
    RestArea(aArea)
Return

// Rotina para impedir a exclusão de pedidos de venda com situação "automatico".
User Function DelPed()
    local lRet := .F.

    if C5_ZTIPO == alltrim("1")
        lRet := .T.
    else
        MsgStop("Pedido automático! Não pode ser excluído.", "Atenção!")
    endif

Return lRet

// Rotina de validação extra para cadastro de clientes, ao ser cadastrado, o cliente já entra como inativo.
User Function CadCli()
    Local aArea := GetArea()

    RecLock("SA1", .F.)

    SA1->A1_MSBLQL := "1"

    SA1->(MsUnlock())
    RestArea(aArea)
Return 

// Rotina mBrowse da tabela SB1 para cadastro de produtos.
User Function mBrowSB1()
    local aArea     := GetArea()
    local cAlias    := "SB1"
    local aRotina   := {}

    aAdd(aRotina, {'Pesquisar',    'AxPesqui',   0, 1})
    aAdd(aRotina, {'Visualizar',   'AxVisual',   0, 2})
    aAdd(aRotina, {'Cadastrar',    'AxInclui',   0, 3})
    aAdd(aRotina, {'Alterar',      'AxAltera',   0, 4})
    aAdd(aRotina, {'Excluir',      'AxDeleta',   0, 5})
    
    DbSelectArea("SB1")
    ("SB1")->(DbSetOrder(1))

    MBrowse(NIL, NIL, NIL, NIL, cAlias,,,,,,,,,,,,,,,,)

    DbCloseArea()
    RestArea(aArea)

Return

// Rotina para validação de cadastro de municípios.
User Function CadMun()
    local aArea := GetArea()
    local cAlias := GetNextAlias()
    local cQuery := ""
    local nCount := 0
    local lValido := .T.

    cQuery := "SELECT CC2_EST, CC2_CODMUN, CC2_MUN FROM " + RetSqlName("CC2") + " WHERE CC2_EST = '" + M->CC2_EST  + "' AND CC2_MUN = '" + alltrim(M->CC2_MUN) + "'"
    
    TCQUERY cQuery ALIAS &(cAlias) NEW
    &(cAlias)->(DBGOTOP())

    While &(cAlias)->(!EOF())
        nCount++
        &(cAlias)->(DBSKIP())
    end

    if nCount > 1
        MSGStop("O município já existe!")
        lValido := .F.
    else
        lValido := .T.
    endif

    &(cAlias)->(DBCLOSEAREA())
    RestArea(aArea)

Return lValido
