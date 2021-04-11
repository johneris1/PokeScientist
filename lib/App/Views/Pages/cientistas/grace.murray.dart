import 'package:PokeScientists/App/Views/Widgets/biografia.images.dart';
import 'package:PokeScientists/App/Views/Widgets/info.perfil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class GraceHopper extends StatefulWidget {
  @override
  _GraceHopperState createState() => _GraceHopperState();
}

class _GraceHopperState extends State<GraceHopper> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text('Grace Murray Hopper '),
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
                image: 'assets/images/graceMurray.jpg',
                nome: 'Grace Murray Hopper',
                apelido: '"Amazing Grace"',
                idade: '85',
                nomePai: 'Walter Fletcher Murray',
                nomeMae: 'Mary Campbell',
                statusVital: 'Morta',
                localNascimento: 'Nova York,',
                complementoLocalNascimento: 'Estados Unidos',
                formacao: 'Matemática e Física - ',
                complementoFormacao: 'Universidade de Yale',
                dataNascimento: '09/12/1906',
                dataMorte: '01/01/1992',
                causaMorte: 'Causas Naturais',
              ),
              BiografiaAndImages(
                resumo:
                    'Grace Murray Hopper (Nova Iorque, 9 de dezembro de 1906 — Condado de Arlington, 1 de janeiro de 1992) foi almirante e, analista de sistemas da Marinha dos Estados Unidos nas décadas de 1940 e 1950, criadora da linguagem de programação de alto nível Flow-Matic (em desuso) — base para a criação do COBOL — e uma das primeiras programadoras do computador Harvard Mark I em 1944.',
                biografia:
                    'Grace Murray Hopper nasceu em 1906, em Nova York, nos Estados Unidos. Ela formou-se em Matemática e Física em 1928, terminou o mestrado em 1930 e, em 1934, concluiu o doutorado em matemática.Em 1931, antes de finalizar o doutorado, Grace Hopper lecionava matemática no Vassar College. Em 1943, ela ingressou na Marinha. Formou-se na Escola Naval como a primeira da turma e foi para a equipe de programação Mark I Computer, do Bureau of Ships Computation Project da Harvard University. O Mark I também é conhecido como Automatic Sequence Controlled Calculator.Grace Hopper tornou-se capitã da Marinha em 1973 e aposentou-se em 1986. Ela faleceu em 1992.',
                legado:
                    'Em 1954, Grace Hopper foi nomeada a primeira diretora de programação automática da companhia onde trabalhava, e seu departamento foi responsável por divulgar algumas das primeiras linguagens de programação baseadas em compiladores. Em 1973, Hopper foi nomeada capitã da Marinha norteamericana e aposentou-se em 1986 como contra-almirante.Entre os inúmeros prêmios que recebeu, estão mais de 40 doutorados honoris causa, a medalha de Serviço Distinto da Defesa e a Medalha Nacional de Tecnologia. Ela ainda foi homenageada ao ver um destróier da Marinha sendo batizado com seu nome. Além disso, também recebeu a primeira edição do prêmio “Homem do Ano” da Ciência da Computação conferido pela Associação de Gerenciamento de Processamento de Dados, tornando-se a primeira mulher (e primeiro cidadão americano) a ser nomeada Distinguished Fellow pela British Computer Society.Grace Hopper faleceu em janeiro de 1992 aos 85 anos de idade. Por ser uma mulher cuja relevância em seu setor é inegável, desde 1994 é realizado em sua honra o congresso Grace Hopper Celebration of Women in Computing, que anualmente celebra os feitos das mulheres no mundo da computação.',
                image: 'assets/images/302027.jpeg',
                legendaImageUm: 'Grace Hopper trabalhando no UNIVAC',
                imageDois: 'assets/images/cobol-programming-og.jpg',
                legendaImageDois: 'Linguagem Cobol',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
