import 'package:flutter/material.dart';

class ImagesWidget extends StatelessWidget {
  ImagesWidget({super.key, required this.imgPath});
  final String imgPath;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imgPath,
      width: 25,
      color: Colors.brown[100],
      colorBlendMode: BlendMode.multiply,
    );
  }
}
