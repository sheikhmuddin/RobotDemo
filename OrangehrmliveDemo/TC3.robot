*** Settings ***
Documentation    Suite description
Library      SeleniumLibrary

Suite Setup     Log         I am in side Test Suite Steup
Suite Teardown  Log         I am in side Test Teardown Steup
Test Setup      Log         I am in side Test Test Steup
Default Tags       sanity
*** Test Cases ***
MyFirstTest
        Log   Hello WOrld.....

FirstSeleniumTest

    Open Browser         ${URL}       Chrome
    set browser implicit wait   5
    LoginKW
    click element       id=welcome
    click element       link=Logout
    log                 Test Completed
    log                 This test was executed by %{username} on %{os}
    close browser

*** Variables ***
${URL}      https://opensource-demo.orangehrmlive.com/
@{CREDETIALS}   Admin       admin123
&{LOGINDATA}    username=Admin      password=admin123


*** Keywords ***
LoginKW
    input text          id=txtUsername      @{CREDETIALS}[0]
    INPUT PASSWORD      id=txtPassword      &{LOGINDATA}[password]
    click button        id=btnLogin
#Provided precondition
   # Setup system under test