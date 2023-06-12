*** Settings ***
Documentation    Check market page
Library    SeleniumLibrary

*** Variables ***
${market_btn}    //*[text()="Markets"]//parent::button
${forex_btn}    //*[text()="Forex"]//parent::div

*** Test Cases ***
market
    Open Browser    https://deriv.com    Chrome
    Set Window Size    1280    1024
    Wait Until Page Contains Element    ${market_btn}    10
    Mouse Over    ${market_btn}
    Wait Until Page Contains Element    ${forex_btn}    10
    Click Element    ${forex_btn}
    Sleep    2
    Wait Until Page Contains Element    available-trades    10