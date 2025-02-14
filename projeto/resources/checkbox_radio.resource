*** Settings ***
Resource    base.resource

*** Keywords ***
Selecionar checkbox
    [Arguments]    ${item}
    ${before}    Get Element Attribute    xpath=//*[@resource-id="io.qaninja.android.twp:id/checkboxButton" and contains(@text, "${item}")]    attribute=checked
    Should Be Equal    ${before}     false
    Click Element    xpath=//*[@resource-id="io.qaninja.android.twp:id/checkboxButton" and contains(@text, "${item}")]
    Sleep    1s
    ${after}    Get Element Attribute    xpath=//*[@resource-id="io.qaninja.android.twp:id/checkboxButton" and contains(@text, "${item}")]    attribute=checked
    Should Be Equal    ${after}     true