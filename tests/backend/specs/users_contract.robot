*** Settings ***
Documentation        Contract Validation for User functionality
Resource             ../resources/users.resource

*** Variables ***
${non_existing_user}    999999999
${existing_user}        12

*** Test Cases ***
Validate endpoint contract success - Get Specific User
    [Documentation]     Contract Success - Get Specific User
    [tags]    Contract    Success    Users
    ${response}    Request the endpoint Get Specific User    ${existing_user}    
    Validate the contract returned by the endpoint    ${response}    get_specific_user_success

Validate endpoint contract failure - Get Specific User
    [Documentation]     Contract failure - Get Specific User
    [tags]    Contract    Failure    Users
    ${response}    Request the endpoint Get Specific User    ${non_existing_user}
    Validate the contract returned by the endpoint    ${response}    get_specific_user_failure

Validate endpoint contract success - Get All Users
    [Documentation]     Contract Success - Get All Users
    [tags]    Contract    Success    Users
    ${response}    Request the endpoint Get All User
    Validate the contract returned by the endpoint    ${response}    get_all_users_success
