*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  http://203.92.59.154:4200/login
${browser}  chrome

*** Keywords ***
open my browser
    open browser  ${URL}    ${browser}
    maximize browser window

close my browser
    close all browsers
Set Speed
    set selenium speed  1
open login page
    go to  ${URL}

input username
    [Arguments]  ${username}
    input text  id:email    ${username}
input password
    [Arguments]  ${password}
    input text  id:password     ${password}

click login button
    click element  xpath:/html/body/app-root/div[1]/main/div/app-login/div/main/div[2]/div/div/div/div/div/div[6]/div/button

Error message should be visible
    page should contain  * Invalid Email or Password
Success message
    page should contain  Dashboard