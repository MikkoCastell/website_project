*** Settings ***
Library    QWeb
Resource    ../Resources/resources.robot 
Test Setup    Opening my browser
Test Teardown    Closing my browsers

*** Test Cases ***
Title check
    Verify Title    React App

Check navigation
    Verify navigation texts
    Verify navigation links