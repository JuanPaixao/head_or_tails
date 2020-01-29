import 'dart:math';
import 'package:flutter/material.dart';
import 'package:head_or_tails/result.dart';

class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  void _gameResult() {
    Random random = new Random();
    int randomValue = random.nextInt(10);
    bool res = false;
    if (randomValue < 6) {
      res = true;
    } else {
      res = false;
    }
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Result(result: res)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
          padding: EdgeInsets.only(top: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: GestureDetector(
                    onTap: () {
                      _gameResult();
                    },
                    child: Image.asset("images/botao_jogar.png"),
                  ))
            ],
          )),
    );
  }
}
