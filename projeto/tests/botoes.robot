*** Settings ***
Library    AppiumLibrary
Resource    ../resources/base.resource
Test Setup        Iniciar sessão
Test Teardown     Encerrar sessão    

*** Variables ***

*** Test Cases ***
Teste - Clique simples
    Entrar no App
    Navegador para menu lateral
    Acessar menu    BOTÕES
    Acessar submenu    CLIQUE SIMPLES

    # Test
    Click Text    text=CLIQUE AQUI
    Wait Until Page Contains    Isso é um clique simples

Teste - Clique looongo
    Entrar no App
    Navegador para menu lateral
    Acessar menu    BOTÕES
    Acessar submenu    CLIQUE LONGO
    
    # Test
    Wait Until Element Is Visible    xpath=//*[@resource-id="io.qaninja.android.twp:id/long_click"]   10
    ${location}     Get Element Location     xpath=//*[@resource-id="io.qaninja.android.twp:id/long_click"]

    Tap With Positions    1000      ${${location}[x], ${location}[y]}       
    Wait Until Page Contains    CLIQUE LONGO OK

