import 'package:PokeScientists/App/Views/Widgets/biografia.images.dart';
import 'package:PokeScientists/App/Views/Widgets/info.perfil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AlanTuring extends StatefulWidget {
  @override
  _AlanTuringState createState() => _AlanTuringState();
}

class _AlanTuringState extends State<AlanTuring> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text('Alan Turing'),
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
                image: 'assets/images/alanTuring.jpg',
                nome: 'Alan Mathison Turing',
                apelido: "O Pai da Computação",
                idade: '41',
                nomePai: 'Julius Mathison',
                nomeMae: 'Ethel Sara Stoney',
                statusVital: 'Morto',
                localNascimento: 'Maida Vale,',
                complementoLocalNascimento: 'Londres, Reino Unido',
                formacao: 'Matemática - ',
                complementoFormacao: 'Universidade de Cambridge',
                dataNascimento: '23/06/1912',
                dataMorte: '07/06/1954',
                causaMorte: 'Suicídio',
              ),
              BiografiaAndImages(
                resumo:
                    'Alan Turing foi um matemático e criptógrafo inglês considerado atualmente como o pai da computação, uma vez que, por meio de suas ideias, foi possível desenvolver o que chamamos hoje de computador. Turing também ficou muito conhecido como um dos responsáveis por decifrar o código utilizado pelas comunicações nazistas durante a Segunda Guerra Mundial.',
                biografia:
                    'Alan Turing (1912-1954) foi um matemático britânico, pioneiro da computação e considerado o pai da ciência computacional e da inteligência artificial.Alan Mathison Turing (1912-1954), conhecido como Alan Turing, nasceu na cidade de Paddington, na Inglaterra, no dia 23 de junho de 1912. Filho de Julius Mathison, funcionário do Serviço Civil Indiano e de Ethel Sara Stoney teve uma infância rígida e estudou na tradicional Escola Sherbourne. Desde cedo demonstrou interesse pelas ciências e pela lógica.Com 15 anos já resolvia problemas matemáticos complexos, sem ainda ter estudado cálculo. Com 16 anos conheceu Christopher Morcom, por quem sentiu atração, descobrindo-se homossexual. Em 1930, Marcom morreu repentinamente. Em 1931 Turing graduou-se em Matemática com honras, pela Universidade de Cambridge.Depois de formado, empreendeu estudos para criar uma máquina automatizada, que materializasse a lógica humana e solucionasse qualquer cálculo representado no formato de um algoritmo, que seriam exibidos no formato das instruções a serem processadas de forma mecânica, dentro da própria máquina. A “Máquina de Turing” se tornou um protótipo dos computadores modernos.Alan Turing trabalhou como funcionário do Governmente Code and Cypher School e entre 1940 e 1941, e desenvolveu uma máquina capaz de decifrar o “Enigma”, código utilizado pelos nazistas, durante a Segunda Guerra Mundial, dando assim aos aliados uma vantagem que permitiu derrotar mais depressa a Alemanha.Depois da guerra, trabalhou no Laboratório Nacional de Física do Reino Unido onde pesquisou e trabalhou no projeto para o programa de armazenamento de dados, o ACE. Criou o Manchester 1, o primeiro computador com as diretrizes parecidas com as de hoje. Interessou-se também por química, quando passou um período trabalhando nos laboratórios da Bell, nos Estados Unidos.Em 1952, Alan Turing enfrentou um processo criminal, pois na época, na Inglaterra, o homossexualismo era considerado crime. Foi destituído de seu posto no Bletchley Park, o centro inglês de descodifica,condenado e castrado quimicamente (com injeções de hormônios femininos).Com seu prestígio relegado, Alan Turing morreu aos 41 anos por intoxicação de cianeto. A princípio acreditou-se que teria sido suicídio, mas estudiosos concluíram que o envenenamento se deveu a remédios que ele compulsivamente tomava.Uma campanha de perdão ao matemático começou na internet, exigindo um pedido póstumo por parte do governo britânico. Em 2009, o então primeiro-ministro inglês Gordon Brown, se desculpou em nome do governo, e no dia 24 de dezembro de 2013, Turing foi perdoado postumamente da condenação por prática homossexual, pela rainha Elizabeth II.Alan Turing faleceu em Wilmslow, Inglaterra, no dia 7 de junho de 1954.',
                legado:
                    'O maior legado deixado pelo matemático Alan Turing é, sem dúvidas, a invenção da máquina de Turing. Esta é um modelo teórico que pode ser usado para implementar todos os aspectos lógicos e matemáticos de um computador, independentemente de como ele venha a ser construído (mecânica ou eletronicamente, por exemplo).A máquina de Turing foi criada em 1936, muito tempo antes da invenção dos computadores modernos. A maior parte dos nossos dispositivos eletrônicos, como celulares e computadores, são máquinas programáveis, que operam de acordo com os fundamentos da máquina de Turing. As calculadoras, por exemplo, operam como as primeiras máquinas de Turing, programadas para realizar cálculos simples.Como citado, a participação de Turing na decifração da Enigma e na construção da bomba eletromecânica contribuiu para acelerar o final da Segunda Guerra Mundial, sendo responsável por salvar milhões de vidas. Além disso, nesse período, as tecnologias de criptografia e computação sofreram grandes avanços.Além de ter construído as bases da computação moderna, Turing também desenvolveu os primeiros testes capazes de distinguir a inteligência artificial da inteligência humana. Atualmente os testes de Turing são usados em diversos sites e dispositivos, promovendo maior segurança para os seus usuários.',
                image: 'assets/images/size_960_16_9_20151020-25144-yccz0y.jpg',
                legendaImageUm: 'A Solução da Enigma',
                imageDois:
                    'assets/images/size_960_16_9_20151020-25144-w1vem2.jpg',
                legendaImageDois: 'O Computador ACE',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
