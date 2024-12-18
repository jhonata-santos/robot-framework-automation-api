*** Settings ***
Library     JSONLibrary
Resource    ../../services/characters/characters_service.resource

*** Variables ***
${BASE_PATH_SCHEMAS}    ${CURDIR}/../../schemas/

*** Keywords ***
# REQUESTS STEPS
When to call the endpoint GET "/v1/public/characters"
    ${response}    request the endpoint "/v1/public/characters"
    RETURN    ${response}

When to call the endpoint GET "/v1/public/characters/{characterId}"
    [Arguments]    ${characterId}
    ${response}    request the endpoint "/v1/public/characters/{characterId}"   ${characterId}  
    RETURN    ${response}

When to call the endpoint GET "/v1/public/characters/{characterId}/comics"
    [Arguments]    ${characterId}
    ${response}    request the endpoint "/v1/public/characters/{characterId}/comics"    ${characterId}  
    RETURN    ${response}

When to call the endpoint GET "/v1/public/characters/{characterId}/events"
    [Arguments]    ${characterId}
    ${response}    request the endpoint "/v1/public/characters/{characterId}/events"    ${characterId}  
    RETURN    ${response}

When to call the endpoint GET "/v1/public/characters/{characterId}/series"
    [Arguments]    ${characterId}
    ${response}    request the endpoint "/v1/public/characters/{characterId}/series"    ${characterId}  
    RETURN    ${response}

When to call the endpoint GET "/v1/public/characters/{characterId}/stories"
    [Arguments]    ${characterId}
    ${response}    request the endpoint "/v1/public/characters/{characterId}/stories"    ${characterId}  
    RETURN    ${response}

# HEALTHCHECK VALIDATION STEPS
Then the endpoint should return status code
    [Arguments]    ${expected_status_code}    ${response}
    Should Be Equal As Integers    ${expected_status_code}    ${response.status_code}

# SCHEMA VALIDATION STEPS
Then the endpoint should return the schema correctly
    [Arguments]    ${response}    ${json_name}
    Validate Json By Schema File    
    ...    ${response.json()}    
    ...    ${BASE_PATH_SCHEMAS}/characters/${json_name}.json