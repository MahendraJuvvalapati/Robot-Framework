*** Settings ***
Library      SeleniumLibrary
Resource    ../Resource/Keywords/LoginPageKw.robot
Library     DataDriver  ../Test Data/ExcelData.xlsx   sheet_name=Sheet1

Test Template   Test Data

Test Setup  Open Login Page
Test Teardown   Close Browser



*** Keywords ***
Test Data
    [Arguments]    ${userName}   ${Password}   ${Message}
    Login    ${userName}    ${Password}    ${Message}



*** Test Cases ***
Login Test Using Excel Data ${userName} and ${Password}
    [Template]  Test Data
    ${userName}    ${Password}    ${Message}