*** Settings ***
Documentation    A resource file with reusable keywords and variables
Library         SeleniumLibrary

*** Variables ***
${url}    https://www.amazon.in/-/hi/ap/signin?openid.pape.max_auth_age=3600&openid.return_to=https%3A%2F%2Fwww.amazon.in%2Fspr%2Freturns%2Fgift&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.assoc_handle=amzn_psr_desktop_in&openid.mode=checkid_setup&language=en_IN&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0
${browser}     Edge

${username}     8249688863
${password}     Platinum@321


*** Keywords ***
open my browser
    Set Selenium Speed    2
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Enter username and password
    [Arguments]     ${username}    ${password}
    Input Text    name:email      ${username}
    Input Text    name:password     ${password}
#click on signup
    Click Button       class:a-button-input     #id:signInSubmit
    Sleep    2
    Element Should Be Visible    id:nav-logo-sprites

#Validate the page after login
#    Element Should Be Visible    xpath://*[@id="nav-logo-sprites"]