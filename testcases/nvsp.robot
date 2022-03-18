*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#${url}  https://demo.guru99.com/test/upload/
${url}  https://product.pollmonk.co/users/sign_in
${browser}  chrome

*** Test Cases ***
NVSP upload
    open browser  ${url}    ${browser}
    maximize browser window
    set selenium speed  3
    click element  xpath://button[contains(text(),'Advanced')]
    click element  id:proceed-link
    input text  user_email  pradeep@sunplussoftware.com
    input text  user_password   12345678
    click element  css:#new_user > div:nth-child(8) > div > button
    click element  xpath://a[contains(text(),'Settings')]
    set selenium implicit wait  10
    click element  xpath:/html/body/app-root/app-setting/div[1]/div/div[2]/div[2]/div[2]/div/div/div[1]/ul/li[2]
    click element   xpath://p[contains(text(),'List A')]
    set selenium implicit wait  10
    choose file     xpath://*[@id="mat-tab-content-2-0"]/div/div/div[2]/button  C://Users/sunplus-08/Desktop/pollmonk.xlsx
    #choose file  id:uploadfile_0    C://Users/sunplus-08/Desktop/syntaxlocator.docx
    #select checkbox  terms
    #click element  id:submitbutton
    #click element   C://Users/sunplus-08/Downloads/Upload-Email-List-Example-File (2).xlsx