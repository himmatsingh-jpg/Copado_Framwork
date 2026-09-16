*** Settings ***
Documentation             Example resource file with custom keywords. NOTE: Some keywords below may need
...                       minor changes to work in different instances.
Library                   QForce
Library                   String
Library                   DateTime
*** Variables ***



External Client App Login Example - Raw
   [Tags]    ConnectedApp    ExternalClientApp    JWT    JWTtoken
   [Documentation]    A short example of how to use the JWT/External Client App to log into an environment.
   JwtAuthenticate           ${client_id}                     ${persona_username}    ${server_key}
   JwtLogin           /lightning/o/Account/list