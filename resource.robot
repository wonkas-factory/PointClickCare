# This would serve as a global reference for all tests
# ex. All library and resources and application control keywords only
*** Settings ***
Library     Selenium2Library    ${DEFAULT_TIMEOUT}    run_on_failure=Log Source
Library     Collections
Library     String
Library     Process
Library     DateTime
Library     FakerLibrary
Library     DebugLibrary
Library     OperatingSystem

Resource    config/test_data.robot
Resource    pages/_PAGE_IMPORTS.robot
Resource    logic/_LOGIC_IMPORTS.robot

*** Variables ***
${WORKING_PATH}             ${EXECDIR}
${DEFAULT_TIMEOUT}          15
${FAST_TIMEOUT}             1

*** Keywords ***
Open and Set Browser Size
    [Arguments]    ${user}
    Set Selenium Speed    ${FAST_TIMEOUT}
    Open Browser        url=${user.URL}
    ...                 browser=${user.BROWSER}
    ...                 alias=${user.KEY}
    Set Window Size     ${user.WIDTH}    ${user.HEIGHT}

