*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Close browsers
    open browser  https://kuwsdb-demo.sunplussoftware.com/login     chrome
    maximize browser window
    set selenium speed  3
    close window

    open browser  http://203.92.59.154:4200/login   chrome
    maximize browser window

    close all browsers
