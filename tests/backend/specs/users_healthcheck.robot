*** Settings ***
Documentation        Healthcheck for User functionality
Resource             ../resources/users.resource

*** Variables ***
${non_existing_user}    999999999
${existing_user}        1

*** Test Cases ***
Validate endpoint availability - Get All Users
    [Documentation]     Healhtcheck - Get All Users
    [tags]    Healhtcheck    Users
    ${response}    Request the endpoint Get Specific User     ${existing_user}
    The endpoint must return success status code    200    ${response}

Validate endpoint availability - Get Specific User
    [Documentation]     Healhtcheck - Get Specific User
    [tags]    Healhtcheck    Users
    ${response}    Request the endpoint Get All User
    The endpoint must return success status code    200    ${response}
