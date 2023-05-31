void main() {
  List<String> array = ['flower', 'flow', 'flight'];

  final prefix = array[0];
  for (int i = 0; i < prefix.length; i++) {
    for (int j = 0; j < array[i].length; j++) {
      if (array[i][j] == array[i + 1][j] &&
          array[i + 1][j] == array[i + 2][j]) {
        print(array[i][j]);
      } else {
        print('');
      }
    }
  }
}
