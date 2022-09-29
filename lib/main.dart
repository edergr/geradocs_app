// @dart=2.9
import 'package:auto_orientation/auto_orientation.dart';
import 'package:flutter/material.dart';
import 'package:geradocs/app/app_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:geradocs/app/app_widget.dart';

void _definePortraitOrientation() {
  AutoOrientation.portraitUpMode();
}

void main() {
  runApp(ModularApp(
    module: AppModule(),
    child: AppWidget(),
  ));
  _definePortraitOrientation();
}
