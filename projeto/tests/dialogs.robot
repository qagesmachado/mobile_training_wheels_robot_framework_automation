*** Settings ***
Library    AppiumLibrary
Resource    ../resources/base.resource
Test Setup        Iniciar sessão
Test Teardown     Encerrar sessão    

*** Variables ***

*** Test Cases ***
Validar Dialog
    Entrar no App
    Navegador para menu lateral
    Acessar menu    DIALOGS
    Acessar submenu    INFO

    Wait Until Element Is Visible    xpath=//*[@text="Tio Ben Facts"]
    Text Should Be Visible    Com grandes poderes vêm grandes
    Text Should Be Visible    responsabilidades.

    Click Element    id=io.qaninja.android.twp:id/dialogInfoOk
    Wait Until Page Does Not Contain    xpath=//*[@text="Tio Ben Facts"]




