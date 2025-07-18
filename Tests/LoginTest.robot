*** Settings ***
Library    SeleniumLibrary
Resource   ../Resource/Keywords/LoginPageKw.robot
Test Setup  Open Login Page
Test Teardown   Close Browser



*** Test Cases ***

Valid Login Test
    Login    Admin    admin123    Dashboard

Invalid Login Test
    Login    Admin    Admin    Invalid credentials
