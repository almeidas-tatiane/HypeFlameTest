***Settings***
Documentation    Agrupamento das Keywords usadas na Suite de Teste busca.robot

***Variables***
${RESULTADOS_DA_BUSCA_POR}    css = .page-title>span
${LUPA}                       css = #header-search > svg
${TEXT_BOX_PESQUISA}          css = input[title="Pesquisar por:"]
${ACAO_BUSCAR}                css = .submit

***Keywords***
Search By
    [Arguments]    ${expected_value}

    #Busca
    Click        ${LUPA}
    Fill Text    ${TEXT_BOX_PESQUISA}    ${expected_value}
    Click        ${ACAO_BUSCAR}

Validation Search Result By
    [Arguments]    ${actual_value}

    Get Text    ${RESULTADOS_DA_BUSCA_POR}    contains    ${actual_value}

