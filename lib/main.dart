import 'package:flutter/material.dart';
import 'package:introductiontowidgets_bookproject/basic_screen.dart';

/// The main function is the entry point of the application.
/// When Dart starts, it calls this function.
void main() => runApp(const StaticApp());

/// `StaticApp` is a stateless widget, which describes part of the user interface which can depend on
/// configuration information in the constructor and ambient state derived from the context but does not
/// depend on any mutable state.
class StaticApp extends StatelessWidget {
  /// The constructor takes an optional key argument which is passed to the super class.
  const StaticApp({super.key});

  /// The build method describes the part of the user interface represented by this widget.
  @override
  Widget build(BuildContext context) {
    /// `MaterialApp` is a convenience widget that wraps a number of widgets that are commonly required for applications implementing Material Design.
    /// It builds upon a WidgetsApp by adding material-design specific functionality.
    return MaterialApp(
      /// The `title` is the application's human-readable title.
      title: 'Chapter Four - Flutter Demo',

      /// The `theme` is the colors, typography, and shapes that define your app's visual design.
      theme: ThemeData(
        /// The `primarySwatch` is the primary color palette of the app.
        primarySwatch: Colors.amber,
      ),

      /// The `home` is the default route of the app (the "/" route), which is the screen displayed when the app is launched with no other route specified.
      home: const BasicScreen(),
    );
  }
}
