import 'package:PokeScientists/App/Views/Widgets/biografia.images.dart';
import 'package:PokeScientists/App/Views/Widgets/info.perfil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DenisRitchie extends StatefulWidget {
  @override
  _DenisRitchieState createState() => _DenisRitchieState();
}

class _DenisRitchieState extends State<DenisRitchie> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text('Dennis Ritchie'),
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
                image: 'assets/images/dennis_ritchie.jpg',
                nome: 'Dennis Ritchie',
                apelido: "-",
                idade: '51',
                nomePai: 'Jean McGee Ritchie',
                nomeMae: 'Alistair E. Ritchie',
                statusVital: 'Morto',
                localNascimento: 'Bronxville,',
                complementoLocalNascimento: 'Nova York, EUA',
                formacao: 'Matemática/DDC/ ',
                complementoFormacao: 'Fisica - Harvard',
                dataNascimento: '09/08/1941',
                dataMorte: '12/10/2011',
                causaMorte: 'Não Divulgado',
              ),
              BiografiaAndImages(
                resumo:
                    'Dennis MacAlistair Ritchie foi um cientista da computação estadunidense, notável pela sua influência em linguagens de programação como ALTRAN, B, BCPL e C, e em sistemas operacionais como o Multics e o UNIX .',
                biografia:
                    'Ao perguntarem-lhe sobre o que lhe influenciou a desenvolver a linguagem C da maneira que ele a fez, Ritchie teria respondido que "parecia a coisa certa a ser feita" e que qualquer pessoa que se encontrasse na mesma altura e no mesmo lugar que ele teria feito a mesma coisa. Um dos seus colegas dos laboratórios Bell, Bjarne Stroustrup, que desenvolveu e projectou a linguagem C++, uma versão da linguagem C mais vocacionada para a programação orientada a objetos, supostamente disse que "se o Dennis tivesse optado por dedicar-se naquela década à matemática esotérica, o UNIX teria sido um natimorto." Certamente, sendo o inventor da linguagem de programação C e o co-inventor (juntamente com Ken Thompson) do sistema operacional UNIX, Ritchie ganhou um lugar importante na história da indústria informática. A linguagem C continua a ser largamente utilizada no desenvolvimento de aplicações e sistemas operacionais e a sua influência pode ser vista em linguagens de programação mais recentes, tais como C++, Java, C#, PHP e JavaScript.',
                legado:
                    'Em 1967 começou a trabalhar no Centro de Investigação de Ciências Computacionais dos laboratórios Bell. Foi chefe do Departamento de Investigação de Software de Sistemas da Lucent Technologies. Em 1983, ele e Ken Thompson receberam o Prêmio Turing "pelo seu desenvolvimento de teoria de sistemas operacionais genéricos e especialmente pela sua implementação do sistema operacional UNIX".',
                image:
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/Version_7_Unix_SIMH_PDP11_Emulation_DMR.png/220px-Version_7_Unix_SIMH_PDP11_Emulation_DMR.png',
                legendaImageUm:
                    'Versão 7 Unix para o PDP-11 , incluindo o diretório inicial de Dennis Ritchie: / usr / dmr',
                imageDois:
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Usenix84_1.jpg/800px-Usenix84_1.jpg',
                legendaImageDois:
                    'Na mesma conferência Usenix 1984, Dennis Ritchie é visível no meio, vestindo um suéter listrado, atrás de Steven Bellovin usando um boné de beisebol.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
