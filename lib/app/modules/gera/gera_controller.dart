import 'dart:convert';

import 'package:geradocs/app/utils/classes.dart';
import 'package:geradocs/app/utils/generateDocs.dart';
import 'package:mobx/mobx.dart';

part 'gera_controller.g.dart';

class GeraController = _GeraControllerBase with _$GeraController;

abstract class _GeraControllerBase with Store {
  @observable
  double quant = 1;
  @observable
  bool imei = false;
  @observable
  bool ean = false;
  @observable
  bool cnpj = false;
  @observable
  bool cpf = false;
  @observable
  bool rg = false;
  @observable
  bool tit = false;
  @observable
  bool showButton = false;
  @observable
  int binary = 0;

  @action
  calculateBinary(bool state, int value) {
    state ? binary = binary + value : binary = binary - value;
    showButton = binary == 0 ? false : true;
  }

  @action
  generatePressed() {
    var docImei;
    var docEan;
    var docCnpj;
    var docCpf;
    var docRg;
    var docTit;
    List<Documents> docList = [];

    for (var i = 0; i < quant; i++) {
      if (imei) docImei = generateImeis(random);
      if (ean) docEan = generateEans(random);
      if (cnpj) docCnpj = generateCnpjs(random);
      if (cpf) docCpf = generateCpfs(random);
      if (rg) docRg = generateRgs(random);
      if (tit) docTit = generateTits(random);

      Documents doc = Documents(
        imei: docImei,
        ean: docEan,
        cnpj: docCnpj,
        cpf: docCpf,
        rg: docRg,
        tit: docTit,
      );

      docList.add(doc);
    }
    print(jsonEncode(ListDocuments(documents: docList).toJson()));
  }
}
