*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}     https://example.com

*** Test Cases ***
Verify Example Page Title
    Open Browser    ${URL}    Chrome
    Sleep    3s
    Title Should Be    Example Domain
    Sleep    3s
    Close Browser
