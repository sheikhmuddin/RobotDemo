*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library    SeleniumLibrary





*** Variables ***
${LOGIN URL}      http://demo.nopcommerce.com/
${BROWSER}        Chrome

*** Test Cases ***
LoginRest

   Open Browser To Login Page
    Input Username    demo
    Input Password    mode
    Submit Credentials
    Welcome Page Should Be Open
    [Teardown]    Close Browser


*** Keywords ***

Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Title Should Be    Login Page

W