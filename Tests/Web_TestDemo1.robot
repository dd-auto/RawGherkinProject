*** Settings ***
Documentation  These will test the Home design page
Resource  ../Resources/Common.robot
Resource  ../Resources/WebApp.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

#  robot -d results -i CurrentTC tests/web_testdemo1.robot
#  robot -d results -v DESIRED_CAPABILITIES:"name:Demo Only,platform:windows 10,browserName:chrome,version:59.0,screenResolution:1600x1200" -i CurrentTC tests/web_testdemo1.robot
#  robot -d results -v DESIRED_CAPABILITIES:"name:Demo Only,platform:macOS 10.13,browserName:safari,version:11.1,screenResolution:1600x1200" -i CurrentTC tests/web_testdemo1.robot

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  https://www.rawsonhomes.com.au/
${REMOTE_URL} =  http://dd.autotraining:0c667b1c-f94b-457b-baf9-455074ccd8bd@ondemand.saucelabs.com:80/wd/hub
${DESIRED_CAPABILITIES} =  name:Demo Only,platform:macOS 10.14,browserName:chrome,version:57.0,screenResolution:1600x1200
${SEARCH_TERM} =  echo plus

*** Test Cases ***
Scenario: As a user, I can access the Home Design page
    [Tags]  CurrentTC
    Given a user can access the Homepage
    When user clicks top navigation menu for Home Design
    Then user is redirected to the Home Design page

Scenario: As a user, I can access the Home + Land Packages page
    [Tags]
    Given a user can access the Homepage
    When User clicks top navigation menu for Home + Land package
    Then User is redirected to the Home + Land Package page
