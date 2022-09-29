import 'package:mobx/mobx.dart';

part 'checa_controller.g.dart';

class ChecaController = _ChecaControllerBase with _$ChecaController;

abstract class _ChecaControllerBase with Store {
  @observable
  String document = "";

  @observable
  String textResponse = "";

  @observable
  String documentResponse = "";

  /// -----------------------------------------------------------------------///
  /// Retrieves typed e-mail value
  @action
  onChangeDoc(String document) {
    switch (document.length) {
      case 15:
        textResponse = "Identificando documento: IMEI...";
        List<int> docArray = document.split('').map(int.parse).toList();
        var sum = 0;
        for (var i = docArray.length - 1; i >= 0; i--) {
          var auxNumber = 0;
          if (i % 2 == 0) {
            sum += docArray[i];
          } else {
            auxNumber = docArray[i] * 2;
            if (auxNumber > 9) {
              while (auxNumber != 0) {
                sum += auxNumber % 10;
                auxNumber = (auxNumber / 10).floor();
              }
            } else {
              sum += auxNumber;
            }
          }
        }
        if (sum % 10 == 0) {
          documentResponse = "Este IMEI é válido!!!";
        } else {
          documentResponse = "IMEI Inválido!!!";
        }
        break;
      case 14:
        textResponse = "Identificando documento: CNPJ...";
        List<int> docArray = document.split('').map(int.parse).toList();
        var firstValidatorCode = docArray[docArray.length - 2];
        List<int> firstArrayForFirstValidation = docArray.sublist(0, 4);
        List<int> secondArrayForFirstValidation = docArray.sublist(4, 12);
        var firstSumForFirstValidation = 0;
        for (var i = 0; i < 4; i++) {
          firstSumForFirstValidation +=
              (firstArrayForFirstValidation[i] * (5 - i));
        }
        var secondSumForFirstValidation = 0;
        for (var j = 0; j < 8; j++) {
          secondSumForFirstValidation +=
              (secondArrayForFirstValidation[j] * (9 - j));
        }
        var sumForFirstValidation =
            firstSumForFirstValidation + secondSumForFirstValidation;
        var sumDividedByFactorForFirstValidation = sumForFirstValidation % 11;
        var fisrtValidation = false;
        var firstCodeToValidate = 0;
        sumDividedByFactorForFirstValidation < 2
            ? firstCodeToValidate = 0
            : firstCodeToValidate = 11 - sumDividedByFactorForFirstValidation;

        if (firstCodeToValidate == firstValidatorCode) {
          fisrtValidation = true;
        }

        var secondValidatorCode = docArray[docArray.length - 1];
        List<int> firstArrayForSecondValidation = docArray.sublist(0, 5);
        List<int> secondArrayForSecondValidation = docArray.sublist(5, 13);
        var firstSumForSecondValidation = 0;
        for (var k = 0; k < 5; k++) {
          firstSumForSecondValidation +=
              (firstArrayForSecondValidation[k] * (6 - k));
        }
        var secondSumForSecondValidation = 0;
        for (var l = 0; l < 8; l++) {
          secondSumForSecondValidation +=
              (secondArrayForSecondValidation[l] * (9 - l));
        }
        var sumForSecondValidation =
            firstSumForSecondValidation + secondSumForSecondValidation;
        var sumDividedByFactorForSecondValidation = sumForSecondValidation % 11;
        var secondValidation = false;
        var secondCodeToValidate = 0;
        sumDividedByFactorForSecondValidation < 2
            ? secondCodeToValidate = 0
            : secondCodeToValidate = 11 - sumDividedByFactorForSecondValidation;
        if (secondCodeToValidate == secondValidatorCode) {
          secondValidation = true;
        }
        if (fisrtValidation == true && secondValidation == true) {
          documentResponse = "Este CNPJ é válido!!!";
        } else {
          documentResponse = "CNPJ Inválido!!!";
        }

        break;
      case 13:
        textResponse = "Identificando documento: Código EAN...";
        List<int> docArray = document.split('').map(int.parse).toList();
        var validatorCode = docArray[docArray.length - 1];
        var sum = 0;
        for (var i = 0; i < docArray.length - 1; i++) {
          if (i % 2 == 0) {
            sum += docArray[i];
          } else {
            sum += docArray[i] * 3;
          }
        }
        var roundedValue = (sum / 10).floor();
        var codeToValidate = (((roundedValue + 1) * 10) - sum);
        if ((codeToValidate == validatorCode) ||
            (codeToValidate == 10 && validatorCode == 0)) {
          documentResponse = "Este EAN é válido!!!";
        } else {
          documentResponse = "EAN Inválido!!!";
        }
        break;
      case 12:
        textResponse = "Identificando documento: Título de Leitor...";
        List<int> docArray = document.split('').map(int.parse).toList();
        var fisrtValidation = false;
        var secondValidation = false;
        var firstValidatorCode = docArray[docArray.length - 2];
        var secondValidatorCode = docArray[docArray.length - 1];
        var firstSum = 0;
        for (var i = 0; i < docArray.length - 2; i++) {
          firstSum += (docArray[i] * (i + 2));
        }
        var firstCodeToValidate = firstSum % 11;
        if ((firstCodeToValidate == firstValidatorCode) ||
            (firstCodeToValidate >= 10 && firstValidatorCode == 0)) {
          fisrtValidation = true;
        }
        var secondSum = 0;
        for (var j = 8; j < docArray.length - 1; j++) {
          secondSum += (docArray[j] * (j - 1));
        }
        var secondCodeToValidate = secondSum % 11;
        if ((secondCodeToValidate == secondValidatorCode) ||
            (secondCodeToValidate >= 10 && secondValidatorCode == 0)) {
          secondValidation = true;
        }
        if (fisrtValidation == true && secondValidation == true) {
          var codEstado = document.substring(8, 10);
          var estado = "";
          List arrayEstados = [
            "SP",
            "MG",
            "RJ",
            "RS",
            "BA",
            "PR",
            "CE",
            "PE",
            "SC",
            "GO",
            "MA",
            "PB",
            "PA",
            "ES",
            "PI",
            "RN",
            "AL",
            "MT",
            "MS",
            "DF",
            "SE",
            "AM",
            "RO",
            "AC",
            "AP",
            "RR",
            "TO",
            "Exterior(ZZ)"
          ];
          estado = arrayEstados[int.parse(codEstado) - 1];
          documentResponse =
              "Este Título de Eleitor é válido, inclusive foi emitido em: $estado !!!";
        } else {
          documentResponse = "Título de Eleitor Inválido!!!!!!";
        }
        break;
      case 11:
        textResponse = "Identificando documento: CPF...";
        List<int> docArray = document.split('').map(int.parse).toList();
        var fisrtValidation = false;
        var secondValidation = false;
        var firstValidatorCode = docArray[docArray.length - 2];
        var secondValidatorCode = docArray[docArray.length - 1];
        var firstSum = 0;
        for (var i = 0; i < 9; i++) {
          firstSum += (docArray[i] * (10 - i));
        }
        var firstCodeToValidate = 11 - (firstSum % 11);
        if ((firstCodeToValidate == firstValidatorCode) ||
            (firstCodeToValidate >= 10 && firstValidatorCode == 0)) {
          fisrtValidation = true;
        }
        var secondSum = 0;
        for (var j = 0; j < 10; j++) {
          secondSum += (docArray[j] * (11 - j));
        }
        var secondCodeToValidate = 11 - (secondSum % 11);
        if ((secondCodeToValidate == secondValidatorCode) ||
            (secondCodeToValidate >= 10 && secondValidatorCode == 0)) {
          secondValidation = true;
        }
        if (fisrtValidation == true && secondValidation == true) {
          documentResponse = "Este CPF é válido!!!";
        } else {
          documentResponse = "CPF Inválido!!!";
        }
        break;
      case 9:
        textResponse =
            "Identificando documento: RG...\nPor enquanto validamos apenas os RGs emitidos em SP";
        List<int> docArray =
            document.substring(0, 8).split('').map(int.parse).toList();
        String validatorCode = document.substring(8, 9).toUpperCase();
        var sum = 0;
        for (var i = 0; i < 8; i++) {
          sum += (docArray[i] * (2 + i));
        }
        var codeToValidate = 11 - (sum % 11);
        if ((validatorCode != 'X' &&
                codeToValidate == int.parse(validatorCode)) ||
            (codeToValidate == 10 && validatorCode == 'X') ||
            (codeToValidate == 11 && int.parse(validatorCode) == 0)) {
          documentResponse = "Este RG é válido!!!";
        } else {
          documentResponse = "RG Inválido!!!";
        }
        break;
      default:
        textResponse =
            "Hum... Não estou conseguindo reconhecer este documento. Continue digitando.";
        documentResponse = "";
    }
    this.document = document;
  }
}
