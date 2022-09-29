import 'dart:math';

var random = new Random();

generateImeis(Random random) {
  int randomNumber1 = random.nextInt(10000000);
  int randomNumber2 = random.nextInt(10000000);
  String concatNum =
      (randomNumber1.toString() + randomNumber2.toString()).padLeft(14, '0');
  List<int> docArray = concatNum.split('').map(int.parse).toList();
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
  var imei = (concatNum +
      ((10 - (sum % 10)) == 10 ? 0 : (10 - (sum % 10))).toString());
  return imei;
}

generateEans(Random random) {
  int randomNumber1 = random.nextInt(1000000);
  int randomNumber2 = random.nextInt(1000000);
  String concatNum =
      (randomNumber1.toString() + randomNumber2.toString()).padLeft(12, '0');
  List<int> docArray = concatNum.split('').map(int.parse).toList();
  var sum = 0;
  for (var i = docArray.length - 1; i >= 0; i--) {
    if (i % 2 == 0) {
      sum += docArray[i];
    } else {
      sum += docArray[i] * 3;
    }
  }
  var ean = (concatNum + (((((sum / 10).floor()) + 1) * 10) - sum).toString());
  return ean;
}

generateCnpjs(Random random) {
  int randomNumber1 = random.nextInt(1000000);
  int randomNumber2 = random.nextInt(1000000);
  String concatNum =
      (randomNumber1.toString() + randomNumber2.toString()).padLeft(12, '0');
  List<int> docArray = concatNum.split('').map(int.parse).toList();

  List<int> firstArrayForFirstCode = docArray.sublist(0, 4);
  List<int> secondArrayForFirstCode = docArray.sublist(4, 12);
  var sum1_1 = 0;
  for (var j = 0; j < 4; j++) {
    sum1_1 += (firstArrayForFirstCode[j] * (5 - j));
  }
  var sum1_2 = 0;
  for (var k = 0; k < 8; k++) {
    sum1_2 += (secondArrayForFirstCode[k] * (9 - k));
  }
  var sum1Factor = (sum1_1 + sum1_2) % 11;
  var sum1 = 0;
  sum1Factor < 2 ? sum1 = 0 : sum1 = 11 - sum1Factor;
  docArray.add(sum1);

  List<int> firstArrayForSecondCode = docArray.sublist(0, 5);
  List<int> secondArrayForSecondCode = docArray.sublist(5, 13);
  var sum2_1 = 0;
  for (var l = 0; l < 5; l++) {
    sum2_1 += (firstArrayForSecondCode[l] * (6 - l));
  }
  var sum2_2 = 0;
  for (var m = 0; m < 8; m++) {
    sum2_2 += (secondArrayForSecondCode[m] * (9 - m));
  }
  var sum2Factor = (sum2_1 + sum2_2) % 11;
  var sum2 = 0;
  sum2Factor < 2 ? sum2 = 0 : sum2 = 11 - sum2Factor;

  var cnpj = (concatNum + sum1.toString() + sum2.toString());
  return cnpj;
}

generateCpfs(Random random) {
  int randomNumber1 = random.nextInt(100000);
  int randomNumber2 = random.nextInt(10000);
  String concatNum =
      (randomNumber1.toString() + randomNumber2.toString()).padLeft(9, '0');
  List<int> docArray = concatNum.split('').map(int.parse).toList();

  var sum1 = 0;
  for (var i = 0; i < 9; i++) {
    sum1 += (docArray[i] * (10 - i));
  }
  docArray.add((11 - (sum1 % 11)) >= 10 ? 0 : (11 - (sum1 % 11)));
  var sum2 = 0;
  for (var l = 0; l < 10; l++) {
    sum2 += (docArray[l] * (11 - l));
  }
  docArray.add((11 - (sum2 % 11)) >= 10 ? 0 : (11 - (sum2 % 11)));

  var cpf = (concatNum +
      ((11 - (sum1 % 11)) >= 10 ? 0 : (11 - (sum1 % 11))).toString() +
      ((11 - (sum2 % 11)) >= 10 ? 0 : (11 - (sum2 % 11))).toString());
  return cpf;
}

generateRgs(Random random) {
  int randomNumber1 = random.nextInt(10000);
  int randomNumber2 = random.nextInt(10000);
  String concatNum =
      (randomNumber1.toString() + randomNumber2.toString()).padLeft(8, '0');
  List<int> docArray = concatNum.split('').map(int.parse).toList();
  var sum = 0;
  for (var i = 0; i < 8; i++) {
    sum += (docArray[i] * (2 + i));
  }

  var rg = (concatNum +
      ((11 - (sum % 11)) == 10
              ? 'X'
              : (11 - (sum % 11)) == 11
                  ? 0
                  : (11 - (sum % 11)))
          .toString());
  return rg;
}

generateTits(Random random) {
  int randomNumber1 = random.nextInt(100000);
  int randomNumber2 = random.nextInt(1000);
  int randomNumber3 = random.nextInt(28) + 1;
  String concatNum = (randomNumber1.toString().padLeft(5, '0') +
      randomNumber2.toString().padLeft(3, '0') +
      randomNumber3.toString().padLeft(2, '0'));
  List<int> docArray = concatNum.split('').map(int.parse).toList();
  var sum1 = 0;
  var sum2 = 0;
  for (var i = 0; i < docArray.length; i++) {
    sum1 += (docArray[i] * (i + 2));
  }
  docArray.add((sum1 % 11) >= 10 ? 0 : (sum1 % 11));
  for (var j = 8; j < docArray.length; j++) {
    sum2 += (docArray[j] * (j - 1));
  }

  var tit = (concatNum +
      ((sum1 % 11) >= 10 ? 0 : (sum1 % 11)).toString() +
      ((sum2 % 11) >= 10 ? 0 : (sum2 % 11)).toString());
  return tit;
}
