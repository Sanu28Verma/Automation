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

Validate Samsung phone dispay after search in the search box
    [Tags]  Regression
    Search Samsung phone in the searchbox       ${Search}   ${Samsung_name}
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

Validate the 32 GB storage checkbox is getting clicked
    [Tags]  Regression
    Wait Until Element is located in the page   ${Wait_32 GB}
    Click on the checkbox of 32 GB storage

Validate Sorting of price from high to low
    [Tags]  Regression
    Wait Until Element is located in the page   ${Wait_Sort}
    Sorting the price of Smartphone from high to low

Validate Samsung Galaxy A03s (Black, 3GB RAM, 32GB Storage) phone is selected
    [Tags]  Feature
    Wait Until Element is located in the page   ${Wait_Samsung_Galaxy}
    Click on the Samsung Galaxy A03s (Black, 3GB RAM, 32GB Storage) phone
    Switch Window   New
    Sleep    5s


Validate the quantity is changed from 1 to 2
    [Tags]  Feature
    Wait Until Element is located in the page   ${Wait_Quan._dropdown}
    Click on the dropdown and change the quantity from 1 to 2
    Sleep    3s

Validate that phone is added in the cart
    [Tags]  Feature
    Wait Until Element is located in the page   ${Wait_Add to cart}
    Click on the Add to cart Element

Validate that the phone is proceeded to checkout
    [Tags]  Feature
    #Wait Until Element is located in the page   ${Proceed to checkout}
    Click on the Proceed to checkout


*** Keywords ***
Open the browser with Amazon url
    [Documentation]    Opens the browser and navigates to the Amazon website

    Create Webdriver    Edge
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
Search Samsung phone in the searchbox
    [Documentation]    Searches for Samsung phones in the search box
    [Arguments]     ${search_bar}  ${phone_name}
    Input Text      ${search_bar}  ${phone_name}
    Sleep    2s



