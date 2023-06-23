part of '../rounds_on_water.dart';

class CircleAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CircleAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: AppColors.colorffffff,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
