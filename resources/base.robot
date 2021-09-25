***Settings****
Documentation    Arquivo base do projeto, informações como Inicialização do Browser, Libraries, Keywords e outras que podem ser reusadas em múltiplas suites ficarão aqui

Library    Browser
Library    OperatingSystem

Resource    actions/keywords_busca.robot

***Keywords***
Start Browser
    New Browser    chromium                      False
    New Page       https://hypeflame.blog/?s=

    #Checkpoint para validar que estou na página correta
    Get Text    h1    contains    Resultados da busca por: 

Get JSON
    [Arguments]    ${file_name}

    ${file}         Get File             ${EXECDIR}/resources/test_data/${file_name}
    ${super_var}    Evaluate             json.loads($file)    json

    [return]    ${super_var}
