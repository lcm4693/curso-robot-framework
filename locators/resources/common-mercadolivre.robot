*** Settings ***

*** Variable ***
${URL_ML}      https://www.mercadolivre.com.br/

*** Keywords ***
Abrir browser no mercado livre
    Acessar endereço no browser  ${URL_ML}

Buscar pelo produto
    [Arguments]     @{TERMO_PARA_BUSCAR}
    Wait Until Page Contains          Mercado Livre Brasil - Onde comprar e vender de Tudo
    Input Text                        name=as_word                                                    @{TERMO_PARA_BUSCAR}
    Click Button                      //button[@class='nav-search-btn']
    Wait Until Page Contains          resultados

Escolher o produto
    [Arguments]     @{alt_imagem_produto}
    Click Image                       @{alt_imagem_produto}
    Wait Until Page Contains          vendidos

Adicionar Produto ao carrinho
    Click Button                      //button[@class='andes-button andes-button--outline']
    Wait Until Page Contains          Olá! Para adicionar ao carrinho, acesse a sua conta