*** Settings ***

*** Variable ***
${BROWSER}  chrome


*** Keywords ***
Abrir o navegador
    Open Browser     about:blank    ${BROWSER}    None    http://127.0.0.1:4444/wd/hub
    Maximize Browser Window     
    # Go to            ${ENDERECO}

Fechar o navegador
    Close Browser