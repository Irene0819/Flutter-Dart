import 'package:all_in_one_application/theme/app_colors.dart';
import 'package:all_in_one_application/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

part './widgets/circle.dart';
part './widgets/pudle.dart';

class RoundsOnWater extends StatelessWidget {
  const RoundsOnWater({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colore5ecff,
      appBar: AppBar(
        backgroundColor: AppColors.color221b45,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Rounds on water',
              style: AppTextStyle.lobster24w400,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Pudle(
              PudleLocation: Alignment.topLeft,
              PudlePosition: Alignment.center,
              PudleColor1: AppColors.color7b51fb,
              PudleColor2: AppColors.colora57efb,
              PudleColor3: AppColors.colorc9a8ff,
              PudleColor4: AppColors.colore6d0ff,
              PudleColor5: AppColors.colorfef4ff,
              TextLocation1: Alignment.topCenter,
              TextLocation2: Alignment.center,
            ),
            Pudle(
              PudleLocation: Alignment.centerRight,
              PudlePosition: Alignment.center,
              PudleColor1: AppColors.color0f3a33,
              PudleColor2: AppColors.color217e6c,
              PudleColor3: AppColors.color61baa8,
              PudleColor4: AppColors.colora3d7ca,
              PudleColor5: AppColors.colord2e7e0,
              TextLocation1: Alignment.topCenter,
              TextLocation2: Alignment.center,
            ),
            Pudle(
              PudleLocation: Alignment.bottomLeft,
              PudlePosition: Alignment.center,
              PudleColor1: AppColors.color2211a43,
              PudleColor2: AppColors.color213e78,
              PudleColor3: AppColors.color3b78af,
              PudleColor4: AppColors.color6faed7,
              PudleColor5: AppColors.colore5ecff,
              TextLocation1: Alignment.topCenter,
              TextLocation2: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
