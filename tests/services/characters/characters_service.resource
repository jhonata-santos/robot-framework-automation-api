*** Settings ***
Library          RequestsLibrary
Library          OperatingSystem
Library          yaml
Variables        ../../../settings.yaml

*** Variables ***
${BASE_URL}        http://gateway.marvel.com

*** Keywords ***
request the endpoint "/v1/public/characters"
    ${response}    Get    
    ...    url=${BASE_URL}/v1/public/characters?ts=${TS}&apikey=${PUBLIC_KEY}&hash=${MD5_HASH}
    ...    expected_status=any

    RETURN       ${response}

request the endpoint "/v1/public/characters/{characterId}"
    ${characters}    Set Variable    1011334
    ${response}    Get    
    ...    url=${BASE_URL}/v1/public/characters/${characters}?ts=${TS}&apikey=${PUBLIC_KEY}&hash=${MD5_HASH}
    ...    expected_status=any

    RETURN       ${response}

request the endpoint "/v1/public/characters/{characterId}/comics"
    ${characters}    Set Variable    1011334
    ${response}    Get    
    ...    url=${BASE_URL}/v1/public/characters/${characters}/comics?ts=${TS}&apikey=${PUBLIC_KEY}&hash=${MD5_HASH}
    ...    expected_status=any

    RETURN       ${response}

request the endpoint "/v1/public/characters/{characterId}/events"
    ${characters}    Set Variable    1011334
    ${response}    Get    
    ...    url=${BASE_URL}/v1/public/characters/${characters}/events?ts=${TS}&apikey=${PUBLIC_KEY}&hash=${MD5_HASH}
    ...    expected_status=any

    RETURN       ${response}

request the endpoint "/v1/public/characters/{characterId}/series"
    ${characters}    Set Variable    1011334
    ${response}    Get    
    ...    url=${BASE_URL}/v1/public/characters/${characters}/series?ts=${TS}&apikey=${PUBLIC_KEY}&hash=${MD5_HASH}
    ...    expected_status=any

    RETURN       ${response}

request the endpoint "/v1/public/characters/{characterId}/stories"
    ${characters}    Set Variable    1011334
    ${response}    Get    
    ...    url=${BASE_URL}/v1/public/characters/${characters}/stories?ts=${TS}&apikey=${PUBLIC_KEY}&hash=${MD5_HASH}
    ...    expected_status=any

    RETURN       ${response}