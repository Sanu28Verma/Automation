*** Settings ***
Documentation    To Validate the Login form
Library         SeleniumLibrary
Test Setup      Application login
Suite Setup     Open the browser with Amazon url
#Suite Teardown   Close Browser
Resource        Amazon_locator_resource.robot
Resource        Amazon_locator2_resource.robot


*** Test Cases ***
Validate successful Login
    [Tags]  Regression
    #Execute JavaScript  document.body.style.zoom = '67%'
    Fill the Login form     ${username}     ${password}

Validate cart symbol display in the home page
    [Tags]  Regression
    #Execute JavaScript  document.body.style.zoom = '67%'
    Wait Until Element is located in the page   ${cart_symbol load}
    Sleep    2s

Amazon_locator2_resource.robot.Validate that Best seller items are open in new tab
    [Tags]  Sanity
    Wait Until Element is located in the page   ${Wait_Best Seller}
    Open the best seller items in new tab


Validate that Amazon best seller text is available when naviagte to best seller tab
    [Tags]  Sanity
    Wait Until Page Contains Element   ${Wait_Amazon text}
    Amazon best seller text should be available when naviagte to best seller tab
    Sleep    3s

Validate that bestseller in products is fetched in to the list from the page
    [Tags]  Sanity
    Bestseller in products is fetched in to the list




*** Keywords ***
Open the browser with Amazon url
    [Documentation]    Opens the browser and navigates to the Amazon website

    Create Webdriver    Chrome
    Go To    https://www.amazon.in/-/hi/ap/signin?openid.pape.max_auth_age=3600&openid.return_to=https%3A%2F%2Fwww.amazon.in%2Fspr%2Freturns%2Fgift&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.assoc_handle=amzn_psr_desktop_in&openid.mode=checkid_setup&language=en_IN&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0
    Set Selenium Implicit Wait    10s
    Sleep    3s

Application login
    Log To Console      Application login successfully
    Maximize Browser Window

Wait Until Element is located in the page
    [Documentation]    Waits until the specified element is located in the page
    [Arguments]     ${element}
    Sleep    2s
    Wait Until Element Is Visible   ${element}
    Sleep    3s