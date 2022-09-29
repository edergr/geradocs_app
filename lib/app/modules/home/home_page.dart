import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:i18n_extension/i18n_widget.dart';
import 'package:geradocs/app/internationalization/i18n.dart';
import 'package:geradocs/app/modules/home/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  StreamSubscription? _loginErrorSubscription;
  bool isLoading = false;
  bool isSubmitted = false;

  /// -----------------------------------------------------------------------///
  /// initState:
  /// A method called once when the stateful widget is inserted in the widget
  /// tree, used to initialize data, properties and any other object that
  /// could change the data on this widget.
  @override
  void initState() {
    super.initState();
    _listenToLoginErrors();
  }

  /// -----------------------------------------------------------------------///
  /// Widget build - Main Login Page Content
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Scaffold(
          backgroundColor: Color(0xffFFC300),
          body: I18n(
            child: Column(
              children: [
                SafeArea(
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 10.0,
                    ),
                    height: 80,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "GeraDocs4Dev...",
                          style: TextStyle(
                            color: Color(0xff645844),
                            fontSize: 40.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 10.0,
                      right: 10.0,
                      bottom: 10.0,
                    ),
                    padding: EdgeInsets.only(
                      top: 30.0,
                      left: 20.0,
                      right: 20.0,
                    ),
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          30.0,
                        ),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(167, 48),
                              textStyle: TextStyle(fontSize: 25.0),
                              primary: Color(0xff645844),
                              elevation: 5),
                          onPressed: () {
                            Modular.to.navigate('/checa');
                          },
                          child: Text('ChecaDoc'),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(167, 48),
                              textStyle: TextStyle(fontSize: 25.0),
                              primary: Color(0xff645844),
                              elevation: 5),
                          onPressed: () {
                            Modular.to.navigate('/gera');
                          },
                          child: Text('GeraDoc'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  /// -----------------------------------------------------------------------///
  /// Widget flushbar:
  /// Responsible to send log messages to user
  // Widget flushbar(String message) {
  //   return Flushbar(
  //     title: signInErrorMessageTitle.i18n,
  //     message: message,
  //     duration: Duration(seconds: 3),
  //     margin: EdgeInsets.all(16.0),
  //     backgroundColor: Color(0xff666666),
  //     padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
  //     borderRadius: BorderRadius.circular(50),
  //   )..show(context);
  // }

  /// -----------------------------------------------------------------------///
  /// Message and Errors Alert: _listenToLoginErrors
  /// Responsible to show warnings and error messages when the user tries to
  /// sign in.
  _listenToLoginErrors() {
    String message;
    _loginErrorSubscription =
        controller.loginErrorOutput.listen((errorMessage) {
      setState(() {
        isLoading = false;
      });
      switch (errorMessage) {
        case "Unexpected Error":
          message = unexpectedErrorMessage.i18n;
          // flushbar(message);
          print(message);
          break;
        case "No Internet":
          message = checkInternetMessage.i18n;
          // flushbar(message);
          print(message);
          break;
        default:
          break;
      }
    });
  }

  /// -----------------------------------------------------------------------///
  /// The framework calls this method when this State object will never build
  /// again. This stage of the lifecycle is terminal: there is no way to remount
  /// a State object that has been disposed.
  @override
  void dispose() {
    controller.onWidgetDispose();
    _loginErrorSubscription?.cancel();
    super.dispose();
  }
}
