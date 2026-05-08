*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/variables.robot

*** Keywords ***

Abrir navegador e acessar o site
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Fechar navegador
    Close Browser

Preencher username
    [Arguments]    ${username}
    Input Text    ${INPUT_USERNAME}    ${username}

Preencher password
    [Arguments]    ${password}
    Input Text    ${INPUT_PASSWORD}    ${password}

Clicar em submit
    Click Element    ${BUTTON_SUBMIT}

Validar login com sucesso
    Wait Until Element Is Visible
    ...    ${MESSAGE_SUCCESS}
    ...    10s

Validar erro de username
    Wait Until Element Is Visible
    ...    ${MESSAGE_USERNAME_ERROR}
    ...    10s

Validar erro de password
    Wait Until Element Is Visible
    ...    ${MESSAGE_PASSWORD_ERROR}
    ...    10s