import 'package:i18n_extension/i18n_extension.dart';

//Login Page
const emailInput = "emailInput";
const passwordInput = "passwordInput";
const enterYourEmail = "enterYourEmail";
const enterAValidEmail = "enterAValidEmail";
const enterYourPassword = "enterYourPassword";
const typePassword = "typePassword";
const typeEmail = "typeEmail";
const loginFailed = "loginFailed";
const enterUserPass = "enterUserPass";
const signInErrorMessageTitle = "signInErrorMessageTitle";
const loginBtn = "loginBtn";
const signInFailedMessage = "signInFailedMessage";
const incorrectUserMessage = "incorrectUserMessage";
const checkInternetMessage = "checkInternetMessage";
const unexpectedErrorMessage = "unexpectedErrorMessage";

//Scan Page
const stopBtn = "stopBtn";
const scanBtn = "scanBtn";
const logoutBtn = "logoutBtn";
const searchingTitle = "searching";
const deviceListTitle = "deviceList";
const scanToStartTitle = "scanToStart";
const configureTitle = "configureDevice";
const bluetoothOff = "bluetoothOff";
const clickScan = "clickScan";
const noDevicesYet = "noDevicesYet";
const resetDevice = "resetDevice";
const dataLost = "dataLost";
const backMessage = "backMessage";
const disconnect = "disconnect";
const ok = "ok";
const yes = "yes";
const no = "no";

//Device Page
const save = "save";
const reset = "reset";
const connecting = "connecting";
const events = "events";
const config = "config";
const error = "error";
const enterAddressValue = "enterAddressValue";
const enterValidAddressValue = "enterValidAddressValue";
const configureDeviceTitle = "configureDeviceTitle";
const projectLabel = "projectLabel";
const noProjectItem = "noProjectItem";
const operationLabel = "operationLabel";
const noOperationItem = "noOperationItem";
const communicationModeLabel = "communicationModeLabel";
const timezoneLabel = "communicatioModeLabel";
const batteryAlarmLabel = "batteryAlarmLabel";
const mobileNetworkItem = "mobileNetworkItem";
const sateliteItem = "sateliteItem";
const modbusItem = "modbusItem";
const monitorableLabel = "monitorableLabel";
const addressLabel = "addressLabel";
const baudRateLabel = "baudRateLabel";
const parityLabel = "parityLabel";
const stopBitLabel = "stopBitLabel";
const noneItem = "noneItem";
const evenItem = "evenItem";
const oddItem = "oddItem";
const commandSentMessageTitle = "commandSentMessageTitle";
const deviceConfiguredTitle = "deviceConfiguredTitle";
const failToConfigureMessageTitle = "failToConfigureMessageTitle";
const failToResetMessageTitle = "failToResetMessageTitle";
const bluetoothDisconnectedTitle = "bluetoothDisconnectedTitle";
const bluetoothDisconnectedMessage = "bluetoothDisconnectedMessage";
const reconnectToConfigureMessage = "reconnectToConfigureMessage";
const tryAgainMessage = "tryAgainMessage";
const valueAddress = "valueAddress";
const successfullyResetMessage = "successfullyResetMessage";
const successfullyConnected = "successfullyConnected";
const disconnectedDevice = "disconnectedDevice";
const connectionError = "connectionError";
const reconnectDeviceMessage = "reconnectDeviceMessage";
const publishTitle = "publishTitle";
const youHave = "youHave";
const eventToDownload = "eventToDownload";
const eventsToDownload = "eventsToDownload";
const internetInstable = "internetInstable";
const downloadEventsToPhone = "downloadEventsToPhone";
const downloadEvents = "downloadEvents";
const successMessage = "successMessage";
const allEventsSent = "allEventsSent";
const eventsPublished = "eventsPublished";
const downloadingEvents = "downloadingEvents";
const publishingEvents = "publishingEvents";
const checkingInternet = "checkingInternet";
const checkingMemoryPhone = "checkingMemoryPhone";
const attention = "attention";
const back = "back";
const disconnectEventPage = "disconnectEventPage";
const leaveThePage = "leaveThePage";

