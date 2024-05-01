*** Settings ***
Documentation    A resource file with reusable keywords and variables
Library         SeleniumLibrary

*** Variables ***
${username}     8249688863
${password}     Platinum@321
${cart_symbol load}     id:nav-cart-count-container
${Search}       id:twotabsearchtextbox
${Samsung_name}      Samsung
${Click_Smartphone}     xpath://li[@class='a-spacing-micro s-navigation-indent-1']//span[@class='a-size-base a-color-base']
${Click_checkbox}       xpath:/html/body/div[1]/div[1]/div[1]/div[2]/div/div[3]/span/div[1]/div/div/div[4]/ul/span/span[1]/li/span/a/div/label/i
${Min.value}            id:low-price
${Max.value}            id:high-price
${Go_button}            class:a-button-input
#${Wait_32 GB}           xpath://li[@id='p_n_feature_twenty-nine_browse-bin/81332992031']//i[@class='a-icon a-icon-checkbox']
#${32 GB_checkbox}       xpath://li[@id='p_n_feature_twenty-nine_browse-bin/81332992031']//i[@class='a-icon a-icon-checkbox']
${Wait_64 GB}           xpath://li[@id='p_n_feature_twenty-nine_browse-bin/81332998031']//i[@class='a-icon a-icon-checkbox']
${64 GB_checkbox}       xpath://li[@id='p_n_feature_twenty-nine_browse-bin/81332998031']//i[@class='a-icon a-icon-checkbox']
#${Wait_32 GB}           xpath://li[@id='p_n_feature_twenty-nine_browse-bin/81332992031']//i[@class='a-icon a-icon-checkbox']
#${32 GB_checkbox}       xpath://li[@id='p_n_feature_twenty-nine_browse-bin/81332992031']//i[@class='a-icon a-icon-checkbox']
${Wait_Sort}            class:a-dropdown-prompt
${Sort}                 class:a-dropdown-prompt
${High to low}          id:s-result-sort-select_2
${Fetch}                xpath://*[@class="a-size-base-plus a-color-base a-text-normal"]
#${Wait_Samsung_Galaxy}  xpath://span[contains(text(), "Samsung Galaxy A03s (Black, 3GB RAM, 32GB Storage) with No Cost EMI/Additional Exchange Offers")]
#${Samsung_Galaxy}       xpath://span[contains(text(), "Samsung Galaxy A03s (Black, 3GB RAM, 32GB Storage) with No Cost EMI/Additional Exchange Offers")]
#${Wait_Quan._dropdown}  xpath://div[@class='a-column a-span12 a-text-left']//select[@class='a-native-dropdown a-declarative']
#${Quan._dropdown}       xpath://div[@class='a-column a-span12 a-text-left']//select[@class='a-native-dropdown a-declarative']
#${Select_2}             xpath://select[@class='a-native-dropdown a-declarative']//option[@value='2']
#${Radio_exchange}       class:a-icon a-accordion-radio a-icon-radio-active
#${Wait_Add to cart}     xpath://div[@id='addToCart_feature_div']//input[@type='submit']
#${Add to cart}          xpath://div[@id='addToCart_feature_div']//input[@type='submit']
#${Proceed to checkout}  xpath://span[@id='attach-sidesheet-checkout-button']//input[@class='a-button-input']


*** Keywords ***
Fill the Login form
    [Documentation]    Fills the login form with provided credentials
    [Arguments]     ${username}     ${password}
    Input Text      name:email      ${username}
    Input Password  id:ap_password  ${password}
    Click Button    class:a-button-input
    Sleep    3s

Click on search button
    Click Button    id:nav-search-submit-button
    Sleep    2s
    
Click on the Smartphone link
    [Documentation]     Click on the Smartphone link
    Click Element    ${Click_Smartphone}
    Sleep    2s

Click on the checkbox of Samsung
    [Documentation]     Click on the checkbox
    Click Element   ${Click_checkbox}

Fill Min.and Max. price and click on Go button
    [Documentation]     Min.and Max. value should be filled and click on Go button
    [Arguments]     ${Min.value}    ${Max.value}
    Input Text      ${Min.value}    5000
    Input Text      ${Max.value}    20000
    Click Button    ${Go_button}
    Sleep    3s
    
Click on the checkbox of 64 GB storage
    [Documentation]     Click on the checkbox of 64GB
    Click Element    ${64 GB_checkbox}
    Sleep    3s
    
#Click on the checkbox of 32 GB storage
#    [Documentation]     Click on the checkbox of 32GB
#    Click Element    ${32 GB_checkbox}
#    sleep   3s


Sorting the price of Smartphone from high to low
    [Documentation]     Click on the sorting dropdoawn and select price from high to low
    Click Element       ${Sort}
    Sleep    2s
    Click Element       ${High to low}
    Sleep   10s

