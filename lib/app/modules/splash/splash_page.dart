import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  /// -----------------------------------------------------------------------///
  /// initState:
  /// A method called once when the stateful widget is inserted in the widget
  /// tree, used to initialize data, properties and any other object that
  /// could change the data on this widget.
  @override
  void initState() {
    super.initState();
  }

  /// -----------------------------------------------------------------------///
  /// Widget build - Main Login Page Content
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 3,
        navigateAfterSeconds: Future.delayed(const Duration(seconds: 1), () {
           // Navigator.pushReplacementNamed(context, '/home');
          Modular.to.navigate('/home');
         }),
        image: Image.asset(
          'lib/assets/images/gdsplashlogo.png',
        ),
        backgroundColor: Color(0xffFFC300),

        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 60.0,
        loaderColor: Colors.white);
  }

  /// -----------------------------------------------------------------------///
  /// The framework calls this method when this State object will never build
  /// again. This stage of the lifecycle is terminal: there is no way to remount
  /// a State object that has been disposed.
  @override
  void dispose() {
    super.dispose();
  }
}
