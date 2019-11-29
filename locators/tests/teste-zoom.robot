*** Settings ***
Documentation    This is a basic test for locators
Resource         ../resources/common.robot
Resource         ../resources/common-zoom.robot

Test Setup       Abrir browser no zoom
Test Teardown    Finalizar Teste

*** Variable ***
${URL_TEST}

*** Test Case ***
Adicionar livro no zoom
    [Documentation]          This is a test for locators
    Buscar pelo produto      iphone 8
    Escolher o produto       Smartphone Apple iPhone 8 64GB 12.0 MP Apple A11 Bionic iOS 11


