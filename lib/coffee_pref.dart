import 'package:flutter/material.dart';
import 'package:number_trivia_dummy/Widgets/filled_buttons.dart';
import 'package:number_trivia_dummy/Widgets/images.dart';
import 'package:number_trivia_dummy/Widgets/styled_body_text.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int Strength = 1;
  int Sugars = 1;

  void increaseStrenght() {
    setState(() {
      Strength = Strength < 5 ? Strength + 1 : 1;
    });
  }

  void increaseSugars() {
    setState(() {
      Sugars = Sugars < 5 ? Sugars + 1 : 0;
    });
  }

  void decreaseStrenght() {
    setState(() {
      Strength = Strength < 5 && Strength > 1 ? Strength - 1 : 1;
    });
  }

  void decreaseSugars() {
    setState(() {
      Sugars = Sugars < 5 && Sugars > 0 ? Sugars - 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            StyledBodyText(text: "Intensity: ", fontsize: 15),
            // Text('$Strength'),
            for (int i = 0; i < Strength; i++)
              ImagesWidget(imgPath: 'assets/images/coffee_bean.png'),

            Expanded(child: SizedBox()),
            FilledButtonWidgets(function: increaseStrenght, btnName: "+"),
            SizedBox(width: 5),
            FilledButtonWidgets(function: decreaseStrenght, btnName: "-"),
          ],
        ),
        Row(
          children: [
            StyledBodyText(text: "Sugars : ", fontsize: 15),
            if (Sugars == 0) const Text('No Sugars....'),

            //Text('$Sugars'),
            for (int i = 0; i < Sugars; i++)
              ImagesWidget(imgPath: 'assets/images/sugar_cube.png'),

            Expanded(child: SizedBox()),
            FilledButtonWidgets(function: increaseSugars, btnName: "+"),

            SizedBox(width: 5),
            FilledButtonWidgets(function: decreaseSugars, btnName: "-"),
          ],
        ),
      ],
    );
  }
}
