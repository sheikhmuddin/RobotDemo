*** Settings ***
Library    SeleniumLibrary
#Library    Selenium2Library

*** Test Cases ***
MyFirstTest
        Log   Hello WOrld.....

SeconfTest

     Open Browser        https://www.google.com         Chrome
*** Keywords ***
