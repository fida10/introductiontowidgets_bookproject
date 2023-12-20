import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextLayout extends StatelessWidget {
  const TextLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        'Flutter is challenging but I won\'t surrender',
        style: GoogleFonts.leckerliOne(
          fontSize: 40,
        ),
      ),
      Text('Wrappable text, no issue',
          style: Theme.of(context).textTheme.titleLarge),
      const Text(
          'What is the purpose of life? Is it to learn flutter? To create enriching UI experiences? I don\'t know but I guess I\'m here and I will not quit.'),
    ]);
  }
}
