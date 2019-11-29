*** Settings ***

*** Variable ***
${URL_ZOOM}    https://www.zoom.com.br/

*** Keywords ***
Abrir browser no zoom
    Acessar endereço no browser    ${URL_ZOOM}

Buscar pelo produto
    [Arguments]                    @{TERMO_PARA_BUSCAR}
    Wait Until Page Contains       Compare preços.
    Click Element                  //div[@class='zsearch__fake']//input[@placeholder='Digite sua busca...']
    Sleep                          1s
    Input Text                     //div[@class='zsearch__inputGroup']//input[@placeholder='Digite sua busca...']    @{TERMO_PARA_BUSCAR}
    Click Button                   //button[@class='zsearch__submit']
    Wait Until Page Contains       produtos

Escolher o produto
    [Arguments]     @{alt_imagem_produto}
    Click Image                    @{alt_imagem_produto} 

