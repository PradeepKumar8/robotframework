*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://kuwsdb-demo.sunplussoftware.com/login
${browser}  chrome

*** Keywords ***
Open URL
    open browser  ${url}    ${browser}
    maximize browser window
    input text  id:email    aeekuwasipdwd@gmail.com
    input text  id:password     Dan@pmms@102
    click element   xpath:/html/body/app-root/div[1]/main/div/app-login/div/main/div[2]/div/div/div/div/div/div[6]/div/button/b
    set selenium implicit wait  10
    click element   id:mat-expansion-panel-header-8
    click element  xpath://*[@id="cdk-accordion-child-8"]/div/div[2]/a
    click element  xpath://span[contains(text(),'Create Project')]
#Close browser
   # close all browsers
Set speed
    set selenium speed  2

project type
   [Arguments]     ${projecttype}
    click element   id:protype  ${projecttype}

project scheme
    [Arguments]     ${projectscheme}
    click element   id:proscheme    ${projectscheme}
financialyear
    [Arguments]     ${financialyaer}
    click element   id:profinyear    ${financialyaer}
zone
    [Arguments]     ${zone}
    click element   id:prozone   ${zone}
division
    [Arguments]     ${division}
    click element   id:prodivision   ${division}
Project Save
    click element  xpath://*[@id="slider"]/div/div/div/div[2]/div[10]/div/button[1]