*** Settings ***
Resource          resource.robot

*** Test Cases ***

Search for Product
    Open Browser To Home Page
    Input Search    Wellpapp sperrgut
    Click Search
    Search Results Should Be Available
    Goto Product Details For    "Wellpapp-Faltkartons, sperrgut-optimiert"
    Product Details Page Should Be Open For   Wellpapp-Faltkartons, sperrgut-optimiert
    [Teardown]    Close Browser