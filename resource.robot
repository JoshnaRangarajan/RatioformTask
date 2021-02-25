*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        Chrome
${DELAY}          0
${HOME PAGE}    https://www.ratioform.at/


*** Keywords ***
Open Browser To Home Page
    Open Browser    ${HOME PAGE}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Home Page Should Be Open

Home Page Should Be Open
    Title Should Be    Verpackung & Verpackungsmaterial

Input Search
    [Arguments]    ${searchText}
    Input Text    searchQuery    ${searchText}

Search Dropdown Should Be Visible
    Wait Until Element Is Visible       class:suggest-search__container


Click Search
    Click Element   class:search-form__submit


Search Results Should Be Available
    Wait Until Element Is Visible       search-result-count
    
Goto Product Details For
    [Arguments]    ${productName}
    Click Element   xpath://a[./p/span = ${productName}]

Product Details Page Should Be Open For
    [Arguments]    ${productName}
    Title Should Be     ${productName}