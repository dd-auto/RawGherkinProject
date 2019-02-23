*** Settings ***
Documentation  A
Library  SeleniumLibrary

*** Variables ***
${home_land_package_url} =  https://www.rawsonhomes.com.au/house-and-land#/1
${home_design_single_storey_icon} =  xpath=//span[@data-use='#sprite-icon-house-single']

*** Keywords ***
Verify Home + Land Package page
    run keyword and continue on failure  location should be  ${home_land_package_url}
#    page should contain element  ${home_design_single_storey_icon}