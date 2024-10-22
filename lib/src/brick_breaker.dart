import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
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

  @override
  FutureOr<void> onLoad() async {
    super.onLoad();

    camera.viewfinder.anchor = Anchor.topLeft;
    world.add(PlayArea());
  }
}