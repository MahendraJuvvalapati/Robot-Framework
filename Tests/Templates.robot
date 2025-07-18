# Created by DELL at 11/13/2024
*** Settings ***
Library    SeleniumLibrary
Test Template    LoginTestCase

*** Variables ***
${URL}          https://opensource-demo.orangehrmlive.com/web/index.php/auth/login


*** Keywords ***
LoginTestCase
    [Arguments]    ${username}    ${password}    ${expected_message}
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Sleep    5s
    Input Text      name=username      ${username}
    Input Text      name=password      ${password}
    Click Button    xpath=//button[@type='submit']
    Sleep    5s
    Page Should Contain    ${expected_message}
    Close Browser


*** Test Cases ***
Valid Login
           Admin    admin123    Dashboard

Invalid Login
    [Template]    LoginTestCase
    admin    wrongpassword  Invalid credentials
    user    admin123    Invalid credentials