*** Settings ***
Library          Selenium2Library                          15.0    5.0

*** Variable ***
${SERVER_SELENIUM}    http://127.0.0.1:4444/wd/hub

*** Keywords ***
Acessar endereço no browser
    [Arguments]      @{URL_TEST}
    Open Browser     about:blank    chrome    None    ${SERVER_SELENIUM}
    Go to            @{URL_TEST}
Finalizar Teste
    Close Browser
