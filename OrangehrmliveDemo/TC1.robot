*** Settings ***
Documentation    Suite description
Library      SeleniumLibrary

*** Test Cases ***
MyFirstTest
        Log   Hello WOrld.....

FirstSeleniumTest

    Open Browser        https://opensource-demo.orangehrmlive.com/        Chrome
    set browser implicit wait   5
    input text          id=txtUsername      Admin
    INPUT PASSWORD      id=txtPassword      admin123
    click button        id=btnLogin
    click element       id=welcome
    click element       link=Logout
    log                 Test Completed
    close browser

*** Keywords ***
#Provided precondition
   # Setup system under test