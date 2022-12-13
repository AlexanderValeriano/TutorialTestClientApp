*** Settings ***
Documentation       Talk about what this suite of tests does
Resource        ../Resources/FrontOfficeApp.robot
Resource        ../Resources/Common.robot
Test Setup          Begin Web Test
Test Teardown       End Web Test
#robot -d results .\Tests\FrontOffice.robot

*** Variables ***
${BROWSER}      chrome
${URL}          https://automationplayground.com/front-office/
*** Test Cases ***
Should be able to acces "Team" page
    [Documentation]     This is test 1
    [Tags]              test1
    log                 Executing test 1
    sleep               2s
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Team" Page
"Team" page should match requirements
    [Documentation]     This is test 2
    [Tags]              test2
    log                 Executing test 2
    sleep               2s
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Team" Page
    FrontOfficeApp.Validate "Team" Page