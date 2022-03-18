*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://203.92.59.154:4200/login
${browser}  chrome

*** Test Cases ***
With Arguments
    ${pagetitle}=   launchbrowser   ${url}  ${browser}
    log to console  ${pagetitle}
    input text  id:email    pradeep@sunplussoftware.com
    input text  id:password     123456
    set selenium speed  3
    click element   xpath:/html/body/app-root/div[1]/main/div/app-login/div/main/div[2]/div/div/div/div/div/div[6]/div/button/b
    set selenium implicit wait  10
    click element   xpath://*[@id="sideNav"]/app-side-navigation-bar/div[2]/a
    click element   xpath://*[@id="slider"]/div/div/div/div[2]/div[4]/div/button[1]/b
    click element   xpath://*[@id="slider"]/div/div/div/div[2]/div[5]/div[1]/table/tbody/tr[3]/td[1]/a
    #scroll element into view    xpath://*[@id="contentToConvert_4"]/div[1]/div/div[2]  #to particular element
    set selenium implicit wait  10
    execute javascript  window.scrollTo(0,document.body.scrollHeight)   #end to page
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)  #starting of the page

*** Keywords ***
launchbrowser
    [Arguments]  ${appurl}  ${appbrowser}
    open browser  ${appurl}   ${appbrowser}
    maximize browser window
    ${title}    get title
    [Return]  ${title}