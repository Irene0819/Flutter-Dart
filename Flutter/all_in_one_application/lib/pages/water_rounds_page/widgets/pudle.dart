// ignore_for_file: non_constant_identifier_names

part of '../rounds_on_water.dart';

class Pudle extends StatelessWidget {
  const Pudle({
    required this.PudleLocation,
    required this.PudlePosition,
    required this.PudleColor1,
    required this.PudleColor2,
    required this.PudleColor3,
    required this.PudleColor4,
    required this.PudleColor5,
    required this.TextLocation1,
    required this.TextLocation2,
    super.key,
  });

  final AlignmentGeometry PudleLocation;
  final AlignmentGeometry PudlePosition;
  final Color PudleColor1;
  final Color PudleColor2;
  final Color PudleColor3;
  final Color PudleColor4;
  final Color PudleColor5;
  final AlignmentGeometry TextLocation1;
  final AlignmentGeometry TextLocation2;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: PudleLocation,
      child: Stack(
        alignment: PudlePosition,
        children: [
          Circles(
            circleSize: 255,
            circleColor: PudleColor1,
            circleText: '5',
            textAlignment: TextLocation1,
            circleTextStyle: AppTextStyle.lobster24w4000,
          ),
          Circles(
            circleSize: 205,
            circleColor: PudleColor2,
            circleText: '4',
            textAlignment: TextLocation1,
            circleTextStyle: AppTextStyle.lobster24w4000,
          ),
          Circles(
            circleSize: 155,
            circleColor: PudleColor3,
            circleText: '3',
            textAlignment: TextLocation1,
            circleTextStyle: AppTextStyle.lobster24w4000,
          ),
          Circles(
            circleSize: 105,
            circleColor: PudleColor4,
            circleText: '2',
            textAlignment: TextLocation1,
            circleTextStyle: AppTextStyle.lobster24w4000,
          ),
          Circles(
            circleSize: 55,
            circleColor: PudleColor5,
            circleText: '1',
            textAlignment: TextLocation2,
            circleTextStyle: AppTextStyle.lobster24w4000,
          ),
        ],
      ),
    );
  }
}