/// The correct should use "en" instead of "en_us"
/// and "pt" instead of "pt_br", but due to an
/// iOS issue, we are obligated to use "en"
extension Localization on String {
  static final _t = Translations.from("en", {
    //Login Page
    emailInput: {
      "en": "E-mail",
      "pt": "E-mail",
    },
    passwordInput: {
      "en": "Password",
      "pt": "Senha",
    },
    enterYourEmail: {
      "en": "Enter your e-mail",
      "pt": "Digite seu e-mail",
    },
    enterAValidEmail: {
      "en": "Enter a valid e-mail",
      "pt": "Digite um e-mail válido.",
    },
    enterYourPassword: {
      "en": "Enter your password",
      "pt": "Digite sua senha",
    },
    typePassword: {
      "en": "Type your password",
      "pt": "Digite sua senha",
    },
    typeEmail: {
      "en": "Type your e-mail adress",
      "pt": "Digite seu endereço de e-mail",
    },
    loginFailed: {
      "en": "Fail to login. Enter a valid e-mail and password",
      "pt": "Falha no login. Digite um e-mail e senha válidos",
    },
    enterUserPass: {
      "en": "Enter your e-mail and password",
      "pt": "Insira seu e-mail e senha",
    },
    signInErrorMessageTitle: {
      "en": "Logging Error",
      "pt": "Erro de Logging",
    },
    loginBtn: {
      "en": "Login",
      "pt": "Login",
    },
    signInFailedMessage: {
      "en": "Sign in failed.",
      "pt": "A entrada falhou.",
    },
    incorrectUserMessage: {
      "en": "Incorrect e-mail or password.",
      "pt": "E-mail ou senha incorreta.",
    },
    checkInternetMessage: {
      "en": "Please check your internet connection.",
      "pt": "Por favor verifique sua conexão com a internet.",
    },
    unexpectedErrorMessage: {
      "en": "An unexpected error, please try again.",
      "pt": "Um erro inexperado, por favor tente novamente.",
    },
    //Scan Page
    stopBtn: {
      "en": "STOP",
      "pt": "PARAR",
    },
    scanBtn: {
      "en": "SCAN",
      "pt": "ESCANEAR",
    },
    logoutBtn: {
      "en": "LOGOUT",
      "pt": "SAIR",
    },
    searchingTitle: {
      "en": "Scanning for devices...",
      "pt": "Procurando dispositivos...",
    },
    deviceListTitle: {
      "en": "Devices",
      "pt": "Dispositivos",
    },
    scanToStartTitle: {
      "en": "Press scan to start",
      "pt": "Comece com ESCANEAR",
    },
    configureTitle: {
      "en": "Configure a device",
      "pt": "Configurar dispositivo",
    },
    bluetoothOff: {
      "en": "Activate bluetooth\nto scan for devices",
      "pt": "Ative o bluetooth para \nencontrar dispositivos",
    },
    clickScan: {
      "en": "Click scan to start\nscanning devices",
      "pt": "Clique em escanear para iniciar\na pesquisa por dispositivos.",
    },
    noDevicesYet: {
      "en": "No devices found yet",
      "pt": "Nenhum dispositivo foi encontrado ainda",
    },
    resetDevice: {
      "en": "Reset Device?",
      "pt": "Reiniciar Dispositivo?",
    },
    dataLost: {
      "en": "All data will be lost, are you sure want to reset the device?",
      "pt": "Todos os dados serão perdidos, tem certeza que deseja reiniciar o dispositivo?",
    },
    backMessage: {
      "en": "Your device has been successfully configured. Click Disconnect to be able to use it or Ok to continue on the Devices Configuration screen.",
      "pt": "Seu dispositivo foi configurado com sucesso. Clique em Desconectar para poder utilizá-lo ou em Ok para continuar na tela de Configuração de Dispositivos.",
    },
    disconnect: {
      "en": "DISCONNECT",
      "pt": "DESCONECTAR",
    },
    yes: {
      "en": "YES",
      "pt": "SIM",
    },
    no: {
      "en": "NO",
      "pt": "NÃO",
    },
    ok: {
      "en": "OK",
      "pt": "OK",
    },
    //Device Page
    save: {
      "en": "SAVE",
      "pt": "SALVAR",
    },
    reset: {
      "en": "RESET",
      "pt": "REINICIAR",
    },
    connecting: {
      "en": "Connecting...",
      "pt": "Conectando...",
    },
    events: {
      "en": "Events",
      "pt": "Eventos",
    },
    config: {
      "en": "Configuration",
      "pt": "Configuração",
    },
    error: {
      "en": "Error!",
      "pt": "Erro!",
    },
    enterAddressValue: {
      "en": "Enter an Address value",
      "pt": "Digite um valor de endereço",
    },
    enterValidAddressValue: {
      "en": "Enter a valid Address value",
      "pt": "Digite um valor de endereço válido",
    },
    configureDeviceTitle: {
      "en": "Configure device",
      "pt": "Configurar dispositivo",
    },
    projectLabel: {
      "en": "Project:",
      "pt": "Projeto:",
    },
    noProjectItem: {
      "en": "No Project",
      "pt": "Nenhum Projeto",
    },
    operationLabel: {
      "en": "Operations:",
      "pt": "Operações:",
    },
    noOperationItem: {
      "en": "No Operation",
      "pt": "Nenhuma Operação",
    },
    communicationModeLabel: {
      "en": "Communication Mode:",
      "pt": "Modo de Comunicação:",
    },
    timezoneLabel: {
      "en": "Timezone (UTC):",
      "pt": "Fuso Horário (UTC):",
    },
    batteryAlarmLabel: {
      "en": "Battery Threshold alarm: ",
      "pt": "Alarme de Limite de bateria: ",
    },
    mobileNetworkItem: {
      "en": "Mobile Network",
      "pt": "Internet Móvel",
    },
    sateliteItem: {
      "en": "Satelite",
      "pt": "Satélite",
    },
    modbusItem: {
      "en": "Modbus",
      "pt": "Modbus",
    },
    monitorableLabel: {
      "en": "Monitorable:",
      "pt": "Monitorável:",
    },
    addressLabel: {
      "en": "Address:",
      "pt": "Endereço:",
    },
    baudRateLabel: {
      "en": "Baud Rate:",
      "pt": "Taxa de Transmissão:",
    },
    parityLabel: {
      "en": "Parity:",
      "pt": "Paridade:",
    },
    stopBitLabel: {
      "en": "Stop Bit:",
      "pt": "Bit de Parada:",
    },
    noneItem: {
      "en": "NONE",
      "pt": "NENHUM",
    },
    evenItem: {
      "en": "EVEN",
      "pt": "PAR",
    },
    oddItem: {
      "en": "ODD",
      "pt": "ÍMPAR",
    },
    commandSentMessageTitle: {
      "en": "Command sent!",
      "pt": "Comando enviado!",
    },
    deviceConfiguredTitle: {
      "en": "Successfully configured!",
      "pt": "Configurado com sucesso!",
    },
    failToConfigureMessageTitle: {
      "en": "Fail to configure!",
      "pt": "Falha para configurar!",
    },
    failToResetMessageTitle: {
      "en": "Fail to Reset!",
      "pt": "Falha para Reinicializar!",
    },
    bluetoothDisconnectedTitle: {
      "en": "Bluetooth Disconnected!",
      "pt": "Bluetooth Desconectado!",
    },
    bluetoothDisconnectedMessage: {
      "en": "Turn on the Bluetooth and start again",
      "pt": "Ligue o Bluetooth comece novamente",
    },
    reconnectToConfigureMessage: {
      "en": "Reconnect the device and try again.",
      "pt": "Reconecte o dispositivo e tente novamente.",
    },
    tryAgainMessage: {
      "en": "Try again. If the error persists, reconnect with the device.",
      "pt": "Tente novamente. Se o erro persistir, reconecte com o dispositivo.",
    },
    valueAddress: {
      "en": "This value must be between 1 and 247",
      "pt": "O valor deve ser entre 1 e 247",
    },

    //Reset Page
    successfullyResetMessage: {
      "en": "Successfully Reseted!",
      "pt": "Reinicializado com Sucesso!",
    },
    successfullyConnected: {
      "en": "Device Connected!",
      "pt": "Dispositivo Conectado!",
    },
    disconnectedDevice: {
      "en": "Disconnected Device",
      "pt": "Dispositivo Desconectado",
    },
    connectionError: {
      "en": "Connection Error!",
      "pt": "Erro de conexão!",
    },
    reconnectDeviceMessage: {
      "en": "Reconnect device and try again.",
      "pt": "Reconecte o dispositivo e tente novamente.",
    },

    //Publish Page
    publishTitle: {
      "en": "Publish events",
      "pt": "Publicar eventos",
    },
    youHave: {
      "en": "You have ",
      "pt": "Você possui ",
    },
    eventToDownload: {
      "en": " new event to download.",
      "pt": " novo evento para baixar.",
    },
    eventsToDownload: {
      "en": " new events to download.",
      "pt": " novos eventos para baixar.",
    },
    internetInstable: {
      "en": "Your internet seems unstable to try to publish the events.",
      "pt": "Sua internet parece instável para tentar publicar os eventos.",
    },
    downloadEventsToPhone: {
      "en": "All events were written on phone memory. To avoid problems, they will be published automatically as soon as the internet is fully established. Back to continue your operation.",
      "pt": "Todos os eventos foram gravados na memória do celular. Para evitar problemas, eles serão publicados automaticamente assim que a internet estiver completamente estabelecida. Volte para continuar sua operação.",
    },
    downloadEvents: {
      "en": "Download events",
      "pt": "Baixar eventos",
    },
    successMessage: {
      "en": "Success!",
      "pt": "Sucesso!",
    },
    allEventsSent: {
      "en": "All events sent to server.",
      "pt": "Todos eventos enviados para o servidor.",
    },
    eventsPublished: {
      "en": "All events have already been published, there are no pending events.",
      "pt": "Todos os eventos já foram publicados, não há eventos pendentes.",
    },
    downloadingEvents: {
      "en": "Downloading events, please wait...",
      "pt": "Baixando eventos, por favor aguarde.",
    },
    publishingEvents: {
      "en": "Publishing Events, please wait...",
      "pt": "Publicando eventos, por favor aguarde.",
    },
    checkingInternet: {
      "en": "Checking Internet, please wait...",
      "pt": "Checando Internet, por favor aguarde.",
    },
    checkingMemoryPhone: {
      "en": "Checking Phone Memory, please wait...",
      "pt": "Checando Memória do Celular, por favor aguarde.",
    },
    attention: {
      "en": "Attention",
      "pt": "Atenção",
    },
    disconnectEventPage: {
      "en": "Disconnect",
      "pt": "Desconectar",
    },
    back: {
      "en": "BACK",
      "pt": "VOLTAR",
    },
    leaveThePage: {
      "en": "Leaving this page while download is active may result in the loss of events.",
      "pt": "Sair desta página enquanto o download está ativo pode resultar na perda de eventos.",
    },
  });

  String get i18n => localize(this, _t);

  String fill(List<Object> params) => localizeFill(this, params);

  String plural(int value) => localizePlural(value, this, _t);
}