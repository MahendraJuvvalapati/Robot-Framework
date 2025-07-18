*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${url}        https://jsonplaceholder.typicode.com
${id}         1
${endpoint}   /users/${id}

*** Test Cases ***
Get Information
    
    # Creating a session
    Create Session    MySession    ${url}
    
    # Sending GET request
    ${response}=    GET On Session   MySession    ${endpoint}
    
    Log To Console    Getting Json formatted Response :${response.json()}
    Log To Console   Final Url: ${response.url}
    Log To Console    ${response.ok}

    # Extracting and logging response details
    ${status_code}=    Convert To String    ${response.status_code}
    Log To Console    Status Code: ${status_code}
    
    ${body}=    Convert To String    ${response.content}
    Log To Console    Response Body: ${body}
    
    ${headers}=    Get From Dictionary    ${response.headers}    Content-Type
    Log To Console    Content-Type Header: ${headers}

    ${res_body}=    Evaluate    ${body}
    Log To Console    ${res_body}

    ${name}=    Get From Dictionary    ${res_body}    name
    Log To Console    ${name}
    
    Log To Console    ${res_body}[email]
    Log To Console    ${res_body}[address]
    Log To Console    ${res_body}[address][zipcode]
    Log To Console    ${res_body}[company]
    Log To Console    ${res_body}[company][bs]

    
    # Validating responses
    Status Should Be    200    ${response}
    Should Be Equal As Strings    ${status_code}    200
    Should Contain    ${body}    Bret
    Should Be Equal   ${headers}    application/json; charset=utf-8
    Should Be Equal As Strings    ${res_body}[name]    Leanne Graham
    Dictionary Should Contain Key    ${response.json()}    id