*** Settings ***
Library    AppiumLibrary
Resource    ../resources/base.resource
Test Setup        Iniciar sessão
Test Teardown     Encerrar sessão    

*** Variables ***

*** Test Cases ***
Teste - Cadastro usuário
    Entrar no App
    Navegador para menu lateral
    Acessar menu    FORMS
    Acessar submenu    CADASTRO
    
    Criar conta    nome=Gustavo    email=gu@test.com    senha=1234    nivel=QA
