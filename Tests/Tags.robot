*** Settings ***
Library    SeleniumLibrary

default Tags    sanity

*** Test Cases ***
checking Tags keyword
    [Tags]    smoke
    Log To Console    Inside Smoke ${TEST_TAGS}


checking default Tags
    Log To Console    Inside Default ${TEST_TAGS}


checking set Tags
    Set Tags    regression    #This will set a name to test case by not removing eisting tag
    Log To Console    Inside Set tag ${TEST_TAGS}