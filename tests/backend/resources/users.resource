*** Settings ***
Library     RequestsLibrary
Library     JsonValidator
Library     OperatingSystem
Library     String
Library     BuiltIn
Resource    ../services/users_service.resource

*** Keywords ***
Request the endpoint Get Specific User
    [Documentation]        Essa keyword serve para requisitar o endpoint de Get Specific User
    [Arguments]            ${user_id}
    ${response}            Send request get specific user endpoint    ${user_id}
    RETURN                 ${response}

Request the endpoint Get All User
    [Documentation]        Essa keyword serve para requisitar o endpoint de Get All Users
    ${response}            Send request get all users endpoint
    RETURN                 ${response}

The endpoint must return success status code
    [Documentation]        Essa keyword serve para validar o status code da requisição
    [Arguments]            ${status_code_expected}           ${response}
    Should Be Equal As Numbers    ${status_code_expected}    ${response.status_code}

Validate the contract returned by the endpoint
    [Documentation]        Essa keyword serve para validar uma resposta JSON contra um JSON Schema pré-defido
    [Arguments]            ${response}        ${endpoint_name}
    ${json}           Get File    ${CURDIR}/../schemas/${endpoint_name}.json
    Validate Jsonschema From File    ${response.json()}    ${CURDIR}/../schemas/${endpoint_name}.json

A negative number error message must be returned with a status code
    [Documentation]        Essa keyword serve para validar a mensagem de erro e o status code 400 ao fazer uma requisição com user_id negativo
    [Arguments]            ${status_code_expected}        ${response} 
    Should Be Equal        ${response.text}               O ID deve ser um número positivo. (Parameter 'id')
    Should Be Equal As Numbers    ${status_code_expected}    ${response.status_code} 

A message of one or more errors must be returned with a status code
    [Documentation]        Essa keyword serve para validar a mensagem de erro e o status code 400 ao fazer uma requisição com caracteres especiais
    [Arguments]            ${status_code_expected}              ${response} 
    Should Be Equal        ${response.json()}[title]            One or more validation errors occurred.
    Should Be Equal        ${response.json()}[errors][id][0]    The value '@a' is not valid.
    Should Be Equal As Numbers    ${status_code_expected}    ${response.status_code} 