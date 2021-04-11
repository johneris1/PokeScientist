import 'package:PokeScientists/App/Views/Widgets/biografia.images.dart';
import 'package:PokeScientists/App/Views/Widgets/info.perfil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AdaLovelace extends StatefulWidget {
  @override
  _AdaLovelaceState createState() => _AdaLovelaceState();
}

class _AdaLovelaceState extends State<AdaLovelace> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text('Ada Lovelace'),
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
                image: 'assets/images/adaLovelace.jpg',
                nome: 'Augusta Ada Byron King',
                apelido: "Ada Lovelace",
                idade: '36',
                nomePai: 'Lord Byron',
                nomeMae: 'Anne Isabella Milbanke',
                statusVital: 'Morta',
                localNascimento: 'Londres,',
                complementoLocalNascimento: ' Inglaterra, Reino Unido',
                formacao: 'Matemática - ',
                complementoFormacao: ' Case Institute of Technology',
                dataNascimento: '10/01/1938 ',
                dataMorte: '27/11/1852',
                causaMorte: 'Câncer de Útero',
              ),
              BiografiaAndImages(
                resumo:
                    'Augusta Ada Byron King, Condessa de Lovelace, atualmente conhecida como Ada Lovelace, foi uma matemática e escritora inglesa. Hoje é reconhecida principalmente por ter escrito o primeiro algoritmo para ser processado por uma máquina, a máquina analítica de Charles Babbage',
                biografia:
                    'Ada Byron King, a condessa de Lovelace, foi uma das poucas mulheres a figurar na história do processamento de dados. Nasceu em Londres, no dia 10 de Dezembro de 1815. O seu nome de batismo foi Augusta Ada King, Lady Lovelace para a posteridade. O seu pai era Lord Byron, um poeta muito famoso, e sua mãe era Anne Isabelle Milbanke, da qual adquiriu o amor pela Matemática.Seu pai deixou sua mãe um mês após seu nascimento e deixou a Inglaterra quatro meses depois, morrendo em 1823 na Grécia, sem nunca ter visto a filha. Herdeira de grande fortuna, sua mãe não queria que sua filha fosse poeta como o pai e procurou dar-lhe uma educação em matemática e música. Transitando com a mãe pela nobreza intelectual londrina, foi levada por Mary Somerville, uma tradutora de trabalhos científicos em Cambridge, para conhecer (1833) Charles Babbage, professor de matemática em Cambridge, conhecido como o inventor da Difference Engine, uma máquina de calcular que operava com elementos finitos.Ada foi educada como muitos aristocratas da altura, através de tutores pessoais. Manifestou desde logo uma enorme aptidão para a Matemática. Seus estudos mais avançados foram feitos sob a supervisão de De Morgan. Então, ela utilizou seus conhecimentos matemáticos para criar programas para a máquina de Babbage, tornando-se a primeira programadora de computador do mundo. Inventou o conceito de subrotina: uma seqüência de instruções que pode ser usada várias vezes em diferentes contextos. Ela descobriu o valor das repetições - os laços (loops): deveria haver uma instrução que retornasse a leitora de cartões a um cartão específico, de modo que a seqüência pudesse ter sua execução repetida. Ela sonhava com o desvio condicional: a leitora de cartões desviaria para outro cartão "se" alguma condição fosse satisfeita.Nos anos 70, a linguagem ADA foi desenvolvida e batizada em homenagem a Ada Lovelace. É baseada em PASCAL, sendo uma linguagem desenhada para ser legível e facilmente mantida. Infelizmente essa brilhante cientista morreu de câncer, no dia 27 de Novembro de 1852, com apenas 37 de idade, e foi enterrada ao lado do pai que ela nunca conheceu.',
                legado:
                    'Na juventude, seus talentos matemáticos levaram-na a uma relação de trabalho e de amizade com o colega matemático britânico Charles Babbage e, em particular, o trabalho de Babbage sobre a Máquina Analítica. Entre 1842 e 1843, ela traduziu um artigo do engenheiro militar italiano Luigi Federico Menabrea sobre a máquina e complementou com um conjunto de sua própria autoria, que ela chamou de Anotações. Essas notas contêm um algoritmo criado para ser processado por máquinas, o que muitos consideram ser o primeiro programa de computador. Ela também desenvolveu uma visão sobre a capacidade dos computadores de irem além do mero cálculo ou processamento de números, enquanto outros, incluindo o próprio Babbage, focavam apenas nessas capacidades.Sua mentalidade da "ciência poética" a levou a fazer perguntas sobre a Máquina Analítica (como mostrado em suas notas) e a examinar como os indivíduos e a sociedade se relacionam com a tecnologia como uma ferramenta de colaboração. Sua carreira, além de tudo, também serve para influenciar milhares de mulheres que estão dentro da área tecnológica. Mesmo que muitas vezes sofram com o machismo que está enraizado em nossa cultura. Além disso, debates sobre a inclusão da mulher na tecnologia percorrem o mundo inteiro, e espera-se que cada vez mais hajam mulheres para ocuparem lugares altos, e serem responsáveis por grandes descobertas, assim como Ada.',
                image: 'assets/images/analitica.jpg',
                legendaImageUm: 'Maquina analítica.',
                imageDois: 'assets/images/doodle.jpg',
                legendaImageDois: 'Homenagem do Google a Ada.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
