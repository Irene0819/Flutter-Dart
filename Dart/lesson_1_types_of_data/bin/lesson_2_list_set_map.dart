// Замена двух значений по индексу:
void main() {
  List<int> a = [1, 2, 3, 4, 5, 3, 5];
  int b = a[2];
  a[2] = a[4];
  a[4] = b;
  print(a);

  Set<int> e = {1, 3, 5, 7, 9};
  print(e);
}
