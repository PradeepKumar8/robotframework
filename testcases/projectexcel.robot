*** Settings ***
Library  SeleniumLibrary
Resource  ../resource/createproject.robot
Library  DataDriver  ../testdata/project.xlsx
Suite Setup  Open URL
Test Template  CreateProject

*** Test Cases ***
ProjectExcel using ${projecttype}       ${projectscheme}    ${financialyaer}    ${zone}      ${division}

*** Keywords ***
CreateProject
    Set speed
    [Arguments]     ${projecttype}      ${projectscheme}    ${financialyaer}    ${zone}     ${division}
 #   project type    ${projecttype}
    project scheme  ${projectscheme}
    financialyear   ${financialyaer}
    zone    ${zone}
    division    ${division}
    Project Save
