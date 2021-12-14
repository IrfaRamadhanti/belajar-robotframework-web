BELAJAR ROBOTFRAMEWORK WEB


Hi Perkenalkan Namaku Irfa Ramadhanti, panggil aja iir.

Kali ini saya akan memberikan tutorial Belajar Robotframework Web 

Linkedin : https://www.linkedin.com/in/irfa-ramadhanti/

Tools :

Python 3
Visual Studio Code
Plugin "Robotframework" dan "Pylance"
Web demo https://www.saucedemo.com/
Chromedriver untuk OS masing2


Berikut adalah langkah2 nya :

1. Buat Project pada IDE, disini saya menggunakan Visual Studio Code dan buatlah folder dengan judul belajar-framework-web 
![image](https://user-images.githubusercontent.com/73830257/146033460-f571f37b-e849-4a2e-884d-2718f1ad0cb5.png)

2. Install Plugin ini "Robotframework" dan "Pylance"
![image](https://user-images.githubusercontent.com/73830257/146034041-45ce0a85-4b0c-452c-b14e-57003da18582.png)

3. Buat file TestLogin.robot lalu maskan teks seperti berikut
![image](https://user-images.githubusercontent.com/73830257/146034595-8a5621fd-0688-429e-8860-469f6b0f6ec2.png)

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


