*** Settings ***
Documentation    Suite description
Library      SeleniumLibrary

Suite Setup     Log         I am in side Test Suite Steup
Suite Teardown  Log         I am in side Test Teardown Steup
Test Setup      Log         I am in side Test Test Steup
Default Tags       sanity
*** Test Cases ***
MyFirstTest
    [Tags]      smoke
        Log   Hello WOrld.....IT is First

FirstSecondTest
    Log   Hello WOrld.....IT is Secend
    set Tags    regression1
    Remove Tags     regression1

FirstThirdTest
    Log   Hello WOrld.....It is Third
*** Variables ***

*** Keywords ***

#Provided precondition
   # Setup system under test