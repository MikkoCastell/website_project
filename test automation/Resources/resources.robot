*** Settings ***
Library    QWeb

*** Variables ***
${URL}    http://localhost:3000/
${BROWSER}    chrome

*** Keywords ***
Opening my browser
    Open Browser    ${URL}    ${BROWSER}
    Maximize Window

Closing my browsers
    Close All Browsers

Verify navigation texts
    Verify Text    Home
    Verify Text    Services
    Verify Text    Products
    Verify Text    SIGN UP

Verify navigation links
    Click Text    Services
    Verify Url    http://localhost:3000/services

    Click Text    Products
    Verify Url    http://localhost:3000/products

    Click Text    SIGN UP
    Verify Url    http://localhost:3000/sign-up

    Click Text    Home
    Verify Url    http://localhost:3000/