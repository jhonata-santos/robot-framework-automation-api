*** Settings ***
Documentation        Business Validation for User functionality
Resource             ../resources/users.resource

*** Variables ***
${negative_user_id}        -1
${special_character_id}    @a#b$c%d%e!f

*** Test Cases ***
Request endpoint with negative user id
    [Documentation]     Business - Get Specific User
    [tags]    Business    Users
    ${response}    Request the endpoint Get Specific User    ${negative_user_id}
    A negative number error message must be returned with a status code    400    ${response}

Request endpoint with special character in user ID
    [Documentation]     Business - Get Specific User
    [tags]    Business    Users
    ${response}    Request the endpoint Get Specific User    ${special_character_id}
    A message of one or more errors must be returned with a status code    400    ${response}