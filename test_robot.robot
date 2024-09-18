*** Settings ***
Library           RequestsLibrary

*** Test Cases ***



GET /plus/10/20
    ${response}    GET    http://localhost:5000/plus/10/20
    Should Contain    ${response.content.decode('utf-8')}    30.0

GET /plus/0/20
    ${response}    GET    http://localhost:5000/plus/0/20.5
    Should Contain    ${response.content.decode('utf-8')}    20.5

GET /plus/10/0
    ${response}    GET    http://localhost:5000/plus/-10/0
    Should Contain    ${response.content.decode('utf-8')}    -10.0

*** Keywords ***

Get On Session
    [Arguments]    ${url}
    ${response}    GET    ${url}