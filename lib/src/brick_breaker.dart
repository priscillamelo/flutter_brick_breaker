import 'dart:async';
import 'dart:math' as math;

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter_brick_breaker/src/components/components.dart';
import 'package:flutter_brick_breaker/src/components/play_area.dart';
import 'package:flutter_brick_breaker/src/config.dart';

class BrickBreaker extends FlameGame {
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
          velocity: Vector2((random.nextDouble() - 0.5) * width, height * 0.2)
              .normalized()
            ..scale(height / 4),
          position: size / 2,
          radius: ballRadius),
    );

    debugMode = true;
  }
}
