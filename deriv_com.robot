*** Settings ***
Documentation    Find Check trading specs and trade now button
Library    SeleniumLibrary

*** Variables ***
${two_btn_div}    //*[text()="Check trading specs"]//parent::div

*** Test Cases ***
login
    Open Browser    https://deriv.com    Chrome
    Set Window Size    1280    1024
    Wait Until Page Contains Element    ${two_btn_div}    10

