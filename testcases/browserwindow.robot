*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Window handling
    open browser  http://203.92.59.154:4200/login   chrome
    maximize browser window
    set selenium speed  3


    open browser  https://www.google.com/   ch
    maximize browser window

    switch browser  1
    ${title1}=  get title
    log to console  ${title1}

    switch browser  2
    ${title2}=  get title
    log to console  ${title2}

    close all browsers