import 'package:example/theme/colors.dart';
import 'package:flutter/material.dart';

abstract class AppTextStyle {
  static TextStyle roboto30w400 = TextStyle(
    color: AppColors.colorffffff,
    fontSize: 30,
  );
  static TextStyle roboto45w600 = TextStyle(
    color: AppColors.color005073,
    fontSize: 45,
    fontWeight: FontWeight.w600,
  );
  static TextStyle roboto20w400 = TextStyle(
    color: AppColors.colorffffff,
    fontSize: 20,
  );
}
