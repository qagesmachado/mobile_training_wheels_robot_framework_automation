# Projeto de automação Mobiel com o APP: Trainning Wheels
Esse é um projeto de estudo de automação Mobile utilizando:
    - Robot Framework
    - Appium

App utilizado: Trainning Wheels (qax)

## Fazer download
- Android Studio - https://developer.android.com/
- Appium Inspector - https://github.com/appium/appium-inspector
    - Acessar releases
- Instalar o python - https://www.python.org/
- Instalar o nodejs - https://nodejs.org/pt
- Instalar o Robot Framework - https://robotframework.org/
- Instalar biblioteca do Appium para robot framework- https://github.com/serhatbolsu/robotframework-appiumlibrary
- Instalar JAVA JDK (Mais recente possível, eu uso o 8 e funciona) - https://www.java.com/pt-BR/
    - java version "1.8.0_361"
    - Java(TM) SE Runtime Environment (build 1.8.0_361-b09)
    - Java HotSpot(TM) 64-Bit Server VM (build 25.361-b09, mixed mode)

# configurações de variáveis de ambiente
- npm i appium-doctor
    - Faz instalação do appium-doctor responsável por fazer diagnóstico das configurações
- npx appium-doctor --android
    - Executa diagnóstico para android
- Observar diagnóstico:
    - JAVA_HOME: adicionado nas variáveis de ambiente até a pasta "bin"
    - ANDROID_HOME: Adicionado nas variáveis de ambiente até a pasta platform-tools
- Deve ser adicionadas no PATH

## Instalação do Appium do projeto
- npm init [enter em todos os passos]
- npm i appium
- npx appium driver install uiautomator2

## Appium inspector
Você deverá configurar as capabilities para conseguir fazer a conexão entre Servidor, arquivo apk e dispositivo móvel. Use a seguinte configuração como exemplos:

````
{
  "platformName": "Android",
  "appium:deviceName": "Android Emulator",
  "appium:automationName": "UIAutomator2",
  "appium:app": "C:\\repositories\\QAGESMACHADO\\TRILHA_DE_ESTUDO_MOBILE\\mobile_training_wheels_robot_framework_automation\\app\\twp.apk",
  "appium:udid": "emulator-5554",
  "appium:autoGrantPermissions": true
}
````

Alterar os seguintes valores:
- udid: Altere de acordo com o dispositivo que esta usando
    - Você pode usar o comando: "adb devices" para saber qual o id do seu dispositivo.
- app: Altere de acordo com o diretório destino no qual o apk esta salvo


## Execução
Abrir um terminal e iniciar servidor Appium
    - npx appium

## Links importantes
- https://appium.io/docs/en/latest/
- https://github.com/appium/appium-inspector
