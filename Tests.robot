*** Settings ***

Documentation           New test suite
# You can change imported library to "QWeb" if testing generic web application, not Salesforce.
Library                 QForce
Suite Setup             Open Browser    about:blank    chrome
Suite Teardown          Close All Browsers
*** Variables ***




*** Test Cases ***
External Client App Login Example - Raw
   [Tags]    ConnectedApp    ExternalClientApp    JWT    JWTtoken
   [Documentation]    A short example of how to use the JWT/External Client App to log into an environment.
   JwtAuthenticate           ${client_id}                     ${persona_username}    ${server_key}
   JwtLogin           /lightning/o/Account/list         
  QForce.ClickText            New
  #...
