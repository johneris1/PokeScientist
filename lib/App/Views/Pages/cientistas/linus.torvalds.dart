import 'package:PokeScientists/App/Views/Widgets/biografia.images.dart';
import 'package:PokeScientists/App/Views/Widgets/info.perfil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LinusTorvalds extends StatefulWidget {
  @override
  _LinusTorvaldsState createState() => _LinusTorvaldsState();
}

class _LinusTorvaldsState extends State<LinusTorvalds> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text('Linus Torvalds'),
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
                image: 'assets/images/LinuxCon_Europe_Linus_Torvalds_03.jpg',
                nome: 'Linus Torvalds',
                apelido: "-",
                idade: '51',
                nomePai: 'Nils Torvalds',
                nomeMae: 'Anna Torvalds',
                statusVital: 'Vivo',
                localNascimento: 'Helsínquia',
                complementoLocalNascimento: 'Finlândia',
                formacao: 'DDC',
                complementoFormacao: 'Universidade de Helsínquia',
                dataNascimento: '28/12/1969',
                dataMorte: '-',
                causaMorte: '-',
              ),
              BiografiaAndImages(
                resumo:
                    'Linus Benedict Torvalds criador, e por muito tempo o desenvolvedor mais importante do núcleo Linux, sendo utilizado em importantes sistemas Linux, Android e Chrome OS. É também o criador do Git, sistema de controle de versão amplamente utilizado, e o aplicativo para planejamento e registro de mergulho, Subsurface.',
                biografia:
                    'Com 21 anos, sendo cinco já de experiência em programação (em C), ele toma contato com o SO Unix da Universidade (SunOS, atualmente Solaris) e desejava usar a versão de Tannenbaum, o Minix, no seu recém adquirido 80386. Entretanto, descontente com os recursos do Minix, especialmente em relação ao seu emulador de terminal que ele utilizaria para conectar remotamente ao Unix da universidade, começa a desenvolver seu próprio emulador de terminal que não rodaria sobre o Minix, mas sim diretamente no hardware do PC com 80386. Esse projeto pessoal foi sendo modificado gradualmente e adquirindo características de um sistema operacional independente do Minix. Esse é o início do desenvolvimento do núcleo Linux, relatado pelo próprio Linus Torvalds em seu livro Just for fun. O projeto do Linux foi lançado em 1991 em uma famosa mensagem para a Usenet, em que ele divulga que estava disposto a disponibilizar o código-fonte e contar com a colaboração de outros programadores. Desde os primeiros dias de liberação do Linux à comunidade, ele recebe ajuda de hackers do Minix, e hoje recebe contribuições de milhares de programadores dos mais diversos locais do mundo.',
                legado:
                    'Junto ao médico Shinya Yamanaka, foi honrado pela Academia de Tecnologia da Finlândia, em 2012, com o Prêmio de Tecnologia do Milênio “em reconhecimento à sua criação de um novo núcleo de sistema operacional para computadores, que levou ao extensivamente utilizado, núcleo Linux”.Torvalds também notoriamente recebeu os prêmios: Pioneiro da Computação da IEEE Computer Society, e o IEEE Masaru Ibuka Consumer Electronics Award, patrocinado pela Sony.',
                image:
                    'assets/images/220px-Linus-Torvalds_IEEE_Ibuka_Award_2018.jpg',
                legendaImageUm:
                    'Linus Torvalds recebendo 2018 IEEE Masaru Ibuka\nConsumer Electronics Award\ndo ICCE 2018 Conference Chair Saraju P.\nMohanty e IEEE Presidente James A.',
                imageDois: 'assets/images/175px-Linus_Torvalds.jpeg',
                legendaImageDois: 'Torvalds em 2002',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
