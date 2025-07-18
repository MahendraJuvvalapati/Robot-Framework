*** Settings ***
Library    SeleniumLibrary

Suite Setup   Log To Console    IM INSIDE SUITE SETUP
Suite Teardown  Log To Console    IM INSIDE SUITE TEARDOWN

Test Setup    Log To Console    IM INSIDE TEST SETUP
Test Teardown   Log To Console   IM INSIDE TEST TEARDOWN


*** Test Cases ***
Checking Setup ad Teardown
    Log To Console   Inside Test Case 1

Checking Setup ad Teardown 1
    Log To Console   Inside Test Case 2