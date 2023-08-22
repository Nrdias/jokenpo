import 'dart:math';

import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {

  String _result = "";
  final _list = ["images/pedra.png","images/papel.png","images/tesoura.png"];
  var _machinechoice = AssetImage("images/padrao.png");

  play(String user){
    int aux = Random().nextInt(3);
    String machine = _list[aux];
    setState(() {
      _machinechoice = AssetImage(machine);
      if(machine == 'images/pedra.png' && user == 'images/tesoura.png') _result = 'Você perdeu';
      else if(machine == 'images/pedra.png' && user == 'images/papel.png') _result = 'Você ganhou';
      else if(machine == 'images/papel.png' && user == 'images/pedra.png') _result = 'Você perdeu';
      else if(machine == 'images/papel.png' && user == 'images/tesoura.png') _result = 'Você ganhou';
      else if(machine == 'images/tesoura.png' && user == 'images/papel.png') _result = 'Você perdeu';
      else if(machine == 'images/tesoura.png' && user == 'images/pedra.png') _result = 'Você ganhou';
      else _result = 'Empatou';
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
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
          Image(image: this._machinechoice),
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
                onTap: () => play(_list[0]),
                child: Image.asset(_list[0], height: 95)
            ),
            GestureDetector(
                onTap: () => play(_list[1]),
                child: Image.asset(_list[1], height: 95)
            ),
            GestureDetector(
                onTap: () => play(_list[2]),
                child: Image.asset(_list[2], height: 95)
            )
          ],
          )
        ],
      ),
    );
  }
}

