import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class BoasVindasPage extends StatefulWidget {
  @override
  _BoasVindasPageState createState() => _BoasVindasPageState();
}

class _BoasVindasPageState extends State<BoasVindasPage> {
  int a;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightBlue,
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    'Bem-Vindo',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Center(
                  child: Text(
                    'ao',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Center(
                  child: Text(
                    'PokeScientist',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  height: 70,
                  width: 170,
                  child: RaisedButton(
                      color: Colors.blue,
                      child: Text(
                        'Continuar',
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      onPressed: () {
                        Modular.to.pushNamed('/main-navigation');
                      }),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
