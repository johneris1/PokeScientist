//  app_widget.dart

import 'package:PokeScientists/App/Routers/ajuda.module.dart';
import 'package:PokeScientists/App/Routers/busca.module.dart';
import 'package:PokeScientists/App/Routers/home.module.dart';
import 'package:PokeScientists/App/Routers/main_navigation.module.dart';
import 'package:PokeScientists/App/Routers/quiz.module.dart';
import 'package:PokeScientists/App/Views/Pages/boasvindas.page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        builder: (context, child) {
          return ScrollConfiguration(
            behavior: MyBehavior(),
            child: child,
          );
        },
        theme: ThemeData(
          fontFamily: 'Montserrat',
        ),
        initialRoute: "/",
        title: 'PokeScientist',
        navigatorKey: Modular.navigatorKey,
        onGenerateRoute: Modular.generateRoute,
      );
}

// app_module.dart
class AppModule extends MainModule {
  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          Modular.initialRoute,
          child: (_, args) => (BoasVindasPage()),
        ),
        ModularRouter('/main-navigation', module: MainNavigationModule()),
        ModularRouter('/buscar', module: BuscarModule()),
        ModularRouter('/home', module: HomeModule()),
        ModularRouter('/quiz', module: QuizModule()),
        ModularRouter('/ajuda', module: AjudaModule()),
      ];
  List<Bind> get binds => [];
  @override
  Widget get bootstrap => AppWidget();
}
