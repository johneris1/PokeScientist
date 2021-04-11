import 'package:PokeScientists/App/Views/Widgets/button.difficulty.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPage createState() => _QuizPage();
}

class _QuizPage extends State<QuizPage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SingleChildScrollView(
          padding: const EdgeInsets.all(25),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(height: 70),
                Text(
                  'DIFICULDADES:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xff223066),
                      fontSize: 21,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Quicksand'),
                ),
                SizedBox(
                  height: 35.0,
                ),
                ButtonDifficulty(
                  color: Colors.blue[300],
                  difficulty: 'Fácil',
                  onPressed: () {
                    Modular.to.pushNamed('quiz/facil');
                  },
                ),
                SizedBox(
                  height: 30.0,
                ),
                ButtonDifficulty(
                  color: Colors.blue[400],
                  difficulty: 'Medio',
                  onPressed: () {
                    Modular.to.pushNamed('quiz/medio');
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                ButtonDifficulty(
                  color: Colors.blue,
                  difficulty: 'Dificil',
                  onPressed: () {
                    Modular.to.pushNamed('quiz/dificil');
                  },
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
