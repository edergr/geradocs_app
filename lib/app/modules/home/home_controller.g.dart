// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  Computed<bool>? _$emailIsValidComputed;

  @override
  bool get emailIsValid =>
      (_$emailIsValidComputed ??= Computed<bool>(() => super.emailIsValid,
              name: '_HomeControllerBase.emailIsValid'))
          .value;
  Computed<bool>? _$passwordIsValidComputed;

  @override
  bool get passwordIsValid =>
      (_$passwordIsValidComputed ??= Computed<bool>(() => super.passwordIsValid,
              name: '_HomeControllerBase.passwordIsValid'))
          .value;

  final _$emailAtom = Atom(name: '_HomeControllerBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$passwordAtom = Atom(name: '_HomeControllerBase.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic onChangeEmail(String email) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.onChangeEmail');
    try {
      return super.onChangeEmail(email);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic onChangePassword(String password) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.onChangePassword');
    try {
      return super.onChangePassword(password);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
password: ${password},
emailIsValid: ${emailIsValid},
passwordIsValid: ${passwordIsValid}
    ''';
  }
}
