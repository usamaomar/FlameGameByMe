import 'dart:async';
import 'package:flame/camera.dart';
import 'package:flame/components.dart';
import 'package:flame_tiled/flame_tiled.dart';

class Level extends World{

  late TiledComponent level;

  @override
  FutureOr<void> onLoad() async{

    final tiledComponent = await TiledComponent.load("untitled.tmx", Vector2.all(19));


    // add(MyCrate());
     add(tiledComponent);
    return super.onLoad();
  }
}