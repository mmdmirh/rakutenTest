*** Settings ***
Resource        ../keywords/common.resource
Suite Teardown  Close All Browsers


*** Test Cases ***
Check Home Page Title
    [Tags]    smoke
    Open App By Chrome Browser
    Verify Page Title Is ${home_page_title}