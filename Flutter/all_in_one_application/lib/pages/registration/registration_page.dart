import 'package:all_in_one_application/theme/app_colors.dart';
import 'package:flutter/material.dart';

class NewProfile extends StatelessWidget {
  const NewProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text('❤️You + I ❤️'),
        backgroundColor: AppColors.colorfb9f9f,
      ),
      body: Container(
        decoration: const BoxDecoration(),
        child: const Padding(
          padding: EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          child: Column(
            children: [
              Spacer(),
              TextField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(),
                showCursor: true,
                style: TextStyle(),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                textAlign: TextAlign.start,
                showCursor: true,
                maxLength: 25,
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
