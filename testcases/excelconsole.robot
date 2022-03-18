*** Settings ***
Library  SeleniumLibrary
Resource  ../resource/console.robot
Library  DataDriver  ../testdata/Book3.xlsx     sheet_name=Sheet2
Test Template  cosnole

*** Test Cases ***
dataconsole ${abc}    ${test}

*** Keywords ***
cosnole
    [Arguments]     ${abc}  ${test}
    Consoleprint out    ${abc}
    Consoleprint out2   ${test}

