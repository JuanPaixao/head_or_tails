import 'package:flutter/material.dart';
import 'package:head_or_tails/result.dart';

import 'game.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/", //rota inicial vai ser o main.dart
    routes: {"/result": (context) => Result()}, //nomeando rota
    home: Game(),
  ));
}
