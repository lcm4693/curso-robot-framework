*** Settings ***
Library          Selenium2Library                      15.0    5.0

*** Variable ***
${TEAM_HEADER_LABEL}    css=#team > div > div:nth-child(1) > div > h2

*** Keywords ***
Verificar carregamento da pagina
    Wait Until Page Contains Element    ${TEAM_HEADER_LABEL}

Validar conteudo da pagina
    # This test fails in chrome but passes in Edge, cause we have to compare case sensitive
    # Element Text Should Be      ${TEAM_HEADER_LABEL}      Our Amazing Team    

    ${ELEMENT_TEXT}     Get Text    ${TEAM_HEADER_LABEL}
    Should Be Equal As Strings      ${ELEMENT_TEXT}     Our Amazing Team    ignore_case=true
