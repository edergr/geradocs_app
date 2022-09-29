// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gera_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GeraController on _GeraControllerBase, Store {
  final _$quantAtom = Atom(name: '_GeraControllerBase.quant');

  @override
  double get quant {
    _$quantAtom.reportRead();
    return super.quant;
  }

  @override
  set quant(double value) {
    _$quantAtom.reportWrite(value, super.quant, () {
      super.quant = value;
    });
  }

  final _$imeiAtom = Atom(name: '_GeraControllerBase.imei');

  @override
  bool get imei {
    _$imeiAtom.reportRead();
    return super.imei;
  }

  @override
  set imei(bool value) {
    _$imeiAtom.reportWrite(value, super.imei, () {
      super.imei = value;
    });
  }

  final _$eanAtom = Atom(name: '_GeraControllerBase.ean');

  @override
  bool get ean {
    _$eanAtom.reportRead();
    return super.ean;
  }

  @override
  set ean(bool value) {
    _$eanAtom.reportWrite(value, super.ean, () {
      super.ean = value;
    });
  }

  final _$cnpjAtom = Atom(name: '_GeraControllerBase.cnpj');

  @override
  bool get cnpj {
    _$cnpjAtom.reportRead();
    return super.cnpj;
  }

  @override
  set cnpj(bool value) {
    _$cnpjAtom.reportWrite(value, super.cnpj, () {
      super.cnpj = value;
    });
  }

  final _$cpfAtom = Atom(name: '_GeraControllerBase.cpf');

  @override
  bool get cpf {
    _$cpfAtom.reportRead();
    return super.cpf;
  }

  @override
  set cpf(bool value) {
    _$cpfAtom.reportWrite(value, super.cpf, () {
      super.cpf = value;
    });
  }

  final _$rgAtom = Atom(name: '_GeraControllerBase.rg');

  @override
  bool get rg {
    _$rgAtom.reportRead();
    return super.rg;
  }

  @override
  set rg(bool value) {
    _$rgAtom.reportWrite(value, super.rg, () {
      super.rg = value;
    });
  }

  final _$titAtom = Atom(name: '_GeraControllerBase.tit');

  @override
  bool get tit {
    _$titAtom.reportRead();
    return super.tit;
  }

  @override
  set tit(bool value) {
    _$titAtom.reportWrite(value, super.tit, () {
      super.tit = value;
    });
  }

  final _$showButtonAtom = Atom(name: '_GeraControllerBase.showButton');

  @override
  bool get showButton {
    _$showButtonAtom.reportRead();
    return super.showButton;
  }

  @override
  set showButton(bool value) {
    _$showButtonAtom.reportWrite(value, super.showButton, () {
      super.showButton = value;
    });
  }

  final _$binaryAtom = Atom(name: '_GeraControllerBase.binary');

  @override
  int get binary {
    _$binaryAtom.reportRead();
    return super.binary;
  }

  @override
  set binary(int value) {
    _$binaryAtom.reportWrite(value, super.binary, () {
      super.binary = value;
    });
  }

  final _$_GeraControllerBaseActionController =
      ActionController(name: '_GeraControllerBase');

  @override
  dynamic calculateBinary(bool state, int value) {
    final _$actionInfo = _$_GeraControllerBaseActionController.startAction(
        name: '_GeraControllerBase.calculateBinary');
    try {
      return super.calculateBinary(state, value);
    } finally {
      _$_GeraControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic generatePressed() {
    final _$actionInfo = _$_GeraControllerBaseActionController.startAction(
        name: '_GeraControllerBase.generatePressed');
    try {
      return super.generatePressed();
    } finally {
      _$_GeraControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
quant: ${quant},
imei: ${imei},
ean: ${ean},
cnpj: ${cnpj},
cpf: ${cpf},
rg: ${rg},
tit: ${tit},
showButton: ${showButton},
binary: ${binary}
    ''';
  }
}
