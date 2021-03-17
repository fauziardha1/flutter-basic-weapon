import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart';
import 'dart:math' as math;

class HomeAnimation extends StatefulWidget {
  @override
  _HomeAnimationState createState() => _HomeAnimationState();
}

class _HomeAnimationState extends State<HomeAnimation> {
  double containerSize = 200;

  double containerTransitionY = 0;

  bool isShown = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: Column(
          children: [
            // buildAnimatedWidget(),

            buildAnimatedSwitter(),
            buildButtonActivation(),
          ],
        ),
      ),
    );
  }

  Widget buildAnimatedSwitter() {
    return AnimatedSwitcher(
      duration: Duration(seconds: 1),
      child: isShown
          ? Image.asset("assets/dash7.png")
          : FlutterLogo(
              size: MediaQuery.of(context).size.width,
            ),
      transitionBuilder: (child, animation) {
        return FadeTransition(
          opacity: animation,
          child: ScaleTransition(
            scale: animation,
            child: child,
          ),
        );
      },
    );
  }

  Widget buildAnimatedWidget() {
    return GestureDetector(
      onTap: () {
        setState(() {
          containerSize = 200 + math.Random().nextInt(100).toDouble();
          containerTransitionY = math.Random().nextInt(100).toDouble();
        });
      },
      child: AnimatedContainer(
          curve: Curves.easeInOut,
          duration: Duration(milliseconds: 1000),
          width: containerSize,
          height: containerSize,
          transform: Matrix4.translation(
            Vector3(0, containerTransitionY, 0),
          ),
          child: Image.asset("assets/dash7.png")),
    );
  }

  Widget buildButtonActivation() {
    return ElevatedButton(
        onPressed: () {
          setState(() {
            isShown = !isShown;
          });
        },
        child: Text("Run Animation"));
  }
}
