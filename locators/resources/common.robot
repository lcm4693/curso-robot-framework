*** Settings ***
Library               Selenium2Library                15.0    5.0

*** Variable ***
${BROWSER}            chrome

*** Keywords ***
Acessar endereço no browser
    [Arguments]      @{URL_TEST}
    Open Browser     about:blank    ${BROWSER}    None    http://127.0.0.1:4444/wd/hub
    Go to            @{URL_TEST}
Finalizar Teste
    Close Browser
