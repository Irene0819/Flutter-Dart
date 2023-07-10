import 'package:all_in_one_application/pages/cubes_page/cubes.dart';
import 'package:all_in_one_application/pages/downloading_page/downloading_list.dart';
import 'package:all_in_one_application/pages/list_view_example_page/sample_app.dart';
import 'package:all_in_one_application/pages/registration/registration_page.dart';
import 'package:all_in_one_application/pages/water_rounds_page/rounds_on_water.dart';
import 'package:all_in_one_application/theme/app_colors.dart';
import 'package:all_in_one_application/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

part 'widgets/app_button.dart';
part 'widgets/app_bar.dart';

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
      appBar: ApplicationsAppBar(
          appBarIcon: 'assets/icons/application.png',
          iconWidth: 27,
          iconHeight: 27,
          appBarTextStyle: AppTextStyle.italic25w400,
          rowAlignment: MainAxisAlignment.center,
          textAlignment: TextAlign.center,
          appBarColor: AppColors.color660066,
          appBarText: 'Applications'),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.count(
          scrollDirection: Axis.vertical,
          crossAxisCount: 2,
          children: [
            AppsButton(
              appImage: 'assets/icons/pyramid.png',
              appName: 'Пирамидка',
              onTapEvent: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Cubes(),
                  ),
                );
              },
            ),
            AppsButton(
              appImage: 'assets/icons/download.png',
              appName: 'Загрузка',
              onTapEvent: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DownloadingList(),
                  ),
                );
              },
            ),
            AppsButton(
              appImage: 'assets/icons/profile.png',
              appName: 'Sample App',
              onTapEvent: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SampleApp(),
                  ),
                );
              },
            ),
            AppsButton(
              appImage: 'assets/icons/round.png',
              appName: 'Rounds on water',
              onTapEvent: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RoundsOnWater(),
                  ),
                );
              },
            ),
            AppsButton(
              appImage: 'assets/icons/registration.png',
              appName: 'Registration',
              onTapEvent: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NewProfile(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
