import 'dart:async';

import 'package:downloading_list/theme/colors.dart';
import 'package:downloading_list/theme/text_style.dart';
import 'package:flutter/material.dart';

class DownloadingList extends StatefulWidget {
  const DownloadingList({super.key});

  @override
  State<DownloadingList> createState() {
    return _DownloadingListState();
  }
}

class _DownloadingListState extends State<DownloadingList> {
  late bool _loading;
  late double _progressValue;

  @override
  void initState() {
    _loading = false;
    _progressValue = 0.0;
    super.initState();
  }

  void _updateProgress() {
    const oneSec = Duration(milliseconds: 10);
    Timer.periodic(
      oneSec,
      (timer) {
        setState(
          () {
            _progressValue += 0.001;
            if (_progressValue.toStringAsFixed(1) == '1.0') {
              _loading = false;
              timer.cancel();
              _progressValue = 0.0;
              return;
            }
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/photo.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Downloading Simulator',
            style: AppTextStyle.candice30w400
                .copyWith(color: AppColors.colorffffff),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(35.0),
          child: _loading
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                        value: _progressValue,
                      ),
                    ),
                    const Spacer(),
                    CircularProgressIndicator(
                      backgroundColor: AppColors.color3b78af,
                      color: AppColors.color213e78,
                      strokeWidth: 6.0,
                      value: _progressValue,
                    ),
                    const Spacer(),
                    Text(
                      'Download in progress (${(_progressValue * 100).round()}%)',
                      textAlign: TextAlign.center,
                      style: AppTextStyle.candice30w400
                          .copyWith(color: AppColors.colorffffff),
                    ),
                    const Spacer(
                      flex: 30,
                    )
                  ],
                )
              : Center(
                  child: Text(
                    'Press button to start downloading...',
                    textAlign: TextAlign.center,
                    style: AppTextStyle.candice30w400
                        .copyWith(color: AppColors.colore5ecff),
                  ),
                ),
        ),
        floatingActionButton: SizedBox(
          width: 80,
          height: 80,
          child: FloatingActionButton(
            onPressed: () {
              setState(
                () {
                  _loading = !_loading;
                  _updateProgress();
                },
              );
            },
            backgroundColor: AppColors.color3b78af,
            child: Icon(
              Icons.downloading_rounded,
              size: 55,
              color: AppColors.colore5ecff,
            ),
          ),
        ),
      ),
    );
  }
}
