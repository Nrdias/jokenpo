import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {

  String _result = "";
  final String _padrao = "images/padrao.png";
  final String _pedra = "images/pedra.png";
  final String _papel = "images/papel.png";
  final String _tesoura = "images/tesoura.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("JoKenPo Game", textAlign: TextAlign.center)
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Padding(padding: EdgeInsets.only(top: 32,bottom: 16), child: Text(
            "Escolha da Máquina",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20,
            fontWeight: FontWeight.bold))
          ),
          Image.asset(_padrao),
          Text(_result, style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),),
          const Padding(padding: EdgeInsets.only(top: 32,bottom: 16), child: Text(
              "Escolha uma opção abaixo:",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold))
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            GestureDetector(
              onTap: (){},
              child: Image.asset(_pedra, height: 95,)
            ),
            GestureDetector(
                onTap: (){},
                child: Image.asset(_papel, height: 95,)
            ),
            GestureDetector(
                onTap: (){},
                child: Image.asset(_tesoura, height: 95,)
            )
          ],
          )
        ],
      ),
    );
  }
}

