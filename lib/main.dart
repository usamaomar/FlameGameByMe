import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame_game/adventure.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyCrate extends SpriteComponent {
  MyCrate() : super(size: Vector2.all(200));

  @override
  Future<void> onLoad() async {
    sprite = await Sprite.load('player.png');
  }
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.fullScreen;
  Flame.device.setLandscape();

  Adventure game = Adventure();

  runApp(
    GameWidget(game: kDebugMode ? Adventure() : game),
  );
}
