import 'package:flutter/material.dart';

class PanelWidget extends StatelessWidget {
  const PanelWidget({required this.controller, super.key});

  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      controller: controller,
      children: [
        const SizedBox(
          height: 36,
        ),
        buildAboutText(),
        const SizedBox(
          height: 24,
        ),
      ],
    );
  }
}

Widget buildAboutText() => Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(''),
          SizedBox(height: 12),
          Text(''),
        ],
      ),
    );
