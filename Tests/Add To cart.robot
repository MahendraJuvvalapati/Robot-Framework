*** Settings ***
Library    SeleniumLibrary
Resource   ../Resource/Variables/LoginPageVar.robot
*** Variables ***
${url}    https://dineshvelhal.github.io/testautomation-playground/login.html

*** Test Cases ***
Adding Items to cart
    [Documentation]    Addding items to cart...
    Open Browser    ${url}    ${BROWSER}
    Input Text    xpath=//input[@id='user']    admin
    Input Text   xpath=//input[@id='password']    admin
    Click Button    xpath=//button[@id='login']
    Click Element    xpath=//input[@id='rad_small']
    Select From List By Label    xpath=//select[@id='select_flavor']    Veggie Delight
    Click Element    id=rad_barbeque
    Click Element    id=green_olive
    Click Element    id=tomoto
    Input Text    id=quantity    5
    Click Button    id=submit_button
    Wait Until Page Contains    Pizza added to the cart!    5s
    Close Browser