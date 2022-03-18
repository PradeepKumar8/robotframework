*** Settings ***

Suite Setup     log to console  opening browser
Suite Teardown  log to console  close browser

Test Setup  log to console  login
Test Teardown  log to console   logout

*** Test Cases ***
TC1 prepaid recharge
    log to console  prepaid recharge
TC2 postpaid recharge
    log to console  postpaid recharge
TC3 wifi recharge
    log to console  wifi recahrge