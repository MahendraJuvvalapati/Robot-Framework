*** Settings ***
Library         SeleniumLibrary
Library         JSONLibrary
Resource        ../Resource/Keywords/LoginPageKw.robot

*** Variables ***
${JSON_FILE}    ./Test Data/JsonData.json

*** Test Cases ***
Login Test with JSON Data
    ${data}=    Load Json From File    ${JSON_FILE}
    Log To Console    ${data}
    Log To Console    ${data['testdata'][2]}
    FOR    ${case}    IN    @{data['testdata']}
        Open Login Page
        Login    ${case['userName']}    ${case['Password']}    ${case['Message']}
        Close Browser
    END