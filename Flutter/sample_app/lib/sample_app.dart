import 'package:flutter/material.dart';
import 'package:sample_app/theme/colors.dart';
import 'package:sample_app/theme/text_style.dart';

class SampleApp extends StatelessWidget {
  const SampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colore5ecff,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Sample App',
            style: AppTextStyle.candice30w400,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 120,
            color: AppColors.color6faed7,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    width: 90,
                    height: 90,
                    color: AppColors.colore5ecff,
                    child: Center(
                      child: Text(
                        '+ Add',
                        style: AppTextStyle.candice30w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
