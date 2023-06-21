import 'package:flutter/material.dart';
import 'package:sample_app/core/theme/colors.dart';
import 'package:sample_app/core/theme/text_style.dart';
import 'package:sample_app/main_screen/widgets/list_view.dart';

part '../main_screen/widgets/app_bar.dart';
part '../main_screen/widgets/registration.dart';

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
