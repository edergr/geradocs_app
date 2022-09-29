import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:geradocs/app/utils/appLifecycleController.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class AppWidget extends StatefulWidget {
  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> with WidgetsBindingObserver {
  AppLifecycleController _lifecycleController = AppLifecycleController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        /// The correct should use ("en", "US") and ("pt", "BR"),
        /// but due to an iOS issue, we are obligated to use
        /// ("en") and ("pt")
        const Locale('en'),
        const Locale('pt'),
      ],
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Color(0xff4eb272),
        ),
        // primarySwatch: Colors.green,
      ),
      initialRoute: '/',
    ).modular();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    _lifecycleController.onAppLifecycleChange(state);
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);
    super.dispose();
  }
}