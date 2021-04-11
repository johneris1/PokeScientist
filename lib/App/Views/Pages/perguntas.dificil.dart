import 'package:PokeScientists/App/Views/Widgets/button.difficulty.dart';
import 'package:PokeScientists/App/Views/Widgets/checkbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class QuizDificil extends StatefulWidget {
  @override
  _QuizDificil createState() => _QuizDificil();
}

class _QuizDificil extends State<QuizDificil> {
  bool a1 = false;
  bool a2 = false;
  bool a3 = false;
  bool b1 = false;
  bool b2 = false;
  bool b3 = false;
  bool c1 = false;
  bool c2 = false;
  bool c3 = false;
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                AppBar(
                  leading: IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    color: Color(0xff223066),
                    onPressed: () {
                      Modular.to.pop();
                    },
                  ),
                ),
                SizedBox(height: 7.5),
                Text(
                  'Perguntas:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xff223066),
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Quicksand'),
                ),
                SizedBox(
                  height: 26,
                ),
                Text(
                  'Donald Knuth é Considerado criador de qual campo analítico',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xff223066),
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Quicksand'),
                ),
                SizedBox(height: 16),
                CheckBoxPerguntas(
                  value: a1,
                  title: 'A) Análise de dados',
                  onPressed: (value) {
                    setState(() {
                      a1 = value;

                      b1 = false;
                      c1 = false;
                    });
                  },
                ),
                CheckBoxPerguntas(
                  value: b1,
                  title: 'B) Análise de arquitetura',
                  onPressed: (value) {
                    setState(() {
                      b1 = value;

                      a1 = false;
                      c1 = false;
                    });
                  },
                ),
                CheckBoxPerguntas(
                  value: c1,
                  title: 'C) Análise de algoritmos',
                  onPressed: (value) {
                    setState(() {
                      c1 = value;
                      a1 = false;
                      b1 = false;
                    });
                  },
                ),
                SizedBox(height: 16),
                Text(
                  'Qual linguagem surgiu através da contribuição de Grace Hopper com Flow-Matic?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xff223066),
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Quicksand'),
                ),
                SizedBox(height: 16),
                CheckBoxPerguntas(
                  value: a2,
                  title: 'A) ASSEMBLY',
                  onPressed: (value) {
                    setState(() {
                      a2 = value;

                      b2 = false;
                      c2 = false;
                    });
                  },
                ),
                CheckBoxPerguntas(
                  value: b2,
                  title: 'B) JAVA',
                  onPressed: (value) {
                    setState(() {
                      b2 = value;

                      a2 = false;
                      c2 = false;
                    });
                  },
                ),
                CheckBoxPerguntas(
                  value: c2,
                  title: 'C) COBOL',
                  onPressed: (value) {
                    setState(() {
                      c2 = value;
                      a2 = false;
                      b2 = false;
                    });
                  },
                ),
                SizedBox(height: 16),
                Text(
                  'Qual protocolo de rede Vint Cerf desenvolveu?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xff223066),
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Quicksand'),
                ),
                SizedBox(height: 16),
                CheckBoxPerguntas(
                  value: a3,
                  title: 'A) TCP/IP',
                  onPressed: (value) {
                    setState(() {
                      a3 = value;
                      b3 = false;
                      c3 = false;
                    });
                  },
                ),
                CheckBoxPerguntas(
                  value: b3,
                  title: 'B) WEP',
                  onPressed: (value) {
                    setState(() {
                      b3 = value;

                      a3 = false;
                      c3 = false;
                    });
                  },
                ),
                CheckBoxPerguntas(
                  value: c3,
                  title: 'C) HTTPS',
                  onPressed: (value) {
                    setState(() {
                      c3 = value;

                      b3 = false;
                      a3 = false;
                    });
                  },
                ),
                SizedBox(height: 15),
                ButtonDifficulty(
                  color: Colors.blue[900],
                  difficulty: 'Enviar',
                  onPressed: () {
                    if (a3 == true) {
                      contador = contador + 1;
                    }
                    if (c2 == true) {
                      contador = contador + 1;
                    }
                    if (c1 == true) {
                      contador = contador + 1;
                    }
                    setState(() {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          // retorna um objeto do tipo Dialog
                          return AlertDialog(
                            title: Text('Resultado'),
                            content: Text(
                                'Você Acertou $contador questões de 3 questões'),
                            actions: <Widget>[
                              FlatButton(
                                child: Text("Fechar"),
                                onPressed: () {
                                  Modular.to.pop();
                                  Modular.to.pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    });
                  },
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
