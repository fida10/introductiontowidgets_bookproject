import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// `TextLayout` is a stateless widget, which describes part of the user interface which can depend on
/// configuration information in the constructor and ambient state derived from the context but does not
/// depend on any mutable state.
class TextLayout extends StatelessWidget {
  /// The constructor takes an optional key argument which is passed to the super class.
  const TextLayout({super.key});

  /// The build method describes the part of the user interface represented by this widget.
  @override
  Widget build(BuildContext context) {
    /// `Column` is a widget that displays its children in a vertical array.
    /// Here, it is used to arrange its children vertically.
    return Column(
      /// `crossAxisAlignment` is how the children should be placed along the cross axis.
      /// Here, it is set to start, meaning the children are aligned at the start of the column.
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// `Text` is a widget that displays a short, simple piece of text.
        /// Here, it is used to display a string of text with a custom font style.
        Text(
          'Flutter is challenging but I won\'t surrender',

          /// `GoogleFonts.leckerliOne` is a method that returns a `TextStyle` object that uses the Leckerli One font.
          /// The `fontSize` property sets the size of the font.
          style: GoogleFonts.leckerliOne(
            fontSize: 40,
          ),
        ),

        /// `Text` is a widget that displays a short, simple piece of text.
        /// Here, it is used to display a string of text with a style from the current theme.
        Text('Wrappable text, no issue',

            /// `Theme.of(context).textTheme.titleLarge` is a method that gets the large title text style from the current theme.
            style: Theme.of(context).textTheme.titleLarge),

        /// `Text` is a widget that displays a short, simple piece of text.
        /// Here, it is used to display a string of text with the default style.
        const Text(
            'What is the purpose of life? Is it to learn flutter? To create enriching UI experiences? I don\'t know but I guess I\'m here and I will not quit.'),
      ],
    );
  }
}
