import 'dart:async';
import 'package:flame/camera.dart';
import 'main.dart';

class Level extends World{

  @override
  FutureOr<void> onLoad() {
     add(MyCrate());
    return super.onLoad();
  }
}