part of '../rounds_on_water.dart';

class Circles extends StatelessWidget {
  const Circles({
    required this.circleSize,
    required this.circleColor,
    required this.circleText,
    required this.textAlignment,
    required this.circleTextStyle,
    super.key,
  });

  final double circleSize;
  final Color circleColor;
  final String circleText;
  final AlignmentGeometry textAlignment;
  final TextStyle circleTextStyle;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: circleSize,
      height: circleSize,
      decoration: BoxDecoration(
        color: circleColor,
        borderRadius: BorderRadius.circular(160),
      ),
      child: Align(
        alignment: textAlignment,
        child: Text(
          circleText,
          style: AppTextStyle.lobster24w4000,
        ),
      ),
    );
  }
}
