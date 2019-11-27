*** Settings ***
Documentation     Suite de testes integrados de tela
...
...               Os casos de teste sao importados
...               dos arquivos de resource.
Resource          resourcePesquisa.robot


*** Keywords ***


*** Test Cases ***
# Pesquisar no google a palavra RobotFramework usando o firefox
#     Pesquisar no google usando o navegador  RobotFramework  firefox
#     Visualizar imagens da pesquisa
    
Pesquisar no google a palavra RobotFramework usando o chrome
    Pesquisar no google usando o navegador  RobotFramework  chrome
    Visualizar imagens da pesquisa
    Fechar Browser   
    
# Pesquisar no google a palavra RobotFramework usando o ie
#     Pesquisar no google usando o navegador  RobotFramework  ie
#     Visualizar imagens da pesquisa

# Pesquisar no google a palavra RobotFramework usando o edge
#     Pesquisar no google usando o navegador  RobotFramework  edge
#     Visualizar imagens da pesquisa