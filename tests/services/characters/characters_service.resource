*** Settings ***
Library          RequestsLibrary
Library          OperatingSystem
Library          yaml
Variables         ../../../settings.yaml
Variables        ../../../credentials.yaml

*** Variables ***
${BASE_URL}        http://gateway.marvel.com

*** Keywords ***
request the endpoint "/v1/public/characters"
    ${response}    Get    
    ...    url=${BASE_URL}/v1/public/characters?ts=${TS}&apikey=${PUBLIC_KEY}&hash=${MD5_HASH}
    ...    expected_status=any
        
    Run Keyword If    ${LOGS}    Log To Console    ${\n}${response.json()}

    RETURN       ${response}

request the endpoint "/v1/public/characters/{characterId}"
    [Arguments]    ${characterId}
    ${response}    Get    
    ...    url=${BASE_URL}/v1/public/characters/${characterId}?ts=${TS}&apikey=${PUBLIC_KEY}&hash=${MD5_HASH}
    ...    expected_status=any

    Run Keyword If    ${LOGS}    Log To Console    ${\n}${response.json()}
    
    RETURN       ${response}

request the endpoint "/v1/public/characters/{characterId}/comics"
    [Arguments]    ${characterId}
    ${response}    Get    
    ...    url=${BASE_URL}/v1/public/characters/${characterId}/comics?ts=${TS}&apikey=${PUBLIC_KEY}&hash=${MD5_HASH}
    ...    expected_status=any
    
    Run Keyword If    ${LOGS}    Log To Console    ${\n}${response.json()}

    RETURN       ${response}

request the endpoint "/v1/public/characters/{characterId}/events"
    [Arguments]    ${characterId}
    ${response}    Get    
    ...    url=${BASE_URL}/v1/public/characters/${characterId}/events?ts=${TS}&apikey=${PUBLIC_KEY}&hash=${MD5_HASH}
    ...    expected_status=any

    Run Keyword If    ${LOGS}    Log To Console    ${\n}${response.json()}

    RETURN       ${response}

request the endpoint "/v1/public/characters/{characterId}/series"
    [Arguments]    ${characterId}
    ${response}    Get    
    ...    url=${BASE_URL}/v1/public/characters/${characterId}/series?ts=${TS}&apikey=${PUBLIC_KEY}&hash=${MD5_HASH}
    ...    expected_status=any

    Run Keyword If    ${LOGS}    Log To Console    ${\n}${response.json()}

    RETURN       ${response}

request the endpoint "/v1/public/characters/{characterId}/stories"
    [Arguments]    ${characterId}
    ${response}    Get    
    ...    url=${BASE_URL}/v1/public/characters/${characterId}/stories?ts=${TS}&apikey=${PUBLIC_KEY}&hash=${MD5_HASH}
    ...    expected_status=any

    Run Keyword If    ${LOGS}    Log To Console    ${\n}${response.json()}

    RETURN       ${response}