import 'package:all_in_one_application/theme/app_colors.dart';
import 'package:all_in_one_application/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

import 'widgets/list_view.dart';

part '../list_view_example_page/widgets/app_bar.dart';
part '../list_view_example_page/widgets/registration.dart';

class SampleApp extends StatelessWidget {
  const SampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colore5ecff,
      appBar: const SampleAppBar(),
      body: Column(
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: SingleChildScrollView(
              child: Registrattion(
                firstInputText: 'Login:',
                secondInputText: 'Password',
                registrationText: AppTextStyle.candice25w300,
                textAlignment: Alignment.centerLeft,
              ),
            ),
          ),
          const Spacer(),
          const SampleListViev(),
        ],
      ),
    );
  }
}
