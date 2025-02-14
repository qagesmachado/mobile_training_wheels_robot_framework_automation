*** Settings ***
Library    AppiumLibrary
Resource    ../resources/base.resource
Test Setup        Iniciar sessão
Test Teardown     Encerrar sessão    

*** Variables ***

*** Test Cases ***
Teste - checkbox
    Entrar no App
    Navegador para menu lateral
    Acessar menu    INPUTS
    Acessar submenu    CHECKBOX
    
    # checkbox
    Selecionar checkbox     Ruby
    Selecionar checkbox     Python
    Selecionar checkbox     Java
    Selecionar checkbox     Javascript
    Selecionar checkbox     C#
    Selecionar checkbox     Robot Framework

Teste - botões Botões de radio
    Entrar no App
    Navegador para menu lateral
    Acessar menu    INPUTS
    Acessar submenu    BOTÕES DE RADIO
    
    # Botões de radio                        
    ${before}    Get Element Attribute    xpath=//*[@resource-id="io.qaninja.android.twp:id/radioButton" and contains(@text, "Javascript")]    attribute=checked
    Should Be Equal    ${before}     false
    Click Element    xpath=//*[@resource-id="io.qaninja.android.twp:id/radioButton" and contains(@text, "Javascript")] 
    Sleep    1s
    ${after}    Get Element Attribute    xpath=//*[@resource-id="io.qaninja.android.twp:id/radioButton" and contains(@text, "Javascript")]     attribute=checked
    Should Be Equal    ${after}     true

