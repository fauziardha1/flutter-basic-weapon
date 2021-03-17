part of 'home.dart';

List<int> withoutCascade() {
  final list = [4, 3, 1, 5, 2];
  list.sort();
  list.removeLast();
  return list;
}

List<int> withCascade() {
  return [4, 2, 5, 3, 1]
    ..sort()
    ..removeLast();
}

class MyCascadeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("WithoutCascade : ${withoutCascade()}");
    print("WithCascade    : ${withCascade()}");
    return Container();
  }
}