Verifying phone title in the page
    [Documentation]     Verifying the title of the phone in the page
    @{expected_list} =   Create List     (Refurbished) Samsung Galaxy M21 (Midnight Blue, 4GB RAM, 64GB Storage)    Samsung Galaxy A13 Black, 6GB RAM, 128GB Storage with No Cost EMI/Additional Exchange Offers, (SM-A135FZKJINS)  Samsung Galaxy A14 5G (Black, 4GB, 64GB Storage) | Triple Rear Camera (50 MP Main) | Upto 8 GB RAM with RAM Plus | Without Charger  Samsung Galaxy A14 5G (Dark Red, 4GB, 64GB Storage) | Triple Rear Camera (50 MP Main) | Upto 16 GB RAM with RAM Plus | Without Charger  Samsung Galaxy A14 5G (Light Green, 4GB, 64GB Storage) | Triple Rear Camera (50 MP Main) | Upto 8 GB RAM with RAM Plus | Without Charger    Samsung Galaxy A21s (Blue, 6GB RAM, 64GB Storage) with No Cost EMI/Additional Exchange Offers   (Refurbished) Samsung Galaxy A14 5G (Black, 4GB, 64GB Storage) | Triple Rear Camera (50 MP Main) | Upto 8 GB RAM with RAM Plus | Travel Adapter to be Purchased Separately  Samsung Galaxy A13 Peach, 4GB RAM, 64GB Storage with No Cost EMI/Additional Exchange Offers (SM-A135FZOGINS)    (Refurbished) Samsung Galaxy A14 5G (Dark Red, 4GB, 64GB Storage) | Triple Rear Camera (50 MP Main) | Upto 8 GB RAM with RAM Plus | Travel Adapter to be Purchased Separately   Samsung Galaxy A12 (Blue,4GB RAM, 64GB Storage) with No Cost EMI/Additional Exchange Offers     Samsung Galaxy A04s (Copper, 4GB RAM, 64GB Storage) Without Offer   (Refurbished) Samsung Galaxy A14 5G (Light Green, 4GB, 64GB Storage) | Triple Rear Camera (50 MP Main) | Upto 8 GB RAM with RAM Plus | Travel Adapter to be Purchased Separately    (Refurbished) Samsung Galaxy M32 (Black, 6GB RAM, 128GB Storage)    Samsung Galaxy M12 (White,4GB RAM, 64GB Storage) 6000 mAh with 8nm Processor | True 48 MP Quad Camera | 90Hz Refresh Rate   Samsung Galaxy A04s (Green, 4GB RAM, 64GB Storage)  Samsung Galaxy A04 (Green, 4GB, 64GB Storage) | 50 MP Rear Camera | Face Unlock | Upto 8GB RAM with RAM Plus | MediaTek Helio P35 | 5000 mAh Battery    Samsung Galaxy A04s (Green, 4GB RAM, 64GB Storage)  (Refurbished) Samsung Galaxy F41 (Fusion Black, 6GB RAM, 64GB Storage)  (Refurbished) Samsung Galaxy A13 Blue, 4GB RAM, 64GB Storage with No Cost EMI/Additional Exchange Offers, (SM-A135FLBGINS)  (Refurbished) Samsung Galaxy M13 5G (Midnight Blue, 4GB, 64GB Storage) | 5000mAh Battery | Upto 8GB RAM with RAM Plus   (Refurbished) Samsung Galaxy M13 (Aqua Green, 6GB, 128GB Storage) | 6000mAh Battery | Upto 12GB RAM with RAM Plus   (Refurbished) Samsung Galaxy A13 Black, 4GB RAM, 64GB Storage with No Cost EMI/Additional Exchange Offers, (SM-A135FZKGINS)     (Refurbished) Samsung Galaxy A04 (Copper, 4GB, 64GB Storage) | 50 MP Rear Camera | Face Unlock | Upto 8G    Samsung (Renewed) Galaxy F41 (Fusion Green, 6GB RAM, 64GB Storage)
    ${elements} =   Get WebElements     ${Fetch}
    Log    ${elements}
    FOR    ${element}    IN    @{elements}
        Log    ${element.text}

    END





#Click on the Samsung Galaxy A03s (Black, 3GB RAM, 32GB Storage) phone
#    [Documentation]     Verifying the Samsung Galaxy A03 is selected
#    Click Element       ${Samsung_Galaxy}
#    #Sleep    6s
#
#Click on the dropdown and change the quantity from 1 to 2
#    [Documentation]     Verifying the quantity is changed from 1 to 2
#    Select From List By Value   ${Quan._dropdown}   2
#    Sleep    3s
#
#
#Click on the Add to cart Element
#    [Documentation]     Add to cart Element is getting clicked
#    Click Button        ${Add to cart}
#    Sleep    5s
#
#Click on the Proceed to checkout
#    [Documentation]     Phone is  proceeded to checkout
#    Click Element       ${Proceed to checkout}





