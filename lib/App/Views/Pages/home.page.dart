import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
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
                SizedBox(height: 30),
                Text(
                  'Oque podemos dizer Sobre Ciênicias e Computação?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xff223066),
                      fontSize: 21,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Quicksand'),
                ),
                SizedBox(height: 40),
                Text(
                  'Oque é Ciência da Computação?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xff223066),
                      fontSize: 21,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Quicksand'),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  ' Ciência da computação é a ciência que estuda as técnicas, metodologias, instrumentos computacionais e aplicações tecnológicas, que informatizem os processos e desenvolvam soluções de processamento de dados de entrada e saída pautados no computador. Não se restringindo apenas ao estudo dos algoritmos, suas aplicações e implementação na forma de software. Assim, a Ciência da Computação também abrange as técnicas de modelagem de dados e gerenciamento de banco de dados, envolvendo também a telecomunicação e os protocolos de comunicação, além de princípios que abrangem outras especializações da área.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xff223066), fontFamily: 'Quicksand'),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Sobre o Curso: ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xff223066),
                      fontSize: 21,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Quicksand'),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'O curso de Ciência da Computação não forma o profissional para uma área específica; do contrário, ao término do curso o aluno terá uma formação sólida com uma gama de competências e habilidades. ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xff223066), fontFamily: 'Quicksand'),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Mercado de Trabalho: ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xff223066),
                      fontSize: 21,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Quicksand'),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'O mercado de trabalho para o formado em Ciência da Computação é bastante amplo. Ele pode exercer diversos cargos em empresas que utilizem tecnologia da informação, tais como engenheiro de software, programador, analista de sistema, gerente de projetos, engenheiro de redes, gerente de redes e várias outras denominações de cargos e funções. Como outra alternativa muito interessante e bastante promissora, o aluno egresso do curso pode montar o seu próprio negócio; muitas empresas do ramo da computação, como por exemplo Microsoft e Google, surgiram através de iniciativas individuais.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xff223066), fontFamily: 'Quicksand'),
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
