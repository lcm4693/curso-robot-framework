*** Settings ***
Documentation   This file has purpose to find out new errors
Resource    ../resources/frontOfficeApp.robot
Resource    ../resources/commonWeb.robot

Test Setup  Abrir o navegador
Test Teardown   Fechar o navegador

*** Variable ***

*** Test Case ***
Should be able to access "Team" page
    [Documentation]     Teste que verifica se é possível acessar a página "Team"
    [Tags]  Teste 1
    Log     Executing Teste 1
    Sleep   2s

Team page should match requirements
    [Documentation]     Teste que verifica se a página "Team" está ok
    [Tags]  Teste 2
    Log     Executing Teste 2
    Sleep   2s