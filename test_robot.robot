*** Settings ***
Library           RequestsLibrary

*** Test Cases ***

GET /isodd/1
    ${response}    GET    http://localhost:5000/isodd/1
    Should Contain    ${response.content.decode('utf-8')}    True

GET /isodd/0
    ${response}    GET    http://localhost:5000/isodd/0
    Should Contain    ${response.content.decode('utf-8')}    False

GET /isodd/-2
    ${response}    GET    http://localhost:5000/isodd/-2
    Should Contain    ${response.content.decode('utf-8')}    False

*** Keywords ***

Get On Session
    [Arguments]    ${url}
    ${response}    GET    ${url}
    [Return]    ${response}
