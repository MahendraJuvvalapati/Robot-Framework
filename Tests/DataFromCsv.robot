*** Settings ***
Library     SeleniumLibrary
Resource    ../Resource/Keywords/LoginPageKw.robot
Test Template   Test Data
Library     DataDriver   ../Test Data/CsvData.csv

Test Setup  Open Login Page
Test Teardown   Close Browser


*** Keywords ***
Test Data
    [Arguments]   ${userName}   ${Password}   ${Message}
    Login    ${userName}   ${Password}   ${Message}



*** Test Cases ***
Login Tests Using CSV ${userName} and ${Password}
    [Template]  Test Data
    ${userName}   ${Password}  ${Message}
