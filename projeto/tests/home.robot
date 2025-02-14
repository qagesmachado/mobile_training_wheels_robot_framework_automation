*** Settings ***
Resource    ../resources/base.resource

*** Variables ***

*** Test Cases ***
Teste - Login com sucesso
    [Documentation]     Teste responsável pro abrir o app e verificar alguns
    ...                 texto, de modo a garantir que o app abriu com sucesso
    Iniciar sessão
    Entrar no App
    Encerrar sessão