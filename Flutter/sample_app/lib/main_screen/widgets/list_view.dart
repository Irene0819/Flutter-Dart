import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sample_app/core/theme/colors.dart';
import 'package:sample_app/core/theme/text_style.dart';

part '../widgets/add_container.dart';

class SampleListViev extends StatelessWidget {
  const SampleListViev({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        color: AppColors.color6faed7,
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
