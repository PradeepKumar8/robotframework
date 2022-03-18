*** Settings ***
Library  SeleniumLibrary
Resource  ../resource/create.robot
Library  DataDriver  ../testdata/pmms.xlsx
Suite Setup  Open URL
Suite Teardown  Close browser
Test Template  Project

*** Test Cases ***
Project using   ${projecttitle}     ${description}     ${objective}     ${workduration}      ${estimationcost}      ${sanctioncost}

*** Keywords ***
Project
    #Set speed
    [Arguments]     ${projecttitle}     ${description}      ${objective}        ${workduration}     ${estimationcost}       ${sanctioncost}

    projecttitle    ${projecttitle}
    description     ${description}
    objective       ${objective}
    workduration    ${workduration}
    estimation      ${estimationcost}
    sanctioncost    ${sanctioncost}
    log to console  ${projecttitle}
    Project Save
