*** Settings ***
Library    AppiumLibrary
Resource    ../resources/base.resource
Test Setup        Iniciar sessão
Test Teardown     Encerrar sessão    

*** Variables ***

*** Test Cases ***
Teste - busca de elementos
    Entrar no App
    Navegador para menu lateral
    Acessar menu    AVENGERS
    Acessar submenu    BUSCA
    
    Buscar pessoa    pessoa=Thor
