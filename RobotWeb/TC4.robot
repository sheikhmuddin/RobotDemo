*** Settings ***
Library      SeleniumLibrary

*** Test Cases ***
MyFirstTest
        Log   Hello WOrld.....

FirstSeleniumTest

    Open Browser        https://www.google.com         Chrome

    Input Text           name=q                        Ducks
    press keys           name=q      ENTER
    #ESCAPE  (it is escape command)
    Log  ("Display on page: "+ Browser)
     Click Link  popup_link  # opens new window
    Select Window   popupName
    Title Should Be Popup Title
    Select Window           # Chooses the main window again

*** Keywords ***
