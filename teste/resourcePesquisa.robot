*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Library           Selenium2Library    15.0    5.0

*** Variables ***
${SERVER}      http://www.google.com.br
${DELAY}       0.3

*** Keywords ***
Pesquisar no google usando o navegador
    [Documentation]    Pesquisa no google o texto do argumento
    Abrir a pagina de pesquisa no navegador  ${BROWSER}
    Pagina de pesquisa do google deve estar aberta
    Inserir na pesquisa o texto  ${texto}
    
    Clicar no botao de Pesquisa Google
    Aguardo aparecer o resultado da pesquisa  ${texto}
    
    [Arguments]    ${texto}  ${BROWSER}
    #[Teardown]    Close Browser

Abrir a pagina de pesquisa no navegador
    [Arguments]    ${BROWSER}
    Open Browser            ${SERVER}   ${BROWSER}   None  http://127.0.0.1:4444/wd/hub
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    
Pagina de pesquisa do google deve estar aberta
    Title Should Be    Google
    
Inserir na pesquisa o texto
    [Arguments]    ${texto}
    Wait Until Page Contains Element    q
    Input Text    q    ${texto}
    

Clicar no botao de Pesquisa Google
    Click Button    Pesquisa Google

    
Aguardo aparecer o resultado da pesquisa
    [Arguments]    ${texto}
    Wait Until Page Contains    ${texto}
    
Visualizar imagens da pesquisa
    Click Link    Imagens

Fechar Browser
    Close Browser 