*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}     https://example.com

*** Test Cases ***
Verify Example Page Title
    Open Browser    ${URL}    headlesschrome
    Sleep    3s
    Title Should Be    Example Domain
    Sleep    3s
    Close Browser
