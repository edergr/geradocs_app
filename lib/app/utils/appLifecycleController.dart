import 'package:flutter/cupertino.dart';
import 'package:rxdart/rxdart.dart';

/// Class to receive app state changes during all app usage and publish it to every class
/// that listen to [appLifecycleSubject].
class AppLifecycleController {
  static final AppLifecycleController _instance =
      AppLifecycleController.internal();

  PublishSubject<AppLifecycleState> appLifecycleSubject = PublishSubject();

  Stream<AppLifecycleState> get outAppLifecycle => appLifecycleSubject.stream;

  AppLifecycleController.internal();

  factory AppLifecycleController() => _instance;

  void onAppLifecycleChange(AppLifecycleState state) {
    appLifecycleSubject.add(state);
  }
}
