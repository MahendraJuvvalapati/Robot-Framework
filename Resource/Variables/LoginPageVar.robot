*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}          https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${USERNAME_FIELD}    name=username
${PASSWORD_FIELD}    name=password
${LOGIN_BUTTON}       xpath=//button[@type='submit']
${BROWSER}    chrome
${OPTIONS}    add_argument:--headless; add_argument:--no-sandbox; add_argument:--disable-dev-shm-usage; add_argument:--disable-gpu; add_argument:--remote-debugging-port=9222; add_argument:--user-data-dir=/tmp/chrome-profile
