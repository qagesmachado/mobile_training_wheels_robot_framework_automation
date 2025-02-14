*** Settings ***
Library    AppiumLibrary
Resource    ../resources/base.resource
Test Setup        Iniciar sessão
Test Teardown     Encerrar sessão    

*** Variables ***

*** Test Cases ***
Teste - Login com falha
    Entrar no App
    Navegador para menu lateral
    Acessar menu    FORMS
    Acessar submenu    LOGIN
    
    # checkbox
    Fazer Login    test@test.com    test    falha

