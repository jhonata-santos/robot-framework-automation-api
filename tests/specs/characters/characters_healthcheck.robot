*** Settings ***
Documentation        Healthcheck for Characters functionality - Swagger: https://developer.marvel.com/docs
Resource             ../../steps/characters/characters_steps.resource

*** Test Cases ***
Healthcheck - Fetches lists of characters
    [Documentation]    GET "/v1/public/characters"
    [tags]    Healhtcheck    Characters
    ${response}    When to call the endpoint GET "/v1/public/characters"
    Then the endpoint should return status code    200    ${response}

Healthcheck - Fetches a single character by id
    [Documentation]    GET "/v1/public/characters/{characterId}"
    [tags]    Healhtcheck    Characters
    ${response}    When to call the endpoint GET "/v1/public/characters/{characterId}"
    Then the endpoint should return status code    200    ${response}

Healthcheck - Fetches lists of comics filtered by a character id
    [Documentation]    GET "/v1/public/characters/{characterId}/comics"
    [tags]    Healhtcheck    Characters
    ${response}    When to call the endpoint GET "/v1/public/characters/{characterId}/comics"
    Then the endpoint should return status code    200    ${response}

Healthcheck - Fetches lists of events filtered by a character id
    [Documentation]    GET "/v1/public/characters/{characterId}/events"
    [tags]    Healhtcheck    Characters
    ${response}    When to call the endpoint GET "/v1/public/characters/{characterId}/events"
    Then the endpoint should return status code    200    ${response}

Healthcheck - Fetches lists of series filtered by a character id
    [Documentation]    GET "/v1/public/characters/{characterId}/series"
    [tags]    Healhtcheck    Characters
    ${response}    When to call the endpoint GET "/v1/public/characters/{characterId}/series"
    Then the endpoint should return status code    200    ${response}

Healthcheck - Fetches lists of stories filtered by a character id
    [Documentation]    GET "/v1/public/characters/{characterId}/stories"
    [tags]    Healhtcheck    Characters
    ${response}    When to call the endpoint GET "/v1/public/characters/{characterId}/stories"
    Then the endpoint should return status code    200    ${response}