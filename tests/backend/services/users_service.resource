*** Settings ***
Library    RequestsLibrary

*** Variables ***
${BASE_URL}        http://localhost:5260

*** Keywords ***
Send request get specific user endpoint
    [Arguments]    ${user_id}
    ${response}    Get    ${BASE_URL}/User/${user_id}    expected_status=any
    RETURN       ${response}

Send request get all users endpoint
    ${response}    Get    ${BASE_URL}/Users              expected_status=any
    RETURN       ${response}