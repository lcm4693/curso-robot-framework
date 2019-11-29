*** Settings ***
Documentation    This is a basic test for locators
Resource         ../resources/common.robot
Resource         ../resources/common-mercadolivre.robot
Test Setup       Abrir browser no mercado livre
Test Teardown    Finalizar Teste

*** Variable ***


*** Test Case ***
Adicionar livro no mercado livre
    [Documentation]                  This is a test for locators
    Buscar pelo produto              iphone 8
    Escolher o produto               Apple iPhone 8 64 GB Cinza-espacial
    Adicionar Produto ao carrinho

