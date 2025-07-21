*** Settings ***
Library    RequestsLibrary

*** Variables ***
${url}        https://jsonplaceholder.typicode.com
${endpoint}   /posts

&{Dic_values}    userId=5    id=101    title=Checking Post Requests    body=This is for Checking the functionality of the Post method
*** Test Cases ***
Delete Post
    Create Session    MySession    ${url}

    # Deleting the post with id=101
    ${delete_endpoint}=    Set Variable    ${endpoint}/101

    ${response}=    DELETE On Session    MySession    ${delete_endpoint}
    Log To Console    Response : ${response}

    Status Should Be    200    ${response}

    ${status_code}=    Convert To String    ${response.status_code}
    Log To Console    Status Code : ${status_code}
    Should Be Equal    200    ${status_code}

    ${body}=    Convert To String    ${response.content}
    Log To Console    Response Body: ${body}