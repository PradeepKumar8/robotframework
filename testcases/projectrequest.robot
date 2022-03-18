*** Settings ***

Library  SeleniumLibrary
Library  AutoItLibrary
Library  SikuliLibrary

*** Variables ***
${url}      http://203.92.59.154:4200/login
${browser}      chrome

*** Test Cases ***
Dropdown and list
    [Tags]  sanity
    open browser  ${url}   ${browser}
    input text  id:email    pradeep@sunplussoftware.com
    input text  id:password     123456
TC2
    [Tags]  regression
    maximize browser window
    set selenium speed  2
    Dropdown and list

*** Keywords ***
Dropdown and list
    click element   xpath:/html/body/app-root/div[1]/main/div/app-login/div/main/div[2]/div/div/div/div/div/div[6]/div/button/b
    click element  id:mat-expansion-panel-header-8
    click element  xpath://*[@id="cdk-accordion-child-8"]/div/div[1]/a
    click element  xpath://span[contains(text(),'Create Project Request')]
    input text  id:reqTitle     ProjectRequest
    input text  id:reqDes   Description
    click element  id:protype
    click element  xpath://span[contains(text(),'Water Supply')]
    click element  id:reqdate
    set selenium implicit wait  10
    click element  xpath://*[@id="mat-datepicker-0"]/mat-calendar-header/div/div/button[1]/span[1]/div
    set selenium implicit wait  10
    click element  xpath://div[contains(text(),'2011')]
    set selenium implicit wait  10
    click element  xpath://div[contains(text(),'AUG')]
    set selenium implicit wait  10
#    click element  xpath://div[contains(text(),' 25 ')]
    click element  id:reqsrctype
    click element  xpath://span[contains(text(),' MLA ')]
    input text  id:reqsrcname   PMMS
    #dropdown select            id        value
    #select from list by label  prozone  Dharwad Zone
    set selenium implicit wait  10

    click element  id:prozone
    click element  xpath://span[contains(text(),' Bengaluru ')]
    click element  id:prodist
    click element  xpath://span[contains(text(),' Bangalore Rural ')]
    click element  id:protaluk
    click element  xpath://span[contains(text(),' Vijayapura ')]
    click element  id:proulb
    click element  xpath://span[contains(text(),' Vijayapura ')]
    set selenium implicit wait  10
    click element   id:mat-expansion-panel-header-18
    click element  id:mat-select-value-15
    click element  xpath://span[contains(text(),' Project Request ')]
    set selenium implicit wait  10
    click element   css:#cdk-accordion-child-18 > div > div > div > div.col-md-4 > div > div > div > button     C://Users/sunplus-08/Desktop/syntaxlocator.docx
    click element  xpath://*[@id="slider"]/div/div/div/div[2]/div[7]/div/button[1]

    #close all browsers