import 'package:app_nice_beer/app/utils/custom_colors.dart';
import 'package:flutter/material.dart';

import '../home_controller.dart';

class ButtomRandom extends StatelessWidget {
  const ButtomRandom({
    Key key,
    @required this.controller,
  }) : super(key: key);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.getRandomBeer();
      },
      child: Container(
        width: double.infinity,
        height: 46,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: CustomColors.texasRose),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: Text('Random Beer')),
        ),
      ),
    );
  }
}
