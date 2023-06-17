part of '../downloading_list.dart';

class AllertWidget extends StatelessWidget {
  const AllertWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(10.0),
          ),
          color: Colors.black.withOpacity(0.5),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: Text(
            'Press button to start downloading...',
            textAlign: TextAlign.center,
            style: AppTextStyle.candice30w400
                .copyWith(color: AppColors.colore5ecff),
          ),
        ),
      ),
    );
  }
}
