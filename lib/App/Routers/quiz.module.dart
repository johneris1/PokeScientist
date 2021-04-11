import 'package:PokeScientists/App/Views/Pages/perguntas.dificil.dart';
import 'package:PokeScientists/App/Views/Pages/perguntas.facil.dart';
import 'package:PokeScientists/App/Views/Pages/perguntas.medio.dart';
import 'package:PokeScientists/App/Views/Pages/quiz.page.dart';
import 'package:PokeScientists/App/controller/main_navigation.controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class QuizModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => MainNavigationController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, __) => QuizPage()),
        ModularRouter('/facil', child: (_, args) => QuizFacil()),
        ModularRouter('/dificil', child: (_, args) => QuizDificil()),
        ModularRouter('/medio', child: (_, args) => QuizMedio()),
      ];
}
