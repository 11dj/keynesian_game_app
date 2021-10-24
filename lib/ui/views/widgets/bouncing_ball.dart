import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:math';

class BouncingBall extends StatefulWidget {
  final Color color;
  final double size;
  final bool isRandomPosition;
  final double speed;
  const BouncingBall(
      {Key? key,
      required this.color,
      required this.size,
      this.speed = 1,
      this.isRandomPosition = false})
      : super(key: key);

  @override
  _BouncingBallState createState() => _BouncingBallState();
}

class _BouncingBallState extends State<BouncingBall>
    with TickerProviderStateMixin {
  AnimationController? controllerY;
  AnimationController? controllerX;
  double screenHeight = window.physicalSize.height / window.devicePixelRatio;
  double screenWidth = window.physicalSize.width / window.devicePixelRatio;
  double x = 0;
  double y = 0;

  Random random = new Random();

  void initState() {
    super.initState();
    controllerX = AnimationController(
      vsync: this,
      duration: Duration(seconds: (10 ~/ widget.speed)),
      lowerBound: x,
      upperBound: screenWidth,
    );
    controllerY = AnimationController(
      vsync: this,
      duration: Duration(seconds: 60 ~/ widget.speed),
      lowerBound: y,
      upperBound: screenHeight,
    );
    if (widget.isRandomPosition) {
      controllerX?.forward(
          from: random.nextInt(screenWidth.toInt()).toDouble());
      controllerY?.forward(
          from: random.nextInt(screenHeight.toInt()).toDouble());
    }
    controllerX?.addListener(() {
      setState(() {});
    });
    controllerY?.addListener(() {
      setState(() {});
    });

    controllerX?.repeat(reverse: true);
    controllerY?.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: (controllerY!.value - (widget.size / 2)).toDouble(),
        left: (controllerX!.value - (widget.size / 2)).toDouble(),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: widget.color,
          ),
          width: widget.size,
          height: widget.size,
        ));
  }
}
