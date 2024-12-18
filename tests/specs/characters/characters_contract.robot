*** Settings ***
Documentation          Schema validation for character functionality - Swagger: https://developer.marvel.com/docs
Resource             ../../steps/characters/characters_steps.resource

*** Test Cases ***
Schema Succesfully - Fetches lists of characters
    [Documentation]    GET - "/v1/public/characters"
    [tags]    Schema    Characters    Success    Test1
    ${response}    When to call the endpoint GET "/v1/public/characters" 
    Then the endpoint should return the schema correctly   ${response}    get_fetches_lists_of_characters_success

Schema Succesfully - Fetches a single character by id
    [Documentation]    GET - "/v1/public/characters/{characterId}"
    [tags]    Schema    Characters    Success    Test2
    ${response}    When to call the endpoint GET "/v1/public/characters/{characterId}"    1011334
    Then the endpoint should return the schema correctly    ${response}    get_fetches_a_single_character_by_id_success

Schema Failure - Fetches a single character by id
    [Documentation]    GET - "/v1/public/characters/{characterId}"
    [tags]    Schema    Characters    Failure
    ${response}    When to call the endpoint GET "/v1/public/characters/{characterId}"    1111111
    Then the endpoint should return the schema correctly    ${response}    get_fetches_a_single_character_by_id_failure

Schema Succesfully - Fetches lists of comics filtered by a character id
    [Documentation]    GET - "/v1/public/characters/{characterId}/comics"
    [tags]    Schema    Characters    Success
    ${response}    When to call the endpoint GET "/v1/public/characters/{characterId}/comics"    1011334
    Then the endpoint should return the schema correctly    ${response}    get_fetches_lists_of_comics_filtered_by_a_character_id_success

Schema Failure - Fetches lists of comics filtered by a character id
    [Documentation]    GET - "/v1/public/characters/{characterId}/comics"
    [tags]    Schema    Characters    Failure
    ${response}    When to call the endpoint GET "/v1/public/characters/{characterId}/comics"    1111111
    Then the endpoint should return the schema correctly    ${response}    get_fetches_lists_of_comics_filtered_by_a_character_id_failure

Schema Succesfully - Fetches lists of events filtered by a character id
    [Documentation]    GET - "/v1/public/characters/{characterId}/events"
    [tags]    Schema    Characters    Success
    ${response}    When to call the endpoint GET "/v1/public/characters/{characterId}/events"    1011334
    Then the endpoint should return the schema correctly    ${response}    get_fetches_lists_of_events_filtered_by_a_character_id_success

Schema Failure - Fetches lists of events filtered by a character id
    [Documentation]    GET - "/v1/public/characters/{characterId}/events"
    [tags]    Schema    Characters    Failure
    ${response}    When to call the endpoint GET "/v1/public/characters/{characterId}/events"    1111111
    Then the endpoint should return the schema correctly    ${response}    get_fetches_lists_of_events_filtered_by_a_character_id_failure

Schema Succesfully - Fetches lists of series filtered by a character id
    [Documentation]    GET - "/v1/public/characters/{characterId}/series"
    [tags]    Schema    Characters    Success
    ${response}    When to call the endpoint GET "/v1/public/characters/{characterId}/series"    1011334
    Then the endpoint should return the schema correctly    ${response}    get_fetches_lists_of_series_filtered_by_a_character_id_success

Schema Failure - Fetches lists of series filtered by a character id
    [Documentation]    GET - "/v1/public/characters/{characterId}/series"
    [tags]    Schema    Characters    Failure
    ${response}    When to call the endpoint GET "/v1/public/characters/{characterId}/series"    1111111
    Then the endpoint should return the schema correctly    ${response}    get_fetches_lists_of_series_filtered_by_a_character_id_failure

Schema Succesfully - Fetches lists of stories filtered by a character id
    [Documentation]    GET - "/v1/public/characters/{characterId}/stories"
    [tags]    Schema    Characters    Success
    ${response}    When to call the endpoint GET "/v1/public/characters/{characterId}/stories"    1011334
    Then the endpoint should return the schema correctly    ${response}    get_fetches_lists_of_stories_filtered_by_a_character_id_success

Schema Failure - Fetches lists of stories filtered by a character id
    [Documentation]    GET - "/v1/public/characters/{characterId}/stories"
    [tags]    Schema    Characters    Failure
    ${response}    When to call the endpoint GET "/v1/public/characters/{characterId}/stories"    1111111
    Then the endpoint should return the schema correctly    ${response}    get_fetches_lists_of_stories_filtered_by_a_character_id_failure