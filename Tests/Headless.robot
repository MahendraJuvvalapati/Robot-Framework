*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.google.com/
*** Test Cases ***
Run Tests under Headless Browser
    Open Browser   ${URL}      headlesschrome
    Maximize Browser Window
     Sleep    2s
     Input Text    class=gLFyf    Automation Step by step
     Sleep    2s
     Click Button    class=gNO89b
     Sleep    2s
    #  Double Click Element    class=YmvwI
     Sleep    5s
     Close Browser