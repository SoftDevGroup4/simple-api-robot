*** Settings ***
Library           RequestsLibrary

*** Test Cases ***

GET /is_grade/3.7
    ${response}    GET    http://localhost:5000/is_grade/3.7
    Should Contain    ${response.content.decode('utf-8')}    1st

GET /is_grade/3.3
    ${response}    GET    http://localhost:5000/is_grade/3.3
    Should Contain    ${response.content.decode('utf-8')}    2nd

GET /is_grade/2.5
    ${response}    GET    http://localhost:5000/is_grade/2.5
    Should Contain    ${response.content.decode('utf-8')}    other

*** Keywords ***

Get On Session
    [Arguments]    ${url}
    ${response}    GET    ${url}
    [Return]    ${response}
