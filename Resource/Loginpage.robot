*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}          https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${USERNAME_FIELD}    name=username
${PASSWORD_FIELD}    name=password
${LOGIN_BUTTON}       xpath=//button[@type='submit']

*** Keywords ***
Open Login Page
    Open Browser    ${URL}    chrome
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