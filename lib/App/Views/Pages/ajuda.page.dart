import 'package:flutter/material.dart';

class AjudaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              Text(
                'SUPORTE:',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
                textAlign: TextAlign.center,
              ),
              Text(
                'Como usar o App?',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
                textAlign: TextAlign.center,
              ),
              Text(
                'a. Navegação: ',
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              Text(
                'Para navegar através das principais telas do aplicativo utilize a barra de navegação inferior e escolha entre os ícones a função desejada.',
                maxLines: 15,
                textAlign: TextAlign.center,
              ),
              Text(
                'b. Quiz:  ',
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              Text(
                'Selecione a dificuldade, após isso marque as caixas com suas respostas e clique em enviar.',
                maxLines: 15,
                textAlign: TextAlign.center,
              ),
              Text(
                'C. Pesquisa:   ',
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              Text(
                'Digite o nome da personalidade no campo indicado e então clique em seu nome para exibir o perfil com todas as informações.',
                maxLines: 15,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
