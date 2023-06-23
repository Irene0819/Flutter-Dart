part of 'list_view.dart';

class AddContainer extends StatelessWidget {
  const AddContainer({
    required this.newAddText,
    super.key,
  });

  final TextStyle newAddText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        log('Is tapped');
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          color: AppColors.colore5ecff,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Center(
            child: Text(
              '+ Account',
              style: newAddText,
            ),
          ),
        ),
      ),
    );
  }
}
