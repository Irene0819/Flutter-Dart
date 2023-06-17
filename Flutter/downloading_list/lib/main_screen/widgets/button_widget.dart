part of '../downloading_list.dart';

class FloatigButtonWidget extends StatelessWidget {
  const FloatigButtonWidget({super.key, required this.onButtonPressed});

  final VoidCallback onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 70,
      child: FloatingActionButton(
        elevation: 0,
        onPressed: () {
          onButtonPressed();
        },
        backgroundColor: AppColors.color000000.withOpacity(0.5),
        child: Icon(
          Icons.downloading_rounded,
          size: 40,
          color: AppColors.colorffffff,
        ),
      ),
    );
  }
}
