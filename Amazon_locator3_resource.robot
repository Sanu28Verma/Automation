*** Settings ***
Documentation    A resource file with reusable keywords and variables
Library         SeleniumLibrary
Resource        Amazon_locator_resource.robot
Resource        Amazon_locator2_resource.robot


*** Variables ***

${Wait_Best Seller}         xpath://*[@id="nav-logo-sprites"]
${Best Seller}              xpath://*[@id="nav-logo-sprites"]
${Wait_Amazon text}         id:zg_banner_text
${Best_product}             xpath://a[@class='a-link-normal']//div[@title]
${List}                     xpath://div[@id='zg_centerListWrapper']//div[contains(@class, 'zg_itemImmersion')]
${Watches}                  Watches
${Low to High}              id:s-result-sort-select_1

*** Keywords ***
Open the best seller items in new tab
    [Documentation]     Right click on best seller and open the items in new tab
    Execute JavaScript    window.open('https://www.amazon.in/gp/bestsellers/?ref_=nav_cs_bestsellers', '_blank');
    Switch Window    new
    Go To   ${Best Seller}
    Sleep    2s

Amazon best seller text should be available when naviagte to best seller tab
    [Documentation]     naviagte to best seller tab and verify that the Amazon best seller text is available
    ${text_found}=    Run Keyword And Return Status    Page Should Contain    Amazon Bestseller
    Run Keyword If    ${text_found}    Log    Amazon Bestseller text is available
    ...    ELSE    Log    Amazon Bestseller text is not available

Bestseller in products is fetched in to the list
    [Documentation]     Fetching the bestseller in products to the list from the page
    ${elements} =   Get WebElements     ${Best_product}
    Log    ${elements}
    FOR    ${element}    IN    @{elements}
        Log    ${element.text}

    END


#Click on the Traditional Laptop
#    [Documentation]     Clicking on the Traditional Laptop which is under Category
#    Click Element   ${Traditional_Laptop_Click}
#
#Click on Dell checkbox
#    [Documentation]     Clicking on the Dell checkbox
#    Click Element    ${Dell_checkbox}
#
#Fill Max.and Min. price and click on Go button
#    [Documentation]     Min.and Max. value should be filled and click on Go button
#    #[Arguments]     ${Min.value}    ${Max.value}
#    Input Text      ${Min.value}    25000
#    Input Text      ${Max.value}    60000
#    Click Button    ${Go_button}
#
#Click on the processor count of 4
#    [Documentation]     Processor count of 6 is selected
#    Click Element       ${Processor_4}
#
#Laptop is sorted from Low to High
#    [Documentation]     Click on the sorting dropdoawn and select price from Low to High
#    Click Element       ${Sort}
#    #Sleep    2s
#    Click Element       ${Low to High}
#    Sleep    2s
#
#Click on DELL Latitude Laptop
#    [Documentation]     DELL Latitude Laptop is getting clicked
#    Click Element      ${Laptop_click}
#
#Click on Add to cart Element
#    [Documentation]     Add to cart Element is getting clicked
#    Click Button        ${Add to cart}
#    Sleep    5s
#
#Click on Proceed to checkout
#    [Documentation]     Laptop is proceeded to checkout
#    Click Element       ${Laptop_proceeded to checkout}
#
#


#Click on Mens Watches
#    [Documentation]     Clicking on the Mens Watches which is under Category
#    Click Element       ${Mens_Watches}
#    Sleep    2s
#
#Click on Fastrack checkbox
#    [Documentation]     Clicking on the Dell checkbox
#    Click Element    ${Fastrack_checkbox}
#    Sleep    2s
#
#Fill the Min.and Max. price and click on Go button
#    [Documentation]     Min.and Max. value should be filled and click on Go button
#    [Arguments]     ${Min.value}    ${Max.value}
#    Input Text      ${Min.value}    2500
#    Input Text      ${Max.value}    15000
#    Click Button    ${Go_button}
#
#Sorting the price of Watches from Low to High
#    [Documentation]     Click on the sorting dropdoawn and select price from Low to High
#    Click Element       ${Sort}
#    Sleep    2s
#    Click Element       ${Low to High}
#    Sleep    2s
#
#Click on the Fastrack White Dial Analog Watch for Men -3283SL01
#    [Documentation]      Fastrack White Dial Analog Watch for Men -3283SL01 is getting clicked
#    Click Element       ${Analog Watch}
#    Sleep    2s
#
#Click on the wishlist for Fastrack White Dial Analog Watch for Men -3283SL01
#    [Documentation]     Fastrack White Dial Analog Watch for Men -3283SL01 is added in the Wishlist
#    Click Element       ${Wishlist}












