import 'package:PokeScientists/App/Views/Pages/home.page.dart';
import 'package:PokeScientists/App/controller/main_navigation.controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => MainNavigationController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, __) => HomePage()),
        // ModularRouter('/AlanTuring', child: (_, args) => AlanTuring()),
      ];
}
