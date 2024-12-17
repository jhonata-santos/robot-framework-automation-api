*** Settings ***
Library     RequestsLibrary
Library     String
Resource    ../../services/characters/characters_service.resource

*** Keywords ***
When to call the endpoint GET "/v1/public/characters"
    ${response}    request the endpoint "/v1/public/characters"
    RETURN    ${response}

When to call the endpoint GET "/v1/public/characters/{characterId}"
    ${response}    request the endpoint "/v1/public/characters/{characterId}"
    RETURN    ${response}

When to call the endpoint GET "/v1/public/characters/{characterId}/comics"
    ${response}    request the endpoint "/v1/public/characters/{characterId}/comics"
    RETURN    ${response}

When to call the endpoint GET "/v1/public/characters/{characterId}/events"
    ${response}    request the endpoint "/v1/public/characters/{characterId}/events"
    RETURN    ${response}

When to call the endpoint GET "/v1/public/characters/{characterId}/series"
    ${response}    request the endpoint "/v1/public/characters/{characterId}/series"
    RETURN    ${response}

When to call the endpoint GET "/v1/public/characters/{characterId}/stories"
    ${response}    request the endpoint "/v1/public/characters/{characterId}/stories"
    RETURN    ${response}

Then the endpoint should return status code
    [Arguments]    ${expected_status_code}    ${response}
    Set Test Message    Status Code Received: ${response.status_code}
    Should Be Equal As Integers    ${expected_status_code}    ${response.status_code}
