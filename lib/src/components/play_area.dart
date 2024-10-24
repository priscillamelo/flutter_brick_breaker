import 'dart:async';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_brick_breaker/src/brick_breaker.dart';
import 'package:flutter_brick_breaker/src/config.dart';

class PlayArea extends RectangleComponent with HasGameReference<BrickBreaker> {
  PlayArea()
      : super(
            paint: Paint()..color = const Color(0xfff2e8cf),
            children: [RectangleHitbox()]);

  @override
  FutureOr<void> onLoad() async {
    super.onLoad();
    size = Vector2(gameWidth, gameHeight);
  }
}
