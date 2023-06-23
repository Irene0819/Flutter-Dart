part of '../all_in_one_page.dart';

class AppsButton extends StatelessWidget {
  const AppsButton({
    super.key,
    required this.appImage,
    required this.appName,
    required this.onTapEvent,
  });

  final String appImage;
  final String appName;
  final VoidCallback onTapEvent;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      child: GestureDetector(
        onTap: onTapEvent,
        child: Container(
          width: MediaQuery.of(context).size.width / 2.5,
          height: MediaQuery.of(context).size.height / 4,
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
                scale: 5,
              ),
              Divider(
                color: AppColors.color660066,
                indent: 20,
                endIndent: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 3,
                  right: 3,
                ),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    appName,
                    style: const TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
