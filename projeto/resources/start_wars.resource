*** Settings ***
Resource    base.resource

*** Keywords ***
Buscar pessoa
    [Arguments]    ${pessoa}

    Element Should Be Visible    id=io.qaninja.android.twp:id/etSearch
    Wait Until Page Contains    Busque aqui

    Input Text    id=io.qaninja.android.twp:id/etSearch    ${pessoa}
    Wait Until Page Contains    1 vingadores encontrados

    Wait Until Page Contains    ${pessoa}

Apagar pessoa
    [Arguments]    ${pessoa}

    Wait Until Page Contains    ${pessoa}
    ${location}     Get Element Location     xpath=//android.widget.TextView[@resource-id="io.qaninja.android.twp:id/txtName" and @text="${pessoa}"]

    ${offset_x}    Evaluate        ${location}[x]-200
    ${offset_y}    Set Variable    ${location}[y]
    Swipe    start_x=${location}[x]    start_y=${location}[y]    offset_x=${offset_x}    offset_y=${offset_y}     
    Sleep    1s

    Click Element    xpath=//*[@resource-id="io.qaninja.android.twp:id/btnRemove"]

    Wait Until Page Contains    Item removido
    Wait Until Page Does Not Contain    ${pessoa}