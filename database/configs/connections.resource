*** Settings ***
Variables      ${CURDIR}/../../credentials.yaml

*** Variables ***
&{MY_DATABASE_SQL}        DBName = ${DATABASE_NAME}
...                       DBHost = localhost
...                       DBPort = 3306
...                       DBUser = ${DATABASE_USERNAME}
...                       DBPass = ${DATABASE_PASSWORD}

&{MY_DATABASE_MONGO}      DBName = ${MONGODB_NAME}
...                       DBHost = localhost
...                       DBPort = 3306
...                       DBUser = ${MONGODB_USERNAME}
...                       DBPass = ${MONGODB_PASSWORD}
