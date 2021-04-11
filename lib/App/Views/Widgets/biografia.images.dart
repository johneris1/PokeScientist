import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class BiografiaAndImages extends StatelessWidget {
  const BiografiaAndImages({
    Key key,
    this.image,
    this.imageDois,
    this.resumo,
    this.biografia,
    this.legado,
    this.legendaImageUm,
    this.legendaImageDois,
  }) : super(key: key);
  final String image;
  final String imageDois;
  final String resumo;
  final String biografia;
  final String legado;
  final String legendaImageUm;
  final String legendaImageDois;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AutoSizeText(resumo ?? ''),
          SizedBox(height: 15),
          Container(
            width: MediaQuery.of(context).size.width * 0.30,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(
                24,
              ),
            ),
            child: Center(
              child: AutoSizeText(
                'Biografia:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          AutoSizeText(biografia ?? ''),
          SizedBox(height: 15),
          Container(
            width: MediaQuery.of(context).size.width * 0.27,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(
                24,
              ),
            ),
            child: Center(
              child: AutoSizeText(
                'Legado:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          AutoSizeText(legado ?? ''),
          SizedBox(height: 15),
          Container(
            width: MediaQuery.of(context).size.width * 0.27,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(
                24,
              ),
            ),
            child: Center(
              child: AutoSizeText(
                'Imagens:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.75,
                      child: Image.asset(
                        image ?? '',
                      ),
                    ),
                    Text(legendaImageUm ?? '')
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.75,
                      child: Image.asset(imageDois),
                    ),
                    Text(legendaImageDois ?? '')
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
