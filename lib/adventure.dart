import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame_game/Level.dart';

class Adventure extends FlameGame {
  late final CameraComponent cam;

  final world = Level();

  @override
  FutureOr<void> onLoad() {
    cam = CameraComponent.withFixedResolution(
        width: 360, height: 640, world: world);

    cam.viewfinder.anchor = Anchor.centerLeft;

    addAll([cam, world]);
    return super.onLoad();
  }
}
