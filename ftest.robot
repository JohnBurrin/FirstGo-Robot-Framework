*** Settings ***
Library  Selenium2Library
Suite Setup  Open browser  ${APP_ROOT}  ${BROWSER}
Suite Teardown  Close all browsers

*** Variables ***
${APP_ROOT}  http://synergitech.co.uk
${BROWSER}  Firefox
*** Keywords ***
Log in to our application with
    [Arguments]  ${username}  ${password}
    input text  id=username  ${username}
    Input password  id=password  ${password}
    Click button  id=submit_button



*** Test Cases ***
Example test case
    Log in to our application with  test_user  S3cr3tPa55w0rd
    Page should contain  Welcome back, test_user