*** Settings ***
Documentation    A resource file with reusable keywords and variables
Library         SeleniumLibrary
Resource        Amazon_locator_resource.robot
Resource        Amazon_locator3_resource.robot


*** Variables ***
${Watches}                  Watches
${Mens_Watches}              xpath:(//div[@id='departments']//a)[3]
${Wait_Fastrack_ch.}        xpath://li[@id='p_123/230542']//div[@class='a-checkbox a-checkbox-fancy s-navigation-checkbox aok-float-left']
${Fastrack_checkbox}        xpath://li[@id='p_123/230542']//div[@class='a-checkbox a-checkbox-fancy s-navigation-checkbox aok-float-left']
${Wait_Analog Watch}        xpath:(//h2[@class='a-size-mini a-spacing-none a-color-base s-line-clamp-2']//span)[8]
${Analog Watch}             xpath:(//h2[@class='a-size-mini a-spacing-none a-color-base s-line-clamp-2']//span)[8]
${Wait_Wishlist}            id:add-to-wishlist-button-submit
${Wishlist}                 id:add-to-wishlist-button-submit

*** Keywords ***

Click on Mens Watches
    [Documentation]     Clicking on the Mens Watches which is under Category
    Click Element       ${Mens_Watches}
    Sleep    2s

Click on Fastrack checkbox
    [Documentation]     Clicking on the Dell checkbox
    Click Element    ${Fastrack_checkbox}
    Sleep    2s

Fill the Min.and Max. price and click on Go button
    [Documentation]     Min.and Max. value should be filled and click on Go button
    [Arguments]     ${Min.value}    ${Max.value}
    Input Text      ${Min.value}    2500
    Input Text      ${Max.value}    15000
    Click Button    ${Go_button}

Sorting the price of Watches from Low to High
    [Documentation]     Click on the sorting dropdoawn and select price from Low to High
    Click Element       ${Sort}
    Sleep    2s
    Click Element       ${Low to High}
    Sleep    2s

Click on the Fastrack White Dial Analog Watch for Men -3283SL01
    [Documentation]      Fastrack White Dial Analog Watch for Men -3283SL01 is getting clicked
    Click Element       ${Analog Watch}
    Sleep    2s

Click on the wishlist for Fastrack White Dial Analog Watch for Men -3283SL01
    [Documentation]     Fastrack White Dial Analog Watch for Men -3283SL01 is added in the Wishlist
    Click Element       ${Wishlist}
