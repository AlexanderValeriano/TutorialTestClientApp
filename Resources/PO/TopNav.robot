*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${TOP_NAV_TEAM_LINK}        xpath://a[contains(text(),'Team')]
*** Keywords ***
Select "Team" Page
    click link      ${TOP_NAV_TEAM_LINK}