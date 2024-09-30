*** Settings ***
Library           RequestsLibrary

*** Test Cases ***

GET /is_prime/17
    ${response}    GET    http://localhost:5000/is_prime/17
    Should Contain    ${response.content.decode('utf-8')}    True

GET /is_prime/36
    ${response}    GET    http://localhost:5000/is_prime/36
    Should Contain    ${response.content.decode('utf-8')}    False

GET /is_prime/13219
    ${response}    GET    http://localhost:5000/is_prime/13219
    Should Contain    ${response.content.decode('utf-8')}    True

*** Keywords ***

Get On Session
    [Arguments]    ${url}
    ${response}    GET    ${url}
    [Return]    ${response}
