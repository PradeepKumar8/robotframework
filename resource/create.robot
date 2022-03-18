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
    click element  id:prozone
    click element  xpath://span[contains(text(),'Dharwad Zone')]
Close browser
   close all browsers
#Set speed
  #  set selenium speed  2

projecttitle
   [Arguments]     ${projecttitle}
   input text  id:protitle  ${projecttitle}
description
    [Arguments]     ${description}
    input text  id:prodesc  ${description}

objective
    [Arguments]     ${objective}
    input text  id:proobject    ${objective}

workduration
    [Arguments]     ${workduration}
    input text  id:proworkdur   ${workduration}

estimation
    [Arguments]     ${estimationcost}
    input text  id:procost  ${estimationcost}

sanctioncost
    [Arguments]     ${sanctioncost}
    input text  id:prosancost   ${sanctioncost}

Project Save
    click element  xpath://*[@id="slider"]/div/div/div/div[2]/div[10]/div/button[1]
