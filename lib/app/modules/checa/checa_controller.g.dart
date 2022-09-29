// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checa_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ChecaController on _ChecaControllerBase, Store {
  final _$documentAtom = Atom(name: '_ChecaControllerBase.document');

  @override
  String get document {
    _$documentAtom.reportRead();
    return super.document;
  }

  @override
  set document(String value) {
    _$documentAtom.reportWrite(value, super.document, () {
      super.document = value;
    });
  }

  final _$textResponseAtom = Atom(name: '_ChecaControllerBase.textResponse');

  @override
  String get textResponse {
    _$textResponseAtom.reportRead();
    return super.textResponse;
  }

  @override
  set textResponse(String value) {
    _$textResponseAtom.reportWrite(value, super.textResponse, () {
      super.textResponse = value;
    });
  }

  final _$documentResponseAtom =
      Atom(name: '_ChecaControllerBase.documentResponse');

  @override
  String get documentResponse {
    _$documentResponseAtom.reportRead();
    return super.documentResponse;
  }

  @override
  set documentResponse(String value) {
    _$documentResponseAtom.reportWrite(value, super.documentResponse, () {
      super.documentResponse = value;
    });
  }

  final _$_ChecaControllerBaseActionController =
      ActionController(name: '_ChecaControllerBase');

  @override
  dynamic onChangeDoc(String document) {
    final _$actionInfo = _$_ChecaControllerBaseActionController.startAction(
        name: '_ChecaControllerBase.onChangeDoc');
    try {
      return super.onChangeDoc(document);
    } finally {
      _$_ChecaControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
document: ${document},
textResponse: ${textResponse},
documentResponse: ${documentResponse}
    ''';
  }
}
