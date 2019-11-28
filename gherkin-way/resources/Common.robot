*** Settings ***
Library               SeleniumLibrary

*** Variables ***
${SERVER_SELENIUM}    http://127.0.0.1:4444/wd/hub

*** Keywords ***
Begin Web Test
    Open Browser     about:blank    chrome    None    ${SERVER_SELENIUM}
    # Maximize Browser Window

End Web Test
    Close Browser