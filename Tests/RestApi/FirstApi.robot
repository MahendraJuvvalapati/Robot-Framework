*** Settings ***
Library    RequestsLibrary
Library    SeleniumLibrary


*** Variables ***
${url}    https://jsonplaceholder.typicode.com

*** Test Cases ***
First test On Rest API
    ${Session}=    Create Session    ses    ${url}
    Log To Console    Created Session:${Session}
    ${is_exist}=    Session Exists    ses
    Should Be True    ${is_exist}
    Log To Console    ${is_exist}
    