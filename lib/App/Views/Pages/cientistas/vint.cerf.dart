import 'package:PokeScientists/App/Views/Widgets/biografia.images.dart';
import 'package:PokeScientists/App/Views/Widgets/info.perfil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class VintCerf extends StatefulWidget {
  @override
  _VintCerfState createState() => _VintCerfState();
}

class _VintCerfState extends State<VintCerf> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text('Vint Cerf'),
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
                image: 'assets/images/vintCertf.jpg',
                nome: 'Vinton Gray Cerf',
                apelido: "Vint Cerf",
                idade: '77',
                nomePai: 'Vinton Thurston',
                nomeMae: 'Muriel',
                statusVital: 'Vivo',
                localNascimento: 'New Haven,',
                complementoLocalNascimento: 'Connecticut, EUA',
                formacao: 'Matemática - ',
                complementoFormacao: 'Universidade de Stanford',
                dataNascimento: '23/07/1943 ',
                dataMorte: '-',
                causaMorte: '-',
              ),
              BiografiaAndImages(
                resumo:
                    'Vinton Gray Cerf (Nascido em 23 de junho de 1943) é um pioneiro da Internet nos Estados Unidos e é reconhecido como um dos " pais da Internet ", compartilhando este título com TCP / IP co -desenvolvedor Bob Kahn . Ele recebeu títulos honorários e prêmios que incluem a Medalha Nacional de Tecnologia ,o Prêmio Turing , a Medalha Presidencial da Liberdade ,  oPrêmio Marconi e membro da Academia Nacional de Engenharia .',
                biografia:
                    'O interesse pela ciência, obras literárias e ficção científica já surgiram na infância deste homem chamado Vinton Gray Cerf, nascido em 1943, em New Haven, Connecticut, EUA. O estadunidense se tornou um matemático e cientista de computação.Conhecido por ser um solucionador de problemas, Vint, juntamente com Robert Kahn, foi o criador dos protocolos TCP/IP – que são o alicerce da conexão à rede. Vint Cerf foi quem iniciou o desenvolvimento do IP para transmissão de informações da Arpanet – A Protocol for Packet Network Intercommunication para a Internet.Além de uma importante carreira acadêmica, com diversos títulos honorários e doutoramentos, Cerf também foi um dos fundadores da Internet Society, atuando como presidente entre 1992 e 1995. Em 2005 foi anunciado como vice-presidente e “Chief Internet-Evangelist” da Google.Além de seu trabalho na Internet, Cerf atuou em muitas agências governamentais relacionadas à segurança cibernética e à infraestrutura nacional de informações. Ao longo de sua trajetória, acumula honrarias.',
                legado:
                    'Junto a Robert Kahn, é um dos criadores da Internet, tendo participado da criação dos protocolos TCP/IP, que são o alicerce da conexão à rede. Foi Kahn quem desenvolveu o TCP e Vinton Cerf iniciou o desenvolvimento do IP para transmissão de informações pela Internet, o que foi reconhecido com a publicação do artigo A Protocol for Packet Network Intercommunication.',
                image: 'assets/images/220px-Vinton_Cerf-20070512.jpg',
                legendaImageUm:
                    "Cerf jogando Spacewar!\nno Computer History Museum's PDP-1,\nICANN reunião de 2007",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
