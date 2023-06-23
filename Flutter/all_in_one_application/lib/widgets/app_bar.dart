part of '../all_in_one_page.dart';

class ApplicationsAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const ApplicationsAppBar(
      {required this.appBarIcon,
      required this.iconWidth,
      required this.iconHeight,
      required this.appBarTextStyle,
      required this.rowAlignment,
      required this.textAlignment,
      required this.appBarColor,
      required this.appBarText,
      super.key});

  final String appBarIcon;
  final double iconWidth;
  final double iconHeight;
  final TextStyle appBarTextStyle;
  final MainAxisAlignment rowAlignment;
  final TextAlign textAlignment;
  final Color appBarColor;
  final String appBarText;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      elevation: 0,
      centerTitle: true,
      backgroundColor: appBarColor,
      title: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: rowAlignment,
          children: [
            Image.asset(
              appBarIcon,
              width: iconWidth,
              height: iconHeight,
            ),
            const SizedBox(
              width: 3,
            ),
            Text(
              appBarText,
              textAlign: textAlignment,
              style: appBarTextStyle,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
