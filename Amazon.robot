*** Settings ***
Documentation    To Validate the Login form
Library         SeleniumLibrary
Test Setup      Open the browser with Amazon url
Test Teardown   Close Browser
Resource        Amazon_locator_resource.robot
Resource    Amazon_resource.robot

*** Test Cases ***
Validate successful Login
    Fill the Login form     ${username}     ${password}

Validate cart symbol display in the home page
    Fill the Login form     ${username}     ${password}
    Wait Until Element is located in the page   ${cart_symbol load}

Validate Samsung phone dispay after search in the search box
    Fill the Login form     ${username}     ${password}
    Wait Until Element is located in the page   ${cart_symbol load}
    Search Samsung phone in the searchbox       ${Samsung_search}   ${Samsung_name}
    Click on search button

*** Keywords ***
Open the browser with Amazon url
    [Documentation]    Opens the browser and navigates to the Amazon website

    Create Webdriver    Edge
    Go To    https://www.amazon.in/-/hi/ap/signin?openid.pape.max_auth_age=3600&openid.return_to=https%3A%2F%2Fwww.amazon.in%2Fspr%2Freturns%2Fgift&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.assoc_handle=amzn_psr_desktop_in&openid.mode=checkid_setup&language=en_IN&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0
 Maximize Browser Window
    Sleep    3s

Wait Until Element is located in the page
    [Documentation]    Waits until the specified element is located in the page
    [Arguments]     ${element}
    Sleep    2s
    Wait Until Element Is Visible   ${element}
    Sleep    3s
Search Samsung phone in the searchbox
    [Documentation]    Searches for Samsung phones in the search box
    [Arguments]     ${Samsung}  ${phone_name}
    Input Text      ${Samsung}  ${phone_name}
    Sleep    3s



