import 'dart:developer';
import 'package:all_in_one_application/theme/app_colors.dart';
import 'package:all_in_one_application/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

part '../widgets/add_container.dart';

class SampleListViev extends StatelessWidget {
  const SampleListViev({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        image: DecorationImage(
          image: AssetImage('assets/images/AppBackground.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(
              width: 10,
            ),
            itemBuilder: (BuildContext context, int index) {
              return AddContainer(
                newAddText: AppTextStyle.candice25w300,
              );
            },
          ),
        ),
      ),
    );
  }
}
