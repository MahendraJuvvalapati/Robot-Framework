*** Settings ***
Library    SeleniumLibrary
Resource   ../Variables/LoginPageVar.robot

*** Keywords ***
Open Login Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    3s

Input User
    [Arguments]    ${username}
    Input Text    ${USERNAME_FIELD}    ${username}

Input Pass
    [Arguments]    ${password}
    Input Text    ${PASSWORD_FIELD}    ${password}

Click Login Button
    Click Button    ${LOGIN_BUTTON}

Page Should Contain text
    Sleep    2s
    [Arguments]    ${message}
    Page Should Contain    ${message}

Login
    [Arguments]   ${user}   ${pass}   ${message}
    Input User    ${user}
    Input Pass    ${pass}
    Click Login Button
    Page Should Contain text    ${message}
