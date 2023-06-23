import 'package:all_in_one_application/theme/app_colors.dart';
import 'package:all_in_one_application/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class Cubes extends StatelessWidget {
  const Cubes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorb3ecec,
      appBar: AppBar(
        backgroundColor: AppColors.color3bd6c6,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.view_in_ar_rounded,
              size: 35,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              'Cubes',
              style: AppTextStyle.roboto30w400,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Piramida(
              piramidaMAlignment: MainAxisAlignment.start,
              piramidaCAlignment: CrossAxisAlignment.center,
            ),
            Piramida(
              piramidaMAlignment: MainAxisAlignment.center,
              piramidaCAlignment: CrossAxisAlignment.center,
            ),
            Piramida(
              piramidaMAlignment: MainAxisAlignment.end,
              piramidaCAlignment: CrossAxisAlignment.center,
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Piramida extends StatelessWidget {
  Piramida({
    required this.piramidaMAlignment,
    required this.piramidaCAlignment,
    super.key,
  });

  MainAxisAlignment piramidaMAlignment;
  CrossAxisAlignment piramidaCAlignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: piramidaMAlignment,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Square(
          elementSize: 50,
          elementColor: AppColors.colorfe0000,
          elementName: '1',
        ),
        Square(
          elementSize: 70,
          elementColor: AppColors.color011efe,
          elementName: '2',
        ),
        Square(
          elementSize: 90,
          elementColor: AppColors.color0bff01,
          elementName: '3',
        ),
      ],
    );
  }
}

class Square extends StatelessWidget {
  const Square({
    required this.elementSize,
    required this.elementColor,
    required this.elementName,
    super.key,
  });

  final double elementSize;
  final Color elementColor;
  final String elementName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: elementSize,
      height: elementSize,
      color: elementColor,
      child: Center(
        child: Text(
          elementName,
          style: AppTextStyle.roboto20w400,
        ),
      ),
    );
  }
}
