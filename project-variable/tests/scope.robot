*** Settings ***
Resource                            ../resources/scope.resource.robot

*** Variable ***
# Nessa seção não precisa dar um SetVariable
${MY_VARIABLE}                      Valor Inicial
${VARIAVEL_SOBRESCRITA_NO_TESTE}    Variável vindo do script

*** Test Case ***
Log the variable contexts
    # Variável global
    ${MY_VARIABLE}       Set Variable                Some information
    Log                  ${MY_VARIABLE}

    ${variavel_local}    Set Variable                Escopo Local
    Log                  ${variavel_local}

    # Variável de escopo de script (declarada no resource)
    Log                  ${SCRIPT_SCOPE_VARIABLE}

    # Variável do resource sendo reescrita aqui no script
    Log                  ${VARIAVEL_SOBRESCRITA_NO_TESTE}

    # Criando um array e exibindo a posição 0 desse array
    @{variable_array}   Create List     Diego   Livia
    Log     @{variable_array}[0]



Second Test
    # A variável abaixo está declarada em contexto global (em maiúsculo), por isso todos os teses podem usar
    Log                  ${MY_VARIABLE}

    # A variável abaixo está no escopo somente do texto acima, por isso não funciona aqui
    # Log                  ${variavel_local}

*** Keywords ***
