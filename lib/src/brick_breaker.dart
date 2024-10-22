import 'dart:async';
import 'dart:math' as math;

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter_brick_breaker/src/components/components.dart';
import 'package:flutter_brick_breaker/src/components/play_area.dart';
import 'package:flutter_brick_breaker/src/config.dart';

class BrickBreaker extends FlameGame with HasCollisionDetection {
  BrickBreaker()
      : super(
          camera: CameraComponent.withFixedResolution(
            width: gameWidth,
            height: gameHeight,
          ),
        );

  double get width => size.x;
  double get height => size.y;
  final random = math.Random();

  @override
  FutureOr<void> onLoad() async {
    super.onLoad();

    camera.viewfinder.anchor = Anchor.topLeft;
    world.add(PlayArea());

    world.add(
      Ball(
          // cria um objeto Vector2 definido para a mesma direção que a Vector2 original, mas reduzido para uma distância de 1. Isso mantém a velocidade da bola consistente, independentemente da direção
          velocity: Vector2((random.nextDouble() - 0.5) * width, height * 0.2)
              .normalized()
            ..scale(height / 4), // dimensionar um Vector2 por um valor escalar
          position: size / 2, // reduz pela metade o tamanho do jogo
          radius: ballRadius),
    );

    debugMode = true; // ativa a tela de depuração
  }
}
