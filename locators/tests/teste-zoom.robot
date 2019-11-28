*** Settings ***
Documentation    This is a basic test for locators
Resource         ../resources/common.robot
Resource         ../resources/common-zoom.robot

*** Variable ***
${URL_TEST}

*** Test Case ***
Adicionar livro no zoom
    [Documentation]             This is a test for locators
    Abrir browser no zoom
    Wait Until Page Contains    Compare preços.
    Click Element               //div[@class='zsearch__fake']//input[@placeholder='Digite sua busca...']
    Sleep                       1s
    Input Text                  //div[@class='zsearch__inputGroup']//input[@placeholder='Digite sua busca...']    Assimil Alemão
    Click Button                //button[@class='zsearch__submit']
    Wait Until Page Contains    produtos
    Click Image                 Assimil Novo Alemao Sem Custo - Superpack - 4 Cd Audio + 1 Cd Mp3
    [Teardown]                  Finalizar Teste