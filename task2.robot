*** Settings ***
Documentation       single test for login

Library             SeleniumLibrary


*** Variables ***
${real_btn}             //*[text()="Real"]//parent::div
${demo_btn}             //div[@id="demo"]
${dropdown}             //div[@class="dc-list"]
${demo_title}           //span[text()="demo"]
${open_trader_btn}      //a[@href='/']/button
${markets_btn}    //div[@class="cq-symbol-info"]
${vol10_btn}    //div[@class="sc-mcd__item__name" and contains(text(),"Volatility 10 (1s) Index")]
${rise_btn}    //div[@class="btn-purchase__text_wrapper"]/span[text()="Rise"]



*** Test Cases ***
Buy rise contract
    Open Browser    https://app.deriv.com    Chrome
    Set Window Size    1280    1024
    Wait Until Element Is Visible    dt_login_button    10
    Click Element    dt_login_button
    Wait Until Page Contains Element    txtEmail    10
    Input Text    txtEmail    bentley@besquare.com.my
    Input Password    txtPass    Bentley123
    Click Element    //button[@name="login"]
    Wait Until Element Is Visible    ${real_btn}    10
    Click Element    ${real_btn}
    Wait Until Element Is Visible    ${demo_btn}    10
    Click Element    ${demo_btn}
    Wait Until Page Contains Element    ${demo_title}
    Wait Until Element Is Visible    ${open_trader_btn}    10
    Click Element    ${open_trader_btn}
    Wait Until Element Is Visible    ${markets_btn}    18
    Click Element    ${markets_btn}
    Wait Until Element Is Visible    ${vol10_btn}    10
    Click Element    ${vol10_btn} 
    Wait Until Page Contains Element   //span[@class="dc-text" and @id="dt_range_slider_label" and text()="5 Ticks"]    10
    Wait Until Page Contains Element    //input[@value="10"]    10
    Wait Until Element Is Visible    ${rise_btn}    10
    Click Element    ${rise_btn}
    Sleep    8


    
