*** Settings ***
Resource    ./PO/landing.robot
Resource    ./PO/topnav.robot
Resource    ./PO/team.robot

*** Variable ***
${ENDERECO}     http://www.robotframeworktutorial.com/front-office/ 

*** Keywords ***
Ir para pagina inicial
    Ir para pagina   ${ENDERECO}
    landing.Verificar carregamento da pagina

Ir para Team Page
    Clicar no menu  Team
    team.Verificar carregamento da pagina

Validar pagina Team 
    team.Validar conteudo da pagina
    