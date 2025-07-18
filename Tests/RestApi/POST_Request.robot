*** Settings ***
Library    RequestsLibrary

*** Variables ***
${url}        https://jsonplaceholder.typicode.com
${endpoint}   /posts

&{Dic_values}    userId=5    id=101    title=Checking Post Requests    body=This is for Checking the functionality of the Post method
*** Test Cases ***
Create New Post
    Create Session    MySession    ${url}

    #posting to the db
    ${response}=    POST On Session    MySession    ${endpoint}    data=${Dic_values}    #accepts dictonary or json
    Log To Console    Response :${response}
    Status Should Be    201    ${response}

    ${status_code}=    Convert To String    ${response.status_code}
    Log To Console    Status Code :${status_code}
    Should Be Equal    201    ${status_code}
    
    ${body}=       Convert To String    ${response.content}
    Log To Console    ${body}

    ${res_body}=    Evaluate    ${body}

    Log To Console    ${res_body}
    Log To Console    Title is ${res_body}[title]

    Log To Console    id: ${res_body}[id]
    Should Be Equal As Integers    ${res_body}[id]    101