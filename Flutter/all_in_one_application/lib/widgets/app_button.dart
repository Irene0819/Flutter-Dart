part of '../all_in_one_page.dart';

class AppsContainer extends StatelessWidget {
  const AppsContainer({
    super.key,
    required this.appImage,
    required this.appName,
  });

  final String appImage;
  final String appName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        color: AppColors.color660066.withOpacity(0.2),
      ),
      child: Column(
        children: [
          Image.asset(
            appImage,
            width: 130,
            height: 130,
          ),
          const Divider(),
          Text(
            appName,
            style: AppTextStyle.italic20w400,
          ),
        ],
      ),
    );
  }
}
