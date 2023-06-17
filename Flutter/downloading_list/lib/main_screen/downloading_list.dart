import 'dart:async';

import 'package:downloading_list/theme/colors.dart';
import 'package:downloading_list/theme/text_style.dart';
import 'package:flutter/material.dart';

part '../main_screen/widgets/app_bar.dart';
part '../main_screen/widgets/button_widget.dart';
part '../main_screen/widgets/progress_indicators.dart';
part '../main_screen/widgets/allert_widget.dart';

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

  void onButtonPressed() {
    setState(
      () {
        _loading = !_loading;
        _updateProgress();
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
          // image: NetworkImage(
          //     'https://images.wallpaperscraft.ru/image/single/siluet_odinochestvo_art_139903_2160x3840.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        appBar: const AppBarWidget(),
        body: Padding(
            padding: const EdgeInsets.all(35.0),
            child: _loading
                ? ProgressIndicators(progressValue: _progressValue)
                : const AllertWidget()),
        floatingActionButton: FloatigButtonWidget(
          onButtonPressed: onButtonPressed,
        ),
      ),
    );
  }
}
