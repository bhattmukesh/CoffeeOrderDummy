import 'package:flutter/material.dart';

class FilledButtonWidgets extends StatelessWidget {
  FilledButtonWidgets({
    super.key,
    required this.function,
    required this.btnName,
  });

  final Function() function;
  final String btnName;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: function,
      style: FilledButton.styleFrom(
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
      ),
      child: Text(btnName),
    );
  }
}
