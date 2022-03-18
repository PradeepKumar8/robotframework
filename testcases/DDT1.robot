*** Settings ***
Library  SeleniumLibrary
Resource  ../resource/resources.robot
Suite Setup     open my browser
Suite Teardown  close my browser
Test Template  Invalid Login

*** Test Cases ***      username            password
TC1        pradeep@sunplussoftware.com     ${EMPTY}
TC2        pradeep@sunplussoftware.com     1234
TC3        prad@sunplussoftware.com        123456
TC4        prad@sunplussoftware.com        123
TC5        pradeep@sunplussoftware.com     123456


*** Keywords ***
Invalid Login
    Set Speed
    [Arguments]  ${username}    ${password}
    input username  ${username}
    input password  ${password}
    click login button



