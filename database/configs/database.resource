*** Settings ***
Documentation    Resource para keywords uteis de manipulação do Banco de Dados
Library          DatabaseLibrary
Library          OperatingSystem
Resource         connections.resource

*** Keywords ***
Conectar na Base de Dados
    [Documentation]        Essa keyword se conecta em um Banco de Dados SQL Server.
    [Arguments]            ${banco}
    Connect To Database    pymssql
    ...                    ${${banco}.DBName}        ${${banco}.DBUser}
    ...                    ${${banco}.DBPass}        ${${banco}.DBHost}        ${${banco}.DBPort}

Criar query SQL String
    [Documentation]        Essa keyword lê um arquivo .sql e substitui variáveis. Retorna uma SQL String.
    [Arguments]            ${sql_file_name}
    ${sql_string}          Get File    ${CURDIR}/queries/${sql_file_name}.sql
    ${sql_string}          Replace Variables    ${sql_string} 
    [Return]               ${sql_string}

Executar Select Query
    [Documentation]        Essa keyword executa instruções SELECT. Retorna o resultado da query como dicionário.
    [Arguments]            ${banco}    ${sql_string}
    Conectar na Base de Dados    ${banco}
    ${result}    Query     ${sql_string}    returnAsDict=True
    Disconnect From Database
    [Return]               ${result}

Executar String SQL
    [Documentation]        Essa keyword executa instruções INSERTS, UPDATES e DELETES. Não há retorno.
    [Arguments]            ${banco}    ${sql_string}
    Conectar na Base de Dados    ${banco}
    Execute Sql String    ${sql_string}
    Disconnect From Database
