*** Settings ***
Library  SeleniumLibrary
Resource  ../resource/resources.robot
Library  DataDriver  ../testdata/ddt2.xlsx

Suite Setup     open my browser
Suite Teardown  close my browser
Test Template  Invalid Login

*** Test Cases ***
LoginTestWithExcel using ${username} and ${password}

*** Keywords ***
Invalid Login
    Set Speed
    [Arguments]     ${username}    ${password}
    input username  ${username}
    input password  ${password}
    click login button

