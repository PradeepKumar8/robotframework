*** Settings ***
Library  SeleniumLibrary
Library  AutoItLibrary

*** Variables ***
${browser}  chrome
${url}  http://203.92.59.154:4200/login

*** Test Cases ***
Login
    #create webdriver  chrome    executable_path="C:\Users\sunplus-08\AppData\Local\Programs\Python\Python37-32\Scripts,chromedriver.exe
    #open browser  http://203.92.59.154:4200/login   chrome
    open browser  ${url}   ${browser}
    LoginToApplication


*** Keywords ***
LoginToApplication
    maximize browser window
    input text  id:email    umeshg@yopmail.com
    input text  id:password     123456
    click element   xpath:/html/body/app-root/div[1]/main/div/app-login/div/main/div[2]/div/div/div/div/div/div[6]/div/button/b
