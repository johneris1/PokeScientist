import 'package:PokeScientists/App/Views/Widgets/biografia.images.dart';
import 'package:PokeScientists/App/Views/Widgets/info.perfil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DonaldKnuth extends StatefulWidget {
  @override
  _DonaldKnuthState createState() => _DonaldKnuthState();
}

class _DonaldKnuthState extends State<DonaldKnuth> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text('Donald Knuth'),
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
                image: 'assets/images/donaldK.jpg',
                nome: 'Donald Ervin Knuth',
                apelido: "O pai da análise de algoritmos",
                idade: '83',
                nomePai: 'Ervin Henry Knuth',
                nomeMae: 'Louise Marie Bohning',
                statusVital: 'Vivo',
                localNascimento: 'Milwaukee,',
                complementoLocalNascimento: 'Wisconsin , EUA',
                formacao: 'Matemática - ',
                complementoFormacao: ' Case Institute of Technology',
                dataNascimento: '10/01/1938 ',
                dataMorte: '-',
                causaMorte: '-',
              ),
              BiografiaAndImages(
                resumo:
                    'Chamado de pai da análise de algoritmos, Knuth é também o autor da série de livros The Art of Computer Programming, série que escreve desde 1962 e começou a publicar em 1968. O norte-americano de 83 anos está hoje trabalhando no sexto volume, cujo lançamento ainda não foi previsto. Três dos outros cinco anteriores já foram até relançados, enquanto o quarto saiu dividido em partes. Outros volume ainda está nos planos. Com a série, o objetivo de Knuth era basicamente organizar a ciência da computação, extremamente bagunçada na época da primeira parte , o que o motivou também a criar o sistema de tipografia TeX e a linguagem de descrição METAFONT. O cientista e matemático também é o responsável pelo conceito de Programação Literária e dos sistemas de programação WEB e CWEB, que visavam incentivar a adoção da ideia.',
                biografia:
                    'Nascido no Wisconsin, graduou-se em 1960. Em 1963 obteve o doutorado no Instituto de Tecnologia da Califórnia (Caltech), onde tornou-se professor e começou a trabalhar no livro The Art of Computer Programming, originalmente planejado como uma série de sete livros. O primeiro volume foi publicado em 1968. Neste mesmo ano transferiu-se para a Universidade de Stanford. Em 1974 ganhou o Prêmio Turing.Em 1976, após produzir o terceiro volume de sua série, ficou tão frustrado com o estado antiquado das ferramentas de publicação que dedicou seu tempo à criação de algo melhor. De seus esforços surgiram as ferramentas TEX e METAFONT.Em reconhecimento às suas contribuições à ciência da computação ele foi agraciado em 1990 com o singular título de Professor of the Art of Computer Programming, que depois foi atualizado para Professor Emeritus of the Art of Computer Programming.Em 1992 tornou-se um associado da Academia Francesa de Ciências. Neste mesmo ano aposentou-se da universidade para concluir The Art of Computer Programming. Em 2003 foi eleito como Fellow da Royal Society. Em 2004 os primeiros três volumes de seu livro foram reeditados. Atualmente Knuth está trabalhando no quarto volume e trechos são liberados periodicamente em seu site pessoal.',
                legado:
                    'É autor de The Art of Computer Programming, escrito em cinco volumes, também conhecida por TAOCP.Contribuiu para o desenvolvimento e a sistematização formal de técnicas matemáticas, para a análise da complexidade de algoritmos computacionais e na popularização da notação Big O ou assimptótica. Esta notação é utilizada para a análise de algoritmos, isto é, tem a função de determinar os recursos computacionais (tempo de execução e memória) necessários para executar um dado algoritmo.Ele criou o sistema de tipográfico TEX, o sistema de criação de fontes METAFONT, além de ser pioneiro do conceito de Programação Literária. A programação literária é uma filosofia de programação de computadores baseada na premissa que um programa de computador deve ser escrito tendo a legibilidade humana como principal objetivo, similar a um trabalho de literatura.',
                image: 'assets/images/41IHBJFnG3L.jpg',
                legendaImageUm: 'Art of Computer Programming',
                imageDois: 'assets/images/800px-Texniccenter.png',
                legendaImageDois:
                    'Screenshot do TeXnicCenter, uma IDE para o TEX\nem ambiente Windows.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
