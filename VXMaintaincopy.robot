*** Settings ***
Documentation    To Validate the login form
Library         SeleniumLibrary
#Test Setup      Open the browser with Amazon url
#Test Teardown   Close Browser
Resource        VXMaintainresource.robot

*** Test Cases ***
open my application page
    open my browser    ${url}    ${browser}

#verify that user login successfully in the application
   Enter username and password     ${username}    ${password}


    Sleep    2s

Fill the Login form
    Input Text    id:login    ${username}
    Input Password    id:password    ${password}
    Click Button    id:login_button




