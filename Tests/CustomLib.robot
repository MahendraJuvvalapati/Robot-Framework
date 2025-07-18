*** Settings ***
Library    ../Resource/CustomLibrary.py

*** Test Cases ***
Adding two Nums
    ${output}    Add Two Nums    10    20    #it is passing arguments as Strins
    Log To Console    ${output} 
    ${output}   Add Nums    10    20    30    #this method will covert strings into intgers
    Log To Console    ${output}