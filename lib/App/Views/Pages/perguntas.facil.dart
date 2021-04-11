import 'package:PokeScientists/App/Views/Widgets/button.difficulty.dart';
import 'package:PokeScientists/App/Views/Widgets/checkbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class QuizFacil extends StatefulWidget {
  @override
  _QuizFacil createState() => _QuizFacil();
}

class _QuizFacil extends State<QuizFacil> {
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
                  'Linus Torvalds é Desenvolvedor de qual SO?',
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
                  title: 'A) Linux',
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
                  title: 'B) Windows',
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
                  title: 'C) Mac',
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
                  'Qual a contribuição de Alan Turing para o Desenvolvimento de I.A?',
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
                  title: 'A) Teste de Turing',
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
                  title: 'B) Criptografia avançada',
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
                  title: 'C) Xadrez para computadores',
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
                  'Qual a contribuição de Ada Lovelace para os Algoritmos?',
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
                  title: 'A) Primeiro algoritmo desenvolvido para uma máquina',
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
                  title: 'B) Interface  gráfica',
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
                  title: 'C) Criptografia simples',
                  onPressed: (value) {
                    setState(() {
                      c3 = value;
                      a3 = false;
                      b3 = false;
                    });
                  },
                ),
                SizedBox(height: 15),
                ButtonDifficulty(
                  color: Colors.blue[900],
                  difficulty: 'Enviar',
                  onPressed: () {
                    if (a1 == true) {
                      contador = contador + 1;
                    }
                    if (a2 == true) {
                      contador = contador + 1;
                    }
                    if (a3 == true) {
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
