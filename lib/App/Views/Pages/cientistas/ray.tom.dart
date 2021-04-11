import 'package:PokeScientists/App/Views/Widgets/biografia.images.dart';
import 'package:PokeScientists/App/Views/Widgets/info.perfil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RayTomlinson extends StatefulWidget {
  @override
  _RayTomlinsonState createState() => _RayTomlinsonState();
}

class _RayTomlinsonState extends State<RayTomlinson> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text('Ray Tomlinson'),
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
                image: 'assets/images/Ray_Tomlinson.jpg',
                nome: 'Ray Tomlinson',
                apelido: "O pai do Email",
                idade: '74',
                nomePai: 'Ray Tomlinson',
                nomeMae: 'Dorothy Aspin Tomlinson',
                statusVital: 'Morto',
                localNascimento: 'Amsterdam,',
                complementoLocalNascimento: 'Nova York, EUA',
                formacao: 'Engenharia Eletrica',
                complementoFormacao: "Rensselaer Polytechnic Institute",
                dataNascimento: '23/04/1941 ',
                dataMorte: '05/03/2016',
                causaMorte: 'Ataque Cardiaco',
              ),
              BiografiaAndImages(
                resumo:
                    ': Ray Tomlinson  foi um programador dos Estados Unidos que implementou um sistema de correio eletrônico na ARPANET, em 1971. Ray era um funcionário da Bolt Beranek and Newman (BBN), empresa contratada pelo Departamento de Defesa dos Estados Unidos em 1968 para implantar a ARPANET.',
                biografia:
                    "O conceito de correio eletrônico já existia e estava implementado em sistemas como o AUTODIN. Entretanto, esse foi o primeiro sistema capaz de enviar mensagens entre diferentes nós conectados à ARPANET. Tomlinson também inovou na medida em que escolheu o símbolo @ para distinguir as mensagens destinadas às caixas de correio na máquina local das que se dirigiam à rede, por ser o símbolo que significa 'at', ou seja, estar em algum lugar. Logo enviou a si próprio uma mensagem de e-mail. A BBN tinha dois computadores PDP-10 ligados entre si através da ARPANET, e a mensagem viajou através da rede entre as duas máquinas na mesma sala, em Cambridge. Depois de se ter assegurado que o SNDMSG funcionava na rede, enviou uma mensagem aos seus colegas os avisando da nova funcionalidade, com instruções para colocar um @ entre o nome do utilizador e o do seu computador. O primeiro endereço de e-mail criado foi o tomlinson@bbn-tenexa.",
                legado:
                    " Em 1971, Tomlinson começou a enviar mensagens para si mesmo e para seus colegas como brincadeira. Ele somou as funcionalidades dos aplicativos SNDMSG (uma contração da expressão em inglês 'send message', ou seja, 'enviar mensagem') e o Readmail, para leitura de correio. Mas esse sistema permitia apenas o compartilhamento de textos. O engenheiro também trabalhava em um protocolo chamado CPYNET, para transferência de arquivos entre computadores conectados em rede. Ao juntar os dois programas, ele conseguiu enviar uma mensagem para seus colaboradores, anunciando sua criação.",
                image: 'assets/images/história-do-email-ray-tomlinson.jpg',
                legendaImageUm: 'Ray Tomlinson',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
