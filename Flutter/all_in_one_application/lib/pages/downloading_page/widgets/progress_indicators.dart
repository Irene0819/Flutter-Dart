part of '../downloading_list.dart';

class ProgressIndicators extends StatelessWidget {
  const ProgressIndicators({super.key, required this.progressValue});

  final double progressValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(
          flex: 30,
        ),
        ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          child: LinearProgressIndicator(
            backgroundColor: AppColors.color3b78af,
            color: AppColors.color213e78,
            minHeight: 15,
            value: progressValue,
          ),
        ),
        const Spacer(),
        CircularProgressIndicator(
          backgroundColor: AppColors.color3b78af,
          color: AppColors.color213e78,
          strokeWidth: 6.0,
          value: progressValue,
        ),
        const Spacer(),
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(10.0),
            ),
            color: Colors.black.withOpacity(0.5),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 10,
            ),
            child: Text(
              'Download in progress (${(progressValue * 100).round()}%)',
              textAlign: TextAlign.center,
              style: AppTextStyle.candice30w400
                  .copyWith(color: AppColors.colorffffff),
            ),
          ),
        ),
        const Spacer(
          flex: 30,
        )
      ],
    );
  }
}
