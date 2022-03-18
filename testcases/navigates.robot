*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Navigates
    open browser  https://www.google.com/   chrome
    maximize browser window
    set selenium speed  2

    ${loc}=     get location
    log to console  ${loc}

    go to  http://203.92.59.154:4200/login
    ${loc1}=    get location
    log to console  ${loc1}

    go back
    ${loc}=     get location
    log to console  ${loc}