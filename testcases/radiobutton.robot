
*** Settings ***

Library  SeleniumLibrary

*** Variables ***
${url}  http://203.92.59.154:4200/login
${browser}  chrome

*** Test Cases ***
Radio and Check boxes
    open browser  ${url}   ${browser}
    maximize browser window
    set selenium speed  2
    Radio button and check boxes

*** Keywords ***
Radio button and check boxes
    input text  id:email    umeshg@yopmail.com
    input text  id:password     123456
    click element   xpath:/html/body/app-root/div[1]/main/div/app-login/div/main/div[2]/div/div/div/div/div/div[6]/div/button/b
    sleep  5
    click element  xpath:/html/body/app-root/div[1]/app-sidebar/app-side-navigation-bar/div[3]/a
    sleep  3
    click element  xpath://span[contains(text(),'Create User')]
    sleep   2
    #selecting radio buttons  name      value
    select radio button     gender      male
    #selecting check boxes  name
    select checkbox  Red Tea
    unselect checkbox  Red Tea

