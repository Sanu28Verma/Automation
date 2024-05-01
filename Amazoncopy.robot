*** Settings ***
Documentation    To Validate the Login form
Library         SeleniumLibrary
Test Setup      Application login
Suite Setup     Open the browser with Amazon url
#Suite Teardown   Close Browser
Resource        Amazon_locator_resource.robot

*** Test Cases ***
Validate successful Login
    [Tags]  Regression
   Fill the Login form     ${username}     ${password}

Validate cart symbol display in the home page
    [Tags]  Regression
   Wait Until Element is located in the page   ${cart_symbol load}

Validate Samsung phone dispay after search in the search box
    [Tags]  Regression
    Search Samsung phone in the searchbox   ${Search}   ${Samsung_name}
    Click on search button

Validate Smartphone link is getting clicked
    [Tags]  Regression
    Click on the Smartphone link

Validate checkbox of Samsung is getting clicked
    [Tags]  Regression
    Click on the checkbox of Samsung

Validate that Min. and Max.value is filled in the price section
    [Tags]  Regression
    Fill Min.and Max. price and click on Go button  ${Min.value}    ${Max.value}

Validate the GB storage checkbox is getting clicked
    [Tags]  Regression
    Wait Until Element is located in the page  ${Wait_64 GB}
    Click on the checkbox of 64 GB storage

Validate Sorting of price from high to low
    [Tags]  Regression
    Sorting the price of Smartphone from high to low

Validate title of the phone
    [Tags]  Feature
    Verifying phone title in the page





*** Keywords ***
Open the browser with Amazon url
    [Documentation]    Opens the browser and navigates to the Amazon website

    Create Webdriver    Chrome
    Go To    https://www.amazon.in/-/hi/ap/signin?openid.pape.max_auth_age=3600&openid.return_to=https%3A%2F%2Fwww.amazon.in%2Fspr%2Freturns%2Fgift&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.assoc_handle=amzn_psr_desktop_in&openid.mode=checkid_setup&language=en_IN&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0
    Set Selenium Implicit Wait    15s
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
Search Samsung phone in the searchbox
    [Documentation]    Searches for Samsung phones in the search box
    [Arguments]     ${Search}  ${phone_name}
    Input Text      ${Search}  ${phone_name}
    Sleep    2s



