***Settings***
Library                 SeleniumLibrary
Library                 OperatingSystem
Library                 Telnet
Variables               ../SauceDemoTest/element.yaml

***Variables***
${Browser_Chrome}     chrome
${Login_URL}          https://www.saucedemo.com/
${DELAY}              1
${WAIT}               3
${ValidUsername}      standard_user
${ValidPassword}      secret_sauce
${firstName}          Rizky
${lastName}           Febrian
${postalCode}         12345678

***Keywords***
Open Browsers
    Open Browser          ${Login_URL}   ${Browser_Chrome}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

 Login Page Should Be Open
    Title Should Be    Swag Labs

Input Login Username
    [Arguments]       ${email}
    Input Text        ${txtUsername}     ${email}

Input Login Password
    [Arguments]       ${password}
    Input Text        ${txtPassword}     ${password}

Click login button
    Click Element     ${btnLogin}

Success Login
    Wait Until Page Contains Element    ${lblHomePage}        ${WAIT}

Add Backpack to Cart
    Click Element     ${btnAddCartSLBackpack}

Go to Shopping Cart page
    Click Element     ${btnCart}

Go to Checkout page
    Click Element     ${btnCheckout}

Fill information checkout : first name
    [Arguments]       ${firstName}
    Input Text        ${txtFirstName}     ${firstName}

Fill information checkout : last name
    [Arguments]       ${lastName}
    Input Text        ${txtLastName}     ${lastName}

Fill information checkout : postal code
    [Arguments]       ${postalCode}
    Input Text        ${txtPostalCode}     ${postalCode}

Continue to overview checkout page and finish
    Click Element     ${btnContinueCheckout}
    Click Element     ${btnFinishCheckout}

Successfully checkout backpack item
    Wait Until Element Is Visible    ${lblThankYouForOrder}    ${WAIT}

Close Browsers
    Close Browser
