
*** Test Cases ***
TC1 Registration
    [Tags]  sanity
    log to console  registration
    log to console  signup
TC2 Login
    [Tags]  regression
    log to console  login
    log to console  dashboard

TC3 Reset passowrd
    [Tags]  regression
    log to console  reset password
    log to console  change password
TC4 Logout
    [Tags]  sanity
    log to console  logout
    log to console  account delete