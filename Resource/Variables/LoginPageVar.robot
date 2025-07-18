*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}          https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${USERNAME_FIELD}    name=username
${PASSWORD_FIELD}    name=password
${LOGIN_BUTTON}       xpath=//button[@type='submit']