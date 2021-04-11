import 'package:PokeScientists/App/Views/Widgets/biografia.images.dart';
import 'package:PokeScientists/App/Views/Widgets/info.perfil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TimBerners extends StatefulWidget {
  @override
  _TimBernersState createState() => _TimBernersState();
}

class _TimBernersState extends State<TimBerners> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text('Tim Berners-Lee'),
            ],
          ),
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.white,
            onPressed: () {
              Modular.to.pop();
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              InfoPerfil(
                image: 'assets/images/Tim_Berners-Lee.jpg',
                nome: 'Tim Berners-Lee',
                apelido: "TimBl",
                idade: '83',
                nomePai: 'Conway Berners-Lee',
                nomeMae: 'Mary Lee Woods',
                statusVital: 'Vivo',
                localNascimento: 'Londres, ',
                complementoLocalNascimento: 'Inglaterra',
                formacao: 'Física/DCC ',
                complementoFormacao: "Oxford/The Queen's College",
                dataNascimento: '08/06/1955 ',
                dataMorte: '-',
                causaMorte: '-',
              ),
              BiografiaAndImages(
                resumo:
                    'Timothy John Berners-Lee  é um físico britânico, cientista da computação e professor do MIT. É o criador da World Wide Web, tendo feito a primeira proposta para sua criação a 12 de março de 1989.[2][3] Em 25 de dezembro de 1990, com a ajuda de Robert Cailliau e um jovem estudante do CERN, implementou a primeira comunicação bem-sucedida entre um cliente HTTP e o servidor através da internet.',
                biografia:
                    " Enquanto atuava como um contratante independente no CERN, de junho a dezembro de 1980, Berners-Lee propôs um projeto baseado no conceito de hipertexto para facilitar a partilha e atualização de informações entre os pesquisadores. Enquanto isso, ele construiu um protótipo de sistema denominado ENQUIRE. Depois de deixar o CERN, em 1980, foi trabalhar na John Poole's Image Computer Systems, Ltd, em Bournemouth, na Inglaterra, mas retornou ao CERN em 1984 como efetivo. Em 1989, o CERN foi o maior nó da internet na Europa, e Berners-Lee viu a oportunidade de unir hipertexto com internet: 'Eu só precisei tomar a ideia de hipertexto e conectá-la às ideias de Transmission Control Protocol e Domain Name System e - ta-da! - a World Wide Web.'",
                legado:
                    "Berners-Lee é o diretor do World Wide Web Consortium (W3C), que supervisiona o desenvolvimento continuado da web. Também é o fundador da World Wide Web Foundation e é um pesquisador sênior e titular e fundador da cadeira de 3Com no Laboratório de Inteligência Artificial e Ciência da Computação do MIT (CSAIL). É um diretor da The Web Science Research Initiative (WSRI)  e um membro do conselho consultivo do Centro de Inteligência Coletiva do MIT. Em abril de 2009, foi eleito como membro da Academia Nacional de Ciências dos Estados Unidos, sediada em Washington, D.C. Em 2011, foi nomeado como um membro do conselho de administração da Fundação Ford.",
                image: 'assets/images/250px-First_Web_Server.jpg',
                legendaImageUm:
                    'Berners-Lee usou este NeXTcube na CERN para criar\no primeiro servidor web do mundo',
                imageDois:
                    "assets/images/Edward_Snowden's_Surprise_Appearance_at_TED.jpg",
                legendaImageDois:
                    'Edward Snowden apareceu na conferência TED.\nFoi saudado e chamado de herói\npor Tim Berners-Lee.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
