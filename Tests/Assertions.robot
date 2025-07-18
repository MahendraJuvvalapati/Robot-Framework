*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Checking Assertions
    ${isValid}    Set Variable    ${True}
    Should Be True    ${isValid}
    Log To Console    ${isValid}
    ${isValid}=     Set Variable If    ${isValid}   ${False}
    Should Not Be True    ${isValid}
    Log To Console    ${isValid}