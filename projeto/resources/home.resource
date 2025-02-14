*** Settings ***
Resource    base.resource

*** Keywords ***
Iniciar sessão
    Open Application    http://localhost:4723
    ...    platformName=Android
    ...    deviceName=Android Emulator
    ...    automationName=UIAutomator2
    ...    app=${EXECDIR}/app/twp.apk
    ...    udid=emulator-5554
    ...    autoGrantPermissions=true
    
    Wait Until Page Contains    QA Ninja
    Wait Until Page Contains    Training Wheels Protocol
    Wait Until Page Contains    Mobile Version

Encerrar sessão
    Close Application

Entrar no App
    Wait Until Element Is Visible    xpath=//*[@text="COMEÇAR"]
    Click Element     xpath=//*[@text="COMEÇAR"]