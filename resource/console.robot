*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Consoleprint out
    [Arguments]  ${abc}
    log to console  ${abc}

Consoleprint out2
    [Arguments]  ${test}
    log to console  ${test}
