//import 'package:introductiontowidgets_bookproject/immutable_widget.dart'; //needed for v1 of the scaffold

import 'package:flutter/material.dart';
import 'package:introductiontowidgets_bookproject/text_layout.dart';

/// `BasicScreen` is a stateless widget, which describes part of the user interface which can depend on
/// configuration information in the constructor and ambient state derived from the context but does not
/// depend on any mutable state.
class BasicScreen extends StatelessWidget {
  /// The constructor takes an optional key argument which is passed to the super class.
  const BasicScreen({super.key});

  /// The build method describes the part of the user interface represented by this widget.
  @override
  Widget build(BuildContext context) {
    /// `Scaffold` is a top-level container which provides a framework to implement the basic material design layout structure.
    /// It provides APIs for showing drawers, snack bars, and bottom sheets.
    return Scaffold(
      /*
      // v1 of scaffold, with dynamic image

      // `AppBar` is a material design app bar which typically appears at the top of the screen and contains a title and an area for actions.
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('Flutter sample appbar title'),
        actions: const [
          // `Padding` is a widget that insets its child by the given padding.
          // In this case, it is used to provide some space around the `Icon` widget.
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.edit),
          )
        ],
      ),

      // `Column` is a widget that displays its children in a vertical array.
      // Here, it is used to arrange its children vertically.
      body: Column(
        children: [
          // `AspectRatio` is a widget that attempts to size the width of the child to a specific aspect ratio.
          // Here, it is used to provide a 1:1 aspect ratio for the `ImmutableWidget`.
          const AspectRatio(
            aspectRatio: 1.0,
            child: ImmutableWidget(),
          ),
          // `TextLayout` is a custom widget defined in another file.
          // It is used here as a child of the `Column` widget.
          const TextLayout(),
          // `Divider` is a thin horizontal line, with padding on either side.
          // It is used here to visually separate different parts of the `Column`.
          const Divider(),
          // `RichText` is a widget that displays text that uses multiple different styles.
          // Here, it is used to display a text with different styles.
          RichText(
            text: const TextSpan(
              text: 'Flutter text is ',
              style: TextStyle(fontSize: 22, color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                  text: 'really ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                  children: [
                    TextSpan(
                      text: 'powerful.',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationStyle: TextDecorationStyle.double,
                        fontSize: 40
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),

      // `Drawer` is a material design panel that slides in horizontally from the edge of a `Scaffold` to show navigation links in an application.
      drawer: Drawer(
          child: Container(
              color: Colors.lightBlue,
              child: const Center(
                child: Text("This is a drawer!"),
              ))),
      // v1 of scaffold ends
      */

      // v2 of scaffold, with image

      // `Column` is a widget that displays its children in a vertical array.
      // Here, it is used to arrange its children vertically.
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // `Semantics` is a widget that annotates the widget tree with a description of the meaning of the widgets.
          // Here, it is used to provide a semantic label for the `Image.asset` widget.
          Semantics(
            image: true,
            label: 'A generated dart logo',
            // `Image.asset` is a widget that displays an image stored as an asset in the app bundle.
            // Here, it is used to display an image from the app's assets.
            child: Image.asset('assets/dart.jpg'),
          ),
          // `TextLayout` is a custom widget defined in another file.
          // It is used here as a child of the `Column` widget.
          const TextLayout(),
        ],
      ),
    );
  }
}
