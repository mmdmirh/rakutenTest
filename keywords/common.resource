*** Settings ***
Library    SeleniumLibrary
Variables  ../variables/common.py

*** Keywords ***
Open App By ${browser} Browser
    Open Browser    ${base_url}    ${browser}

Verify Page Title Is ${page_title}
    Title Should Be        ${page_title}
