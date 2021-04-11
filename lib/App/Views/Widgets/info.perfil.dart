import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class InfoPerfil extends StatelessWidget {
  const InfoPerfil({
    Key key,
    this.image,
    this.nome,
    this.apelido,
    this.idade,
    this.nomePai,
    this.nomeMae,
    this.statusVital,
    this.localNascimento,
    this.complementoLocalNascimento,
    this.formacao,
    this.complementoFormacao,
    this.dataMorte,
    this.dataNascimento,
    this.causaMorte,
  }) : super(key: key);
  final String image;
  final String nome;
  final String apelido;
  final String idade;
  final String nomePai;
  final String nomeMae;
  final String statusVital;
  final String localNascimento;
  final String complementoLocalNascimento;
  final String formacao;
  final String complementoFormacao;
  final String dataMorte;
  final String dataNascimento;
  final String causaMorte;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(right: 10),
            width: MediaQuery.of(context).size.width * 0.33,
            height: MediaQuery.of(context).size.height * 0.28,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(5)),
            width: MediaQuery.of(context).size.width * 0.62,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    AutoSizeText(
                      'Nome:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 5),
                    AutoSizeText(nome ?? '')
                  ],
                ),
                Row(
                  children: [
                    AutoSizeText(
                      'Apelido:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 5),
                    AutoSizeText(apelido ?? '')
                  ],
                ),
                Row(
                  children: [
                    AutoSizeText(
                      'Idade:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 5),
                    AutoSizeText(idade ?? '')
                  ],
                ),
                Row(
                  children: [
                    AutoSizeText(
                      'Nome do Pai:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 5),
                    AutoSizeText(nomePai ?? '')
                  ],
                ),
                Row(
                  children: [
                    AutoSizeText(
                      'Nome da Mãe:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 5),
                    AutoSizeText(nomeMae ?? '')
                  ],
                ),
                Row(
                  children: [
                    AutoSizeText(
                      'Status Vital:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 5),
                    AutoSizeText(statusVital ?? '')
                  ],
                ),
                Row(
                  children: [
                    AutoSizeText(
                      'Local de Nascimento:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 5),
                    AutoSizeText(localNascimento ?? '')
                  ],
                ),
                AutoSizeText(complementoLocalNascimento ?? ''),
                Row(
                  children: [
                    AutoSizeText(
                      'Formação:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 5),
                    AutoSizeText(
                      formacao ?? '',
                    )
                  ],
                ),
                AutoSizeText(
                  complementoFormacao ?? '',
                ),
                Row(
                  children: [
                    AutoSizeText(
                      'Data de Nacimento:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 5),
                    AutoSizeText(dataNascimento ?? '')
                  ],
                ),
                Row(
                  children: [
                    AutoSizeText(
                      'Data da Morte:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 5),
                    AutoSizeText(dataMorte ?? '')
                  ],
                ),
                Row(
                  children: [
                    AutoSizeText(
                      'Causa da Morte:',
                      maxLines: 2,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 5),
                    AutoSizeText(causaMorte ?? '')
                  ],
                ),
                SizedBox(height: 5),
              ],
            ),
          )
        ],
      ),
    );
  }
}
