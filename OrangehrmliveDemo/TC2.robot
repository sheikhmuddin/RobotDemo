*** Settings ***
Documentation    Suite description
Library      SeleniumLibrary

*** Test Cases ***
MyFirstTest
        Log   Hello WOrld.....

FirstSeleniumTest

    Open Browser         ${URL}       Chrome
    set browser implicit wait   5
    input text          id=txtUsername      @{CREDETIALS}[0]
    INPUT PASSWORD      id=txtPassword      &{LOGINDATA}[password]
    click button        id=btnLogin
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
#Provided precondition
   # Setup system under test