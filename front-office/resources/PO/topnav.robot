*** Settings ***
Library          Selenium2Library                      15.0    5.0

*** Variable ***

*** Keywords ***
Clicar no menu
    [Arguments]    ${menu}
    Click Link   xpath=//a[contains(text(), '${menu}')]
    Sleep   1s