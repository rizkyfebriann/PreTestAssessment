*** Settings ***
Library    Collections
Library    RequestsLibrary

*** Variables ***
${base_url}         https://reqres.in/api/users/2

*** Test Cases ***
GET Request User
    ${response}=    GET      ${base_url}        expected_status=200
    log    ${response.json()}
    Status Should Be    200