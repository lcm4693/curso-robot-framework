*** Settings ***
Documentation  This is a basic test for locators
Library           Selenium2Library    15.0    5.0

*** Variable ***
${SERVER_SELENIUM}  http://127.0.0.1:4444/wd/hub
${URL_TEST}     https://www.mercadolivre.com.br/

*** Test Case ***
Should be able to search products
    [Documentation]     This is a test for locators
    Open Browser    ${URL_TEST}  chrome  None  ${SERVER_SELENIUM}
    Input Text  name=as_word  Assimil Alemão
    Click Button    //button[@class='nav-search-btn']
    Wait Until Page Contains    resultados
    Click Link   //li[@class='ch-carousel-item']//a[@class='item-link item__js-link']
    Close Browser