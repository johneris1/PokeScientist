import 'package:PokeScientists/App/Views/Pages/cientistas/ada.lovelace.dart';
import 'package:PokeScientists/App/Views/Pages/cientistas/alan.turing.dart';
import 'package:PokeScientists/App/Views/Pages/busca.page.dart';
import 'package:PokeScientists/App/Views/Pages/cientistas/dennis.ritchie.dart';
import 'package:PokeScientists/App/Views/Pages/cientistas/donald.knuth.dart';
import 'package:PokeScientists/App/Views/Pages/cientistas/grace.murray.dart';
import 'package:PokeScientists/App/Views/Pages/cientistas/linus.torvalds.dart';
import 'package:PokeScientists/App/Views/Pages/cientistas/ray.tom.dart';
import 'package:PokeScientists/App/Views/Pages/cientistas/tim.berners.dart';
import 'package:PokeScientists/App/Views/Pages/cientistas/vint.cerf.dart';

import 'package:PokeScientists/App/controller/main_navigation.controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class BuscarModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => MainNavigationController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, __) => ListPersonPage()),
        ModularRouter('/AlanTuring', child: (_, args) => AlanTuring()),
        ModularRouter('/DonaldKnuth', child: (_, args) => DonaldKnuth()),
        ModularRouter('/AdaLovelace', child: (_, args) => AdaLovelace()),
        ModularRouter('/GraceHopper', child: (_, args) => GraceHopper()),
        ModularRouter('/VintCerf', child: (_, args) => VintCerf()),
        ModularRouter('/TimBerners-Lee', child: (_, args) => TimBerners()),
        ModularRouter('/RayTomlinson', child: (_, args) => RayTomlinson()),
        ModularRouter('/DennisRitchie', child: (_, args) => DenisRitchie()),
        ModularRouter('/LinusTorvalds', child: (_, args) => LinusTorvalds()),
      ];
}
