*** Settings ***
Library    AppiumLibrary
Resource    ../resources/base.resource
Test Setup        Iniciar sessão
Test Teardown     Encerrar sessão    

*** Variables ***

*** Test Cases ***
Remover um elemento e executar SWIPE
    Entrar no App
    Navegador para menu lateral
    Acessar menu    AVENGERS
    Acessar submenu    LISTA

    Apagar pessoa    pessoa=Homem de Ferro