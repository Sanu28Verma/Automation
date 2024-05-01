*** Settings ***
Documentation  To Validate the Login form
Library  SeleniumLibrary
#Library    Collections

*** Test Cases ***
Validate Successful Login
    open the browser with the AWS url
     
*** Keywords ***
open the browser with the AWS url
    Create Webdriver     Chrome

