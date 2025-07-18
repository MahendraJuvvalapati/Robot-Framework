*** Settings ***
Library     SeleniumLibrary
Library    Collections

*** Variables ***

@{nums}     1 2 3 4 5 6 7 8 9
@{Str}      mahi  mahesh  mahendra
&{var}      name=mahi    age=23    mob_no=9100

*** Test Cases ***
For_Loop
    FOR    ${i}    IN RANGE    1    10
           Log To Console    ${i}
    END
For_Loop for List
    FOR    ${element}    IN    @{nums}
        Log To Console  ${element}
    END
For_loop with Strings
    FOR    ${string}    IN    @{str}
        Log To Console  ${string}
    END
For_Loop with Condition
    FOR    ${i}    IN RANGE    1    10
           Log To Console    ${i}
           Exit For Loop If    ${i}==7
    END
For_Loop With Dictonaries
    @{dict_keys}=    Get Dictionary Keys    ${var}
    Log To Console    ${dict_keys}
    @{values}=    Get Dictionary Values    ${var}
    Log To Console    ${values}
    FOR    ${key}    IN    @{dict_keys}
        Log To Console    ${key}
        ${value}=    Get From Dictionary    ${var}    ${key}
        Log To Console    ${value}
        Log To Console    ${key}=${value}
    END