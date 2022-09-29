import 'package:flutter_modular/flutter_modular.dart';
import 'package:geradocs/app/modules/home/home_controller.dart';
import 'package:geradocs/app/modules/home/home_page.dart';
import 'package:geradocs/app/modules/checa/checa_controller.dart';
import 'package:geradocs/app/modules/checa/checa_page.dart';
import 'package:geradocs/app/modules/gera/gera_controller.dart';
import 'package:geradocs/app/modules/gera/gera_page.dart';
import 'package:geradocs/app/modules/splash/splash_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController()),
        Bind((i) => ChecaController()),
        Bind((i) => GeraController()),
      ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, __) => SplashPage()),
    ChildRoute(
      "/home",
      child: (_, __) => HomePage(),
      transition: TransitionType.upToDown,
    ),
    ChildRoute(
      "/checa",
      child: (_, args) => ChecaPage(),
      transition: TransitionType.upToDown,
    ),
    ChildRoute(
      "/gera",
      child: (_, args) => GeraPage(),
      transition: TransitionType.upToDown,
    ),
  ];
}
