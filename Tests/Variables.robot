*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${Scalar}    Mahendra    10    c

@{lists}             Admin   admin123

&{dict}        username=Admin     password=admin123

# ${env_var}        %{username}      #this will hold the adminstartor of this device

# ${env_var1}        %{os}       #this will hold the specs of device

*** Test Cases ***
Accesing Variables
    Log To Console    ${Scalar}     #print as one string

    Log To Console    ${lists}     #print as a list

    Log To Console    ${dict}    #print as dictionary

    #environment Varaibles
    # Log To Console    ${env_var}
    # Log To Console    ${env_var1}
    