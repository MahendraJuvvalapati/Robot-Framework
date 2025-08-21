*** Settings ***
Library    SeleniumLibrary
Resource   ../Resource/Variables/LoginPageVar.robot

*** Test Cases ***
Handling iframes
    Open Browser    https://www.w3schools.com/js/tryit.asp?filename=tryjs_myfirst    ${BROWSER}
    Maximize Browser Window

    Select Frame    id=iframeResult
    Current Frame Should Contain    My First JavaScript
    Current Frame Should Not Contain    text
    Click Button    css=button[type='button']
    Sleep    3s
    Unselect Frame


    Frame Should Contain    id=iframeResult    My First JavaScript