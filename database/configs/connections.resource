*** Settings ***
Variables      settings.yaml

*** Variables ***
&{SOCIALNETWORK}        DBName = SOCIALNETWORK
...                     DBHost = localhost
...                     DBPort = 3306
...                     DBUser = ${SETTINGS_DATABASE_SOCIALNETWORK_USERNAME}
...                     DBPass = ${SETTINGS_DATABASE_SOCIALNETWORK_PASSWORD}
