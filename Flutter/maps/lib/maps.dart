import 'package:flutter/material.dart';
import 'package:maps/theme/app_colors.dart';

class Maps extends StatefulWidget {
  const Maps({super.key});

  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: AppColors.colorffffff,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: AppColors.colorffffff,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text(
              'Пункты обслуживания',
              style: TextStyle(
                color: AppColors.colorffffff,
              ),
            ),
            actions: const [
              Icon(
                Icons.filter_list_rounded,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
            ],
            bottom: TabBar(
              labelStyle: TextStyle(
                color: AppColors.colorffffff,
                fontSize: 20,
              ),
              indicatorPadding: const EdgeInsets.only(
                bottom: 10,
              ),
              indicatorColor: AppColors.colorffffff,
              labelColor: Colors.white,
              tabs: const [
                Tab(
                  text: 'Карта',
                ),
                Tab(
                  text: 'Список',
                ),
              ],
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    AppColors.color005b96,
                    AppColors.color146eb4,
                    AppColors.color3d85c6,
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
