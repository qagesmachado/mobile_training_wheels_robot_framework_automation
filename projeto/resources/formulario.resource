*** Settings ***
Resource    base.resource

*** Variables ***

*** Keywords ***
Criar conta    
    [Arguments]    ${nome}    ${email}    ${senha}    ${nivel}
    
    Input Text    xpath=//*[@resource-id="io.qaninja.android.twp:id/etUsername"]    text=${nome}
    Input Text    xpath=//*[@resource-id="io.qaninja.android.twp:id/etEmail"]    text=${email}
    Input Text    xpath=//*[@resource-id="io.qaninja.android.twp:id/etPassword"]    text=${senha}

    Click Element    id=io.qaninja.android.twp:id/spinnerJob    
    Wait Until Element Is Visible    class=android.widget.ListView
    Click Text    ${nivel}

    Click Element    xpath=//*[@resource-id="io.qaninja.android.twp:id/btnSubmit"]
    
    Wait Until Page Contains    text=Tudo certo, recebemos seus dados!

Fazer Login    
    [Arguments]    ${user}    ${password}    ${status}
   
    Input Text    xpath=//*[@resource-id="io.qaninja.android.twp:id/etEmail"]    text=${user}
    Input Text    xpath=//*[@resource-id="io.qaninja.android.twp:id/etPassword"]    text=${password}
    Click Element    xpath=//*[@resource-id="io.qaninja.android.twp:id/btnSubmit"]

    IF    "${status}" == "sucesso"
        Wait Until Page Contains    text=Boas vindas, logado você está.
    ELSE
        Wait Until Page Contains    text=Senha inválida!
    END