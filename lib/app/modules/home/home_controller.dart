import 'dart:async';
import 'dart:io';
import 'package:mobx/mobx.dart';
import 'package:rxdart/rxdart.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  /// -----------------------------------------------------------------------///
  /// [PublishSubject] to indicate any connection errors or status.
  PublishSubject<String> _loginErrorSubject = PublishSubject();

  Stream<String> get loginErrorOutput => _loginErrorSubject.stream;

  Sink<String> get loginErrorInput => _loginErrorSubject.sink;

  bool failToLogin = false;

  /// -----------------------------------------------------------------------///
  /// User email input.
  @observable
  late String email;

  /// -----------------------------------------------------------------------///
  /// User password input
  @observable
  late String password;

  /// -----------------------------------------------------------------------///
  /// Form validation
  @computed
  bool get emailIsValid => validateEmail() == true;

  /// -----------------------------------------------------------------------///
  /// Form validation
  @computed
  bool get passwordIsValid => validatePassword() == true;

  /// -----------------------------------------------------------------------///
  /// Retrieves typed e-mail value
  @action
  onChangeEmail(String email) {
    this.email = email;
  }

  /// -----------------------------------------------------------------------///
  /// Retrieves typed password value
  @action
  onChangePassword(String password) {
    this.password = password;
  }

  /// -----------------------------------------------------------------------///
  /// Validates user email input.
  bool validateEmail() {
    if (email.isEmpty) {
      return false;
    } else if (!email.contains("@")) {
      return false;
    }
    return true;
  }

  /// -----------------------------------------------------------------------///
  /// Validate password field.
  bool validatePassword() {
    if (password.isEmpty) {
      return false;
    }
    return true;
  }

  /// -----------------------------------------------------------------------///
  /// Check Internet.
  checkInternet() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      }
    } on SocketException catch (_) {
      return false;
    }
  }

  /// -----------------------------------------------------------------------///
  /// Widget Dispose
  onWidgetDispose() {
    _loginErrorSubject.drain();
  }
}
