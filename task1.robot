*** Settings ***
Documentation    single test for login
Library    SeleniumLibrary

*** Variables ***
${real_btn}    //*[text()="Real"]//parent::div
${demo_btn}    //div[@id="demo"]
${dropdown}    //div[@class="dc-list"]
${demo_title}    //span[text()="demo"]


*** Test Cases ***
find real
    Open Browser    https://app.deriv.com    Chrome
    Set Window Size    1280    1024
    Wait Until Page Contains Element    dt_login_button    10
    Click Element    dt_login_button
    Wait Until Page Contains Element    txtEmail    10
    Input Text    txtEmail    bentley@besquare.com.my
    Input Password    txtPass    Bentley123
    Click Element    //button[@name="login"]
    Wait Until Page Contains Element    ${real_btn}    10
    Sleep    5
    Click Element    ${real_btn}
    Sleep    2
    Click Element    ${demo_btn}
    Sleep    5
    Wait Until Page Contains Element    ${demo_title}
    Sleep    5
