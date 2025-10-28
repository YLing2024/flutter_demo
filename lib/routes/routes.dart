import 'package:flutter/widgets.dart';
import 'package:flutter_demo/main.dart';
import 'package:flutter_demo/pages/animation/animation_test.dart';

Map<String, WidgetBuilder> routes = {
  //首页
  "/": (context) => const MyHomePage(title: 'Flutter Demo Home Page'),
  "/animation/animationTest": (context) => AnimationTest(),
};
