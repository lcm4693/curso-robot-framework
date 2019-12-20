*** Settings ***
Library          Selenium2Library                      15.0    5.0

*** Variable ***
${LANDING_NAVIGATION_ELEMENT}    id=mainNav

*** Keywords ***
Ir para pagina 
    [Arguments]     ${pagina}
    Go To   ${pagina}

Verificar carregamento da pagina
    Wait Until Page Contains Element  ${LANDING_NAVIGATION_ELEMENT}