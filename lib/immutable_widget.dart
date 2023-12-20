import 'package:flutter/material.dart';
import 'dart:math' as math;

/// `ImmutableWidget` is a stateless widget, which describes part of the user interface which can depend on
/// configuration information in the constructor and ambient state derived from the context but does not
/// depend on any mutable state.
class ImmutableWidget extends StatelessWidget {
  /// The constructor takes an optional key argument which is passed to the super class.
  const ImmutableWidget({super.key});

  /// The build method describes the part of the user interface represented by this widget.
  @override
  Widget build(BuildContext context) {
    /// `Container` is a convenience widget that combines common painting, positioning, and sizing widgets.
    /// It can box-decorate its child, optionally needs to be as big as possible, and can optionally align its child.
    return Container(

        /// `BoxDecoration` is an immutable description of how to paint a box.
        /// The box is described by a series of offsets to form a path.
        decoration: const BoxDecoration(color: Colors.green),

        /// The `foregroundDecoration` is a decoration to paint in front of the [child].
        foregroundDecoration: const BoxDecoration(

            /// The `backgroundBlendMode` is the blend mode applied to the [color] or [gradient] background of the box.
            /// If a background color is specified, the box is filled with that color first, then the background is painted.
            backgroundBlendMode: BlendMode.colorBurn,

            /// `LinearGradient` creates a gradient that transitions along a line defined by [begin] and [end].
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xAA0d6123),
                  Color(0x00000000),
                  Color(0xAA0d6123),
                ])),
        child: Padding(
          /// `EdgeInsets.all` Constructs EdgeInsets where all the offsets are `value`.
          padding: const EdgeInsets.all(40),
          child: Transform.rotate(
            /// The `angle` argument is in radians. There are `math.pi` radians in a half circle.
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
  }

  /// This method returns a widget that builds a shiny circle.
  Widget _buildShinyCircle() {
    return Container(
      /// `BoxDecoration` is an immutable description of how to paint a box.
      /// The box is described by a series of offsets to form a path.
      decoration: const BoxDecoration(
        /// `BoxShape.circle` is a circle that represents a box.
        shape: BoxShape.circle,

        /// `RadialGradient` creates a gradient that starts at the center and ends at the edge of the circle.
        gradient: RadialGradient(
            colors: [Colors.lightBlueAccent, Colors.blueAccent],
            center: Alignment(-0.3, -0.5)),

        /// `BoxShadow` is a box shadow that casts a shadow behind a box.
        boxShadow: [BoxShadow(blurRadius: 20)],
      ),
    );
  }
}
