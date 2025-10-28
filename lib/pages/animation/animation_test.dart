import 'package:flutter/material.dart';

class AnimationTest extends StatefulWidget {
  const AnimationTest({super.key});

  @override
  State<AnimationTest> createState() => _AnimationTestState();
}

class _AnimationTestState extends State<AnimationTest>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController = AnimationController(
      vsync: this,
      value: 0.4,
      lowerBound: 80,
      upperBound: 280,
      duration: Duration(
        seconds: 1,
      ));

  void _startAnimate() {
    _animationController.repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation Test"),
      ),
      body: Container(
        child: AnimatedBuilder(
            animation: _animationController,
            builder: (context, widget) {
              return GestureDetector(
                onTap: () {
                  _startAnimate();
                },
                child: Container(
                  width: _animationController.value,
                  height: _animationController.value,
                  decoration: const BoxDecoration(
                      color: Colors.blue, shape: BoxShape.circle),
                ),
              );
            }),
      ),
    );
  }
}
