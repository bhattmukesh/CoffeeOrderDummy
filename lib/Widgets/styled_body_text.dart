import 'package:flutter/material.dart';

class StyledBodyText extends StatelessWidget {
  //const StyledBodyText(String s, {super.key, required this.text});

  final String text;
  final double fontsize;

  const StyledBodyText({super.key, required this.text, required this.fontsize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.brown[900],
        fontWeight: FontWeight.bold,
        fontSize: fontsize,
      ),
    );
  }
}
