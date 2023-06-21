part of '../sample_app.dart';

class SampleAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SampleAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      elevation: 0,
      centerTitle: true,
      title: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          'Sample App',
          style: AppTextStyle.candice30w400,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
