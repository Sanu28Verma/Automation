*** Settings ***
Documentation    A resource file with reusable keywords and variables
Library         SeleniumLibrary
Resource        Amazon_locator_resource.robot
Resource        Amazon_locator2_resource.robot
Resource        Amazon_locator3_resource.robot


*** Variables ***
${Laptop_name}              Laptop
${Wait_Processor_4}         xpath://li[@id='p_n_feature_thirty_browse-bin/50869298031']//i[@class='a-icon a-icon-checkbox']
${Processor_4}              xpath://li[@id='p_n_feature_thirty_browse-bin/50869298031']//i[@class='a-icon a-icon-checkbox']
${Wait_Laptop_click}        xpath://span[contains(text(), "(Refurbished) Dell Latitude Air Laptop E7280 Intel Core i5 - 6300u Processor 6th Gen, 4 GB Ram & 1TB SSD, 12.5 Inches (Ultra Slim & Feather Light 1KG) Notebook Computer")]
${Laptop_click}             xpath://span[contains(text(), "(Refurbished) Dell Latitude Air Laptop E7280 Intel Core i5 - 6300u Processor 6th Gen, 4 GB Ram & 1TB SSD, 12.5 Inches (Ultra Slim & Feather Light 1KG) Notebook Computer")]
${Traditional_Laptop_Click}     xpath:(//div[@id='departments']//a[@class='a-link-normal s-navigation-item']//span)[2]
${Dell_checkbox}            xpath://li[@id='p_89/Dell']//i[@class='a-icon a-icon-checkbox']
${Wait_Laptop_proceeded to checkout}    name:proceedToRetailCheckout
${Laptop_proceeded to checkout}     name:proceedToRetailCheckout

*** Keywords ***
Click on the Traditional Laptop
    [Documentation]     Clicking on the Traditional Laptop which is under Category
    Click Element   ${Traditional_Laptop_Click}

Click on Dell checkbox
    [Documentation]     Clicking on the Dell checkbox
    Click Element    ${Dell_checkbox}

Fill Max.and Min. price and click on Go button
    [Documentation]     Min.and Max. value should be filled and click on Go button
    #[Arguments]     ${Min.value}    ${Max.value}
    Input Text      ${Min.value}    25000
    Input Text      ${Max.value}    60000
    Click Button    ${Go_button}

Click on the processor count of 4
    [Documentation]     Processor count of 6 is selected
    Click Element       ${Processor_4}

Laptop is sorted from Low to High
    [Documentation]     Click on the sorting dropdoawn and select price from Low to High
    Click Element       ${Sort}
    #Sleep    2s
    Click Element       ${Low to High}
    Sleep    2s

Click on DELL Latitude Laptop
    [Documentation]     DELL Latitude Laptop is getting clicked
    Click Element      ${Laptop_click}

Click on Add to cart Element
    [Documentation]     Add to cart Element is getting clicked
    Click Button        ${Add to cart}
    Sleep    5s

Click on Proceed to checkout
    [Documentation]     Laptop is proceeded to checkout
    Click Element       ${Laptop_proceeded to checkout}