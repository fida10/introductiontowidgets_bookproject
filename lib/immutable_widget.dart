import 'package:flutter/material.dart';
import 'dart:math' as math;
//import dart math library; when we need it,
//we use the alias 'Math', which we specified here

class ImmutableWidget extends StatelessWidget {
  const ImmutableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(color: Colors.green),
        /*
        Box decorations are useful widgets that can do a variety of things
        They can add borders, shadows, colors and gradients
        They can also draw shapes/images (rectangles or circles)
        */

        foregroundDecoration: const BoxDecoration(
            backgroundBlendMode: BlendMode.colorBurn,
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xAA0d6123),
                  Color(0x00000000),
                  Color(0xAA0d6123),
                ])),
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Transform.rotate(
            angle: 180 / math.pi,
            child: Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.purple,
                boxShadow: [
                  BoxShadow(
                    color: Colors.deepPurple.withAlpha(120),
                    spreadRadius: 4,
                    blurRadius: 10,
                    offset: Offset.fromDirection(1.0, 30),
                  ),
                ],
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: _buildShinyCircle()),
            ),
          ),
        ));

    //a prime example of nested widgets
    //here, we are creating containers within one another and setting their properties
    //color is...well, color. that is the color of the container
    //EdgeInsets is used to create uniform padding all around a widget
    //here, we are specifying that we want a padding (40 pixels around the purple box) (and 50 pixels in the one within around the blue box) wide that surrounds the box
    //padding is colorless, so the parent ends up filling that color in this case
  }

  Widget _buildShinyCircle() {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
            colors: [Colors.lightBlueAccent, Colors.blueAccent],
            center: Alignment(-0.3, -0.5)),
        boxShadow: [BoxShadow(blurRadius: 20)],
      ),
    );
  }
  //this method will return a widget (specifically a container)
  //the container contains a
}
