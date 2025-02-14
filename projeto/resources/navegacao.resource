*** Settings ***
Resource    base.resource

*** Keywords ***
Navegador para menu lateral
    Wait Until Element Is Visible    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    Click Element     xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]

Acessar menu
    [Arguments]    ${menu_item}
    
    Wait Until Element Is Visible     xpath=//*[@resource-id="io.qaninja.android.twp:id/tvItemTitle" and @text="${menu_item}"]
    Click Element    xpath=//*[@resource-id="io.qaninja.android.twp:id/tvItemTitle" and @text="${menu_item}"]  
    Wait Until Page Does Not Contain    xpath=//*[@resource-id="io.qaninja.android.twp:id/tvItemTitle" and @text="${menu_item}"]
    Sleep    1s
    Wait Until Element Is Visible    xpath=//*[@resource-id="io.qaninja.android.twp:id/toolbarTitle"and @text="${menu_item}"]

Acessar submenu
    [Arguments]    ${menu_item}

    Wait Until Element Is Visible    xpath=//*[@resource-id="io.qaninja.android.twp:id/tvItemTitle" and @text="${menu_item}"]
    Click Element    xpath=//*[@resource-id="io.qaninja.android.twp:id/tvItemTitle" and @text="${menu_item}"]

    # Wait Until Element Is Visible    xpath=//*[@resource-id="io.qaninja.android.twp:id/toolbarTitle" and @text="${menu_item}"]
