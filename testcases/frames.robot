*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}      http://203.92.59.154:4200/login
${browser}      chrome

*** Test Cases ***
Frames
    open browser  ${url}    ${browser}
    maximize browser window
    set selenium speed  3
    input text  id:email    umeshg@yopmail.com
    input text  id:password     123456
    click element   xpath:/html/body/app-root/div[1]/main/div/app-login/div/main/div[2]/div/div/div/div/div/div[6]/div/button/b
    click element  xpath:/html/body/app-root/app-header/ul[2]/li/a
    click element  xpath:/html/body/app-root/app-header/ul[2]/li/div[2]/a[2]
    select radio button  gender     female
    close all browsers
    #select frame  id/name/xpath
    #unselect frame  id/name/xpath
    select window  title=