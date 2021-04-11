import 'package:PokeScientists/App/Views/Pages/ajuda.page.dart';
import 'package:PokeScientists/App/controller/main_navigation.controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AjudaModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => MainNavigationController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, __) => AjudaPage()),
        // ModularRouter('/AlanTuring', child: (_, args) => AlanTuring()),
      ];
}
