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
   Fill the Login form     ${username}     ${password}

Validate cart symbol display in the home page
    [Tags]  Regression
   Wait Until Element is located in the page   ${cart_symbol load}

Validate that laptop is searched in search box
    [Tags]  Regression
    Search Laptop in the searchbox and click on search button   ${Search}    ${Laptop_name}

Validate that Traditional laptop is clicked which is under category
    [Tags]  Feature
    Click on the Traditional Laptop

Validate that Dell checkbox is clicked
    [Tags]  Feature
    Click on Dell checkbox

Validate that Min. and Max.value is filled in the price section
    [Tags]  Feature
    Fill Max.and Min. price and click on Go button
    Sleep    5s

Validate that processor count of 4 is selected
    [Tags]  Feature
    Wait Until Element is located in the page   ${Wait_Processor_4}
    Click on the processor count of 4

Validate that Laptop is sorted from Low to High
    [Tags]  Feature
    Laptop is sorted from Low to High
    Sleep    5s

Validate that DELL Latitude Laptop / Intel Core i7-9850H / 32GB RAM / 512GB SSD is clicked
    [Tags]  Feature
    Wait Until Element is located in the page   ${Wait_Laptop_click}
    Click on DELL Latitude Laptop
    Switch Window   New

Validate that Laptop is added in the cart
    [Tags]  Feature
    Wait Until Element is located in the page   ${Wait_Add to cart}
    Click on Add to cart Element
    Sleep   2s

Validate that the phone is proceeded to checkout
    [Tags]  Feature
    Wait Until Element is located in the page   ${Wait_Laptop_proceeded to checkout}
    Click on Proceed to checkout


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

Search Laptop in the searchbox and click on search button
    [Documentation]    Searched for Laptop in the search box
    [Arguments]     ${search_bar}  ${Laptop_name}
    Input Text      ${search_bar}  ${Laptop_name}
    Sleep    2s
    Click Button    id:nav-search-submit-button



