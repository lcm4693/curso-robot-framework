*** Settings ***
Documentation  This is some basic info about the whole suite
Library           Selenium2Library    15.0    5.0

*** Variables ***
${SERVER_SELENIUM}  http://127.0.0.1:4444/wd/hub
${URL_TEST}     https://www.mercadolivre.com.br/

*** Test Case ***
User must sign in to check out
    [Documentation]  This is some basic about the Test
    #[Tags]  Smoke
    Open Browser    ${URL_TEST}  chrome  None  ${SERVER_SELENIUM}
    Wait Until Page Contains  Ofertas
    Input Text  name=as_word    Assimil Alemão
    Click Button    //button[@class='nav-search-btn']
    Wait Until Page Contains    resultados

    # Clique através de seletores usando o DOM
    Click Link    css=#MLB1264956123 > div > div > div.carousel > ul > li > a

    # Clique no link através do ID
    # Click Link  //div[@id='MLB1264956123']//a[@class='item-link item__js-link']
    
    # Clique usando o alt da imagem
    # Click Image  Raro - O Novo Alemão Sem Esforço Assimil - Método - Original

    Wait Until Page Contains    Voltar à lista
    Click Button    //input[@value='Adicionar ao carrinho']
    Page Should Contain Element     //h2[@class='auth-title notRegistered']  
    Element Text Should Be  //h2[@class='auth-title notRegistered']  Olá! Para adicionar ao carrinho, acesse a sua conta
    Sleep  2s

    Close Browser



*** Keywords ***

