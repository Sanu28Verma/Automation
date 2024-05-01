*** Settings ***
Documentation    To Validate the Login form
Library         SeleniumLibrary
Test Setup      Application login
Suite Setup     Open the browser with Amazon url
#Suite Teardown   Close Browser
Resource        Amazon_locator_resource.robot
Resource        Amazon_locator2_resource.robot
Resource        Amazon_locator5_resource.robot



*** Test Cases ***
Validate successful Login
    [Tags]  Feature
   Fill the Login form     ${username}     ${password}

Validate cart symbol display in the home page
    [Tags]  Feature
   Wait Until Element is located in the page   ${cart_symbol load}

Validate that Watches is searched in search box
    [Tags]  Sanity
    Search Watches in the searchbox and click on search button   ${Search}    ${Watches}

Validate that Mens Watches is clicked which is under category
    [Tags]  Sanity
    Click on Mens Watches

Validate that Fastrack checkbox is clicked
    [Tags]  Sanity
    Execute JavaScript  window.scrollBy(0, 500)
    Wait Until Element is located in the page       ${Wait_Fastrack_ch.}
    Click on Fastrack checkbox

Validate that Min. and Max.value is filled in the price section
    [Tags]  Sanity
    Fill the Min.and Max. price and click on Go button  ${Min.value}    ${Max.value}

Validate Sorting of price from high to low
    [Tags]  Sanity
    Sorting the price of Watches from Low to High

Validate that Fastrack White Dial Analog Watch for Men -3283SL01 is selected
    [Tags]  Sanity
    Wait Until Element Is Visible       ${Wait_Analog Watch}
    Click on the Fastrack White Dial Analog Watch for Men -3283SL01
    Switch Window   New

Validate that Fastrack White Dial Analog Watch for Men -3283SL01 is added to wishlist
    [Tags]  Sanity
    #Execute JavaScript  document.body.style.zoom = '67%'
    #Execute JavaScript  window.scrollBy(0, 600)
    Wait Until Element Is Visible   ${Wait_Wishlist}    timeout=10s
    Click on the wishlist for Fastrack White Dial Analog Watch for Men -3283SL01


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

Search Watches in the searchbox and click on search button
    [Arguments]     ${search_bar}  ${Watches}
    Input Text      ${search_bar}  ${Watches}
    Sleep    2s
    Click Element   id:nav-search-submit-button
