*** Settings ***
Library    SeleniumLibrary
Resource   ../Resource/Variables/LoginPageVar.robot
*** Variables ***
${URL}     https://example.com

*** Test Cases ***
Verify Example Page Title
    Open Browser    ${URL}    ${BROWSER}
    Sleep    3s
    Title Should Be    Example Domain
    Sleep    3s
    Close Browser
