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
    return Scaffold(
      backgroundColor: AppColors.colore5ecff,
      appBar: AppBar(
        backgroundColor: AppColors.color213e78,
        centerTitle: true,
        title: const Text(
          'Downloading Simulator',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: _loading
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(40.0),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                      child: LinearProgressIndicator(
                        minHeight: 15,
                        value: _progressValue,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: CircularProgressIndicator(
                      backgroundColor: AppColors.color89d6fb,
                      strokeWidth: 5.0,
                      value: _progressValue,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Download in progress (${(_progressValue * 100).round()}%)',
                    style: AppTextStyle.lobster24w400,
                  ),
                ],
              )
            : Center(
                child: Text(
                  'Press button to start downloading...',
                  style: AppTextStyle.lobster24w400,
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
    );
  }
}
/// TO DO LIST
/// Импортировать и применить шрифт