*** Settings ***
Library    Collections
Library    RequestsLibrary

*** Variables ***
${base_url}         https://reqres.in/api/users

*** Test Cases ***
POST Request User
        ${req_body}=  Create Dictionary    name=morpheus        job=leader
        ${response}=     POST        ${base_url}     json=${req_body}    expected_status=201
        log      ${response.json()}
        Status Should Be    201