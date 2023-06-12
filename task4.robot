*** Settings ***
Documentation       Buy lower contract

Library             SeleniumLibrary


*** Variables ***
${real_btn}                 //*[text()="Real"]//parent::div
${demo_btn}                 //div[@id="demo"]
${demo_title}               //span[text()="demo"]
${open_trader_btn}          //a[@href='/']/button
${contract_type_btn}        //div[@class="contract-type-widget__display"]
${high_low_btn}             //div[@id="dt_contract_high_low_item"]
${markets_btn}              //div[@class="cq-symbol-info"]
${forex_btn}                //div[@class="sc-mcd__filter__item sc-mcd__filter__item--selected"]
${aud/usd_btn}              //div[@class="sc-mcd__item sc-mcd__item--frxAUDUSD "]
${duration_input}           //input[@class="dc-input__field"]
${payout_btn}               //button[@id="dc_payout_toggle_item"]
${payout_input}             //input[@class="dc-input-wrapper__input input--has-inline-prefix input trade-container__input"]
${lower_btn}                //span[@class="dc-text" and contains(text(), "Lower")]
${barrier_input}            //input[@class="input trade-container__input trade-container__barriers-input trade-container__barriers-single-input"]
${error_barrier_input}      //input[@class="input input--error trade-container__input trade-container__barriers-input trade-container__barriers-single-input"]
${error}                    //span[@class="dc-text" and contains(text(),"Contracts more than 24 hours in duration would need an absolute barrier.")]


*** Test Cases ***
Buy lower contract
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
    Wait Until Element Is Visible    ${markets_btn}    25
    Click Element    ${markets_btn}
    Wait Until Element Is Visible    ${forex_btn}    18
    Click Element    ${forex_btn}
    Wait Until Element Is Visible    ${aud/usd_btn}    15
    Click Element    ${aud/usd_btn}
    Wait Until Element Is Visible    ${contract_type_btn}    18
    Click Element    ${contract_type_btn}
    Wait Until Element Is Visible    ${high_low_btn}    10
    Click Element    ${high_low_btn}
    Wait Until Element Is Visible    ${duration_input}    10
    Clear Element Text    ${duration_input}
    Input Text    ${duration_input}    2
    Wait Until Element Is Visible    ${barrier_input}    10
    Press Keys    ${barrier_input}    CTRL+a+BACKSPACE
    Input Text    ${error_barrier_input}    -0.23
    Wait Until Element Is Visible    ${payout_btn}    10
    Click Element    ${payout_btn}
    Wait Until Element Is Visible    ${error}
    Sleep    2
