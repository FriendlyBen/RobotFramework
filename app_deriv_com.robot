*** Settings ***
Documentation    single test for login
Library    SeleniumLibrary

*** Variables ***
${demo_btn}    //*[text()="Demo"]//parent::div
${dropdown}    //div[@class="dc-list"]
${open_trader_btn}    //a[@href='/']/button






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
    Wait Until Page Contains Element    ${demo_btn}    10
    Sleep    5
    Click Element    ${demo_btn}
    Wait Until Page Contains Element    ${dropdown}
    Click Element    ${open_trader_btn}
    Wait Until Page Contains Element    //div[@data-testid="dt_contract_widget"]
    Sleep    5
