*** Settings ***
Library           RequestsLibrary

*** Test Cases ***

GET /is_even/17
    ${response}    GET    http://localhost:5001/is_even/17
    Should Contain    ${response.content.decode('utf-8')}    False

GET /is_even/36
    ${response}    GET    http://localhost:5001/is_even/36
    Should Contain    ${response.content.decode('utf-8')}    True

GET /is_even/13219
    ${response}    GET    http://localhost:5001/is_even/13219
    Should Contain    ${response.content.decode('utf-8')}    False

*** Keywords ***

Get On Session
    [Arguments]    ${url}
    ${response}    GET    ${url}
    [Return]    ${response}
