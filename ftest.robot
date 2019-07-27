*** Settings ***
Library  Selenium2Library
# Suite Setup  Open browser  ${APP_ROOT}  ${BROWSER}
Suite Teardown  Close all browsers

*** Variables ***
${APP_ROOT}  http://synergitech.co.uk
${BROWSER}  Firefox
*** Keywords ***
Go to the site home page
    Open browser  ${APP_ROOT}   ${BROWSER}

*** Test Cases ***
Open Home Page
    Go to the site home page
    Title should be  Bespoke business software development in Lincoln | Synergi Tech Ltd
