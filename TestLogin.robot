*** Settings ***
Library              SeleniumLibrary
Suite Setup          Open Browser    ${WebURL}        ${BROWSERS}
Suite Teardown       Close Browser
Library              DataDriver     credentials.csv       sheet_name=Sheet1
Test Template        I want to login with invalid credentials

*** Variables ***
${BROWSERS}          Chrome
${WebURL}            https://www.saucedemo.com/

*** Keywords ***
I want to login with invalid credentials
    [Arguments]            ${username}         ${password}
    Input Text             id=user-name        ${username}
    Input Text             id=password         ${password}
    Click Element          id=login-button
    Capture Page Screenshot
    Page Should Contain    Epic sadface: Username and password do not match any user in this service

*** Test Cases ***
# Login with invalid credentials userA                ${username}      ${password}
# Login with invalid credentials userB                ${username}      ${password}  
# Login with invalid credentials userC                ${username}      ${password} 
# Login with invalid credentials standar_user         standard_user     secret_sauce
Login with invalid credentials Should failed with CSV failed       ${username}       ${password}