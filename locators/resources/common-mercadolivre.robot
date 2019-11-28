*** Settings ***

*** Variable ***
${URL_ML}      https://www.mercadolivre.com.br/

*** Keywords ***
Abrir browser no mercado livre
    Acessar endereço no browser  ${URL_ML}

Buscar pelo produto
    Wait Until Page Contains          Mercado Livre Brasil - Onde comprar e vender de Tudo
    Input Text                        name=as_word                                                    Assimil Alemão
    Click Button                      //button[@class='nav-search-btn']
    Wait Until Page Contains          resultados

Escolher o produto
    Click Image                       Raro - O Novo Alemão Sem Esforço Assimil - Método - Original
    Wait Until Page Contains          Usado

Adicionar Produto ao carrinho
    Click Button                      //input[@value='Adicionar ao carrinho']
    Wait Until Page Contains          Olá! Para adicionar ao carrinho, acesse a sua conta