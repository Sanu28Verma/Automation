*** Settings ***
Documentation    To Validate the login form
Library    SeleniumLibrary
Test Teardown   Close Browser

*** Test Cases ***
Validate successful Login
    Open the browser with VXM url
    Fill the Login form

*** Keywords ***
Open the browser with VXM url
    Create Webdriver     Chrome
    Go To    https://qa.verisae.com/
    Maximize Browser Window
    Sleep    2s

Fill the Login form
    Input Text    id:login    sanu3.verma
    Input Password    id:password    changeit123
    Click Button    id:login_button




