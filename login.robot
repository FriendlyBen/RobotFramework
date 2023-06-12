*** Settings ***
Documentation    single test for login
Library    SeleniumLibrary

*** Variables ***
${reset_btn}    //*[text()="Reset Balance"]//parent::button

*** Test Cases ***
login
    Open Browser    https://app.deriv.com    Chrome
    Set Window Size    1280    1024
    Wait Until Page Contains Element    dt_login_button    10
    Click Element    dt_login_button
    Wait Until Page Contains Element    txtEmail    10
    Input Text    txtEmail    bentley@besquare.com.my
    Input Password    txtPass    Bentley123
    Click Element    //button[@name="login"]
    Wait Until Page Contains Element    ${reset_btn}    10

