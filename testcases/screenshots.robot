*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Screenshots
    open browser  http://203.92.59.154:4200/login       chrome
    maximize browser window
    set selenium speed  3
    input text  id:email    umeshg@yopmail.com
    input text  id:password     123456
    click element   xpath:/html/body/app-root/div[1]/main/div/app-login/div/main/div[2]/div/div/div/div/div/div[6]/div/button/b
    capture element screenshot  xpath:/html/body/app-root/app-header/a/img      C:/Users/sunplus-08/Desktop/gok.png
    capture page screenshot  C:/Users/sunplus-08/Desktop/pmms.png