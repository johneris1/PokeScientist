import 'package:PokeScientists/App/Views/Pages/main_navigation.page.dart';
import 'package:PokeScientists/App/controller/main_navigation.controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MainNavigationModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => MainNavigationController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, __) => MainNavigationPage()),
      ];
}
