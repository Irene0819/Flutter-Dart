part of '../sample_app.dart';

class Registrattion extends StatelessWidget {
  const Registrattion({
    required this.textAlignment,
    required this.registrationText,
    required this.firstInputText,
    required this.secondInputText,
    super.key,
  });

  final AlignmentGeometry textAlignment;
  final TextStyle registrationText;
  final String firstInputText;
  final String secondInputText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        Container(
          alignment: textAlignment,
          child: Text(
            firstInputText,
            style: registrationText,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          style: registrationText,
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          alignment: textAlignment,
          child: Text(
            secondInputText,
            style: registrationText,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          style: registrationText,
        ),
      ],
    );
  }
}
