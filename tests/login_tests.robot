*** Settings ***
Resource    ../pages/login_page.robot

Test Setup       Abrir navegador e acessar o site
Test Teardown    Fechar navegador

*** Test Cases ***

TC01 - Login com sucesso
    Preencher username    ${USERNAME_VALIDO}
    Preencher password    ${PASSWORD_VALIDO}
    Clicar em submit
    Validar login com sucesso

TC02 - Login com username inválido
    Preencher username    ${USERNAME_INVALIDO}
    Preencher password    ${PASSWORD_VALIDO}
    Clicar em submit
    Validar erro de username

TC03 - Login com password inválido
    Preencher username    ${USERNAME_VALIDO}
    Preencher password    ${PASSWORD_INVALIDO}
    Clicar em submit
    Validar erro de password