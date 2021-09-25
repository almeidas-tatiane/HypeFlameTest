***Settings***
Resource         ${EXECDIR}/resources/base.robot
Documentation    Suite de Teste - Busca de Artigos no Site da HypeFlame - Teste do Processo Seletivo

Test Setup       Start Browser
Test Teardown    Take Screenshot

***Test Cases***
Pesquisar artigos com um título válido
    ${valid_values}    Get JSON    valid_values.json

    Search By                      ${valid_values["article_subject"]}
    #Validação
    Validation Search Result By    ${valid_values["article_subject"]}
    Get Element Count              css = .entry-title a[href*=${valid_values["href_item"]}]    equal    ${valid_values["itens_returned"]}



Pesquisar artigos com combinações inválidas
    ${invalid_values}    Get JSON    invalid_values.json

    Search By    ${invalid_values["article_subject"]}
    #Validação
    Get Text     css = .page-header > h1                 contains    Nenhum resultado






