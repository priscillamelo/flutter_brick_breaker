import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'package:flutter_brick_breaker/src/brick_breaker.dart';

void main() {
  final gameFlame = BrickBreaker();
  runApp(GameWidget(game: gameFlame));
}

/* class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
} */
