*** Settings ***
Library  SeleniumLibrary
Library  ../SaucelabsOsko.py

*** Variables ***

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}  remote_url=${REMOTE_URL}  desired_capabilities=${DESIRED_CAPABILITIES}
    #set the window using the desired capabilities
    #maximize browser window
    #set window size  1600  1400

End Web Test
    # this line updates the test case name, result, and tags in the saucelabs.com UI
    # after the test case has completed, but BEFORE closing the browser
    run keyword if  '${REMOTE_URL}' != ''
    ...  report sauce status    ${TEST_NAME}  ${TEST_STATUS}  ${TEST_TAGS}  ${REMOTE_URL}


    Close Browser
