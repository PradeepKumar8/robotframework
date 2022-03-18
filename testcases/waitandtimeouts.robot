*** Settings ***

Library  SeleniumLibrary

*** Variables ***

${Speed}=   get selenium speed
${timeout}=     get selenium timeout

*** Test Cases ***
Selenium speed

    log to console  ${Speed}
    open browser  http://203.92.59.154:4200/login   chrome
    maximize browser window
    set selenium speed  3   #time is applicable for every statements in the script
    #close browser
    log to console  ${Speed}
Selenium Timeout
    log to console  ${timeout}
    set selenium timeout    10
    wait until page contains    LOGINS
Implicit Wait
    ${implicitwait}=    get selenium implicit wait
    log to console  ${implicitwait}
    set selenium implicit wait  10
    ${implicitwait}=    get selenium implicit wait
    log to console  ${implicitwait}
    input text  id:emailid  ABC
    sleep  2
    close browser
