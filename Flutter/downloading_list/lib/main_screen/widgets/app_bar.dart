part of '../downloading_list.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      backgroundColor: Colors.black.withOpacity(0.5),
      elevation: 0,
      centerTitle: true,
      title: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          'Downloading Simulator',
          textAlign: TextAlign.center,
          style:
              AppTextStyle.candice30w400.copyWith(color: AppColors.colorffffff),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
