import 'package:all_in_one_application/theme/app_colors.dart';
import 'package:all_in_one_application/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class AllInOnePage extends StatefulWidget {
  const AllInOnePage({super.key});

  @override
  State<AllInOnePage> createState() => _AllInOnePageState();
}

class _AllInOnePageState extends State<AllInOnePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorfef4ff,
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppColors.color660066,
        title: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Applications',
            textAlign: TextAlign.center,
            style: AppTextStyle.italic25w400,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.count(
          scrollDirection: Axis.vertical,
          crossAxisCount: 2,
          children: const [],
        ),
      ),
    );
  }
}
