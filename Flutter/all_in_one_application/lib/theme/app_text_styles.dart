import 'package:all_in_one_application/theme/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTextStyle {
  ///All in one texts styles
  static TextStyle italic25w400 = TextStyle(
    fontFamily: 'Italic',
    fontSize: 25,
    fontWeight: FontWeight.w400,
    color: AppColors.colorffffff,
  );

  static TextStyle italic20w400 = const TextStyle(
    fontFamily: 'Italic',
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );

  /// Cubes text styles
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

  /// Download text styles
  static TextStyle candice30w400 = const TextStyle(
    fontFamily: 'Candice',
    fontSize: 30,
    fontWeight: FontWeight.w400,
  );

  /// ListView texts styles
  static TextStyle candice25w300 = const TextStyle(
    fontFamily: 'Candice',
    fontSize: 25,
    fontWeight: FontWeight.w300,
  );

  ///Circles texts styles
  static TextStyle lobster24w400 = TextStyle(
    fontFamily: 'Lobster',
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: AppColors.colorffffff,
    letterSpacing: 6,
  );
  static TextStyle lobster24w4000 = TextStyle(
    fontFamily: 'Lobster',
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: AppColors.color000000,
    letterSpacing: 6,
  );
}
