*** Settings ***
Documentation    A resource file with reusable keywords and variables
Library         SeleniumLibrary
Resource        Amazon_locator_resource.robot
Resource        Amazon_locator3_resource.robot

*** Variables ***
${Wait_32 GB}           xpath://li[@id='p_n_feature_twenty-nine_browse-bin/81332992031']//i[@class='a-icon a-icon-checkbox']
${32 GB_checkbox}       xpath://li[@id='p_n_feature_twenty-nine_browse-bin/81332992031']//i[@class='a-icon a-icon-checkbox']
${Wait_Samsung_Galaxy}  xpath://span[contains(text(), "Samsung Galaxy A03s (Black, 3GB RAM, 32GB Storage) with No Cost EMI/Additional Exchange Offers")]
${Samsung_Galaxy}       xpath://span[contains(text(), "Samsung Galaxy A03s (Black, 3GB RAM, 32GB Storage) with No Cost EMI/Additional Exchange Offers")]
${Wait_Quan._dropdown}  xpath://div[@class='a-column a-span12 a-text-left']//select[@class='a-native-dropdown a-declarative']
${Quan._dropdown}       xpath://div[@class='a-column a-span12 a-text-left']//select[@class='a-native-dropdown a-declarative']
${Select_2}             xpath://select[@class='a-native-dropdown a-declarative']//option[@value='2']
${Radio_exchange}       class:a-icon a-accordion-radio a-icon-radio-active
${Wait_Add to cart}     xpath://div[@id='addToCart_feature_div']//input[@type='submit']
${Add to cart}          xpath://div[@id='addToCart_feature_div']//input[@type='submit']
${Proceed to checkout}      xpath://span[@id='attach-sidesheet-checkout-button']//input[@class='a-button-input']

*** Keywords ***

Click on the checkbox of 32 GB storage
    [Documentation]     Click on the checkbox of 32GB
    Click Element       ${32 GB_checkbox}
    sleep   3s

Click on the Samsung Galaxy A03s (Black, 3GB RAM, 32GB Storage) phone
    [Documentation]     Verifying the Samsung Galaxy A03 is selected
    Click Element       ${Samsung_Galaxy}
    #Sleep    6s

Click on the dropdown and change the quantity from 1 to 2
    [Documentation]     Verifying the quantity is changed from 1 to 2
    Select From List By Value   ${Quan._dropdown}   2
    Sleep    3s


Click on the Add to cart Element
    [Documentation]     Add to cart Element is getting clicked
    Click Button        ${Add to cart}
    Sleep    5s

Click on the Proceed to checkout
    [Documentation]     Phone is  proceeded to checkout
    Click Element       ${Proceed to checkout}
