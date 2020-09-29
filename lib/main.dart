import 'package:flutter/material.dart';
import 'package:flame/flame.dart';
import 'package:flame/util.dart';
import 'package:flutter/services.dart';
import 'package:BoxGame/box-game.dart';
import 'package:flutter/gestures.dart';


void main() async {
  Util flameUtil = Util();
  await flameUtil.fullScreen();
  await flameUtil.setOrientation(DeviceOrientation.portraitUp);

  BoxGame game = BoxGame();
  TapGestureRecognizer tapper = TapGestureRecognizer();
  tapper.onTapDown = game.onTapDown;
  runApp(game.widget);
  // ignore: deprecated_member_use
  flameUtil.addGestureRecognizer(tapper);
}