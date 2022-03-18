*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Alerts
    open browser  http://testautomationpractice.blogspot.com/      chrome
    maximize browser window
    click element  xpath://*[@id="HTML9"]/div[1]/button
    sleep  3
    #handle alert    accept
    handle alert    dismiss
    #handle alert  leave
    alert should be present  Press a button!