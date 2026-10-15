*** Settings ***

Documentation           New test suite
# You can change imported library to "QWeb" if testing generic web application, not Salesforce.
Library                 QForce
Suite Setup             Open Browser    about:blank    chrome
Suite Teardown          Close All Browsers
Resource        ../Resource/Resource.robot
*** Variables ***




*** Test Cases ***
External Client App Login Example - Raw
   [Tags]    ConnectedApp    ExternalClientApp    JWT    JWTtoken
   [Documentation]    A short example of how to use the JWT/External Client App to log into an environment.
   JwtAuthenticate           ${client_id}                     ${persona_username}    ${server_key}
   JwtLogin           /lightning/o/Account/list


Quote
    LaunchApp                       App Launcher    
    ClickText                       Salesforce CPQ 
    ClickText                        Quotes
    ClickText                        New
    ClickCheckbox                    Primary    on
    TypeText                        Account     John
    PressKey                       Account     {Down}
    PressKey                       Account     {Down}
    PressKey                       Account     {Enter}
    ClickText                      Save        partial_match=false

Edit Quote
    ClickText                        Edit Lines
    ClickText                        Save                 anchor=Choose Price Book    recognition_mode=vision
    ClickText                        Add Products

Hello
    [Documentation]    Test Case created using the QEditor

    


    GoTo    https://www.copado.com/
    ClickText    Accept
    ClickText    Book a Consultation    anchor=1-877-COPADO0
    TypeText    First Name*    Himmat
    TypeText    Last Name*    Singh
    TypeText    Business Email*    himmat@gmail
    TypeText    Company*    hh
    TypeText    Job Title*    hh
    DropDown    372431_663692pi_372431_663692    India
    ClickText    Submit
    VerifyText    correct
    VerifyText    Please correct the errors below:
