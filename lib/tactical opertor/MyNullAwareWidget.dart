part of 'home.dart';

void withoutCoalesing() {
  String anInput;
  String fallback = "fallback";

  String result;
  if (anInput == null)
    result = fallback;
  else
    result = anInput;

  String resultTernary = anInput == null ? fallback : anInput;

  print("result if :" + result);
  print("result ternary: " + resultTernary);
}

void withCoalescing() {
  String nullInput;
  String fallback = "fallback";
  print("with coalesing : " + (nullInput ?? fallback));
}

void assignment() {
  String unInitialized;
  String initialized = "something";

  unInitialized ??= "New Value";
  initialized ??= "New Value";

  print(unInitialized);
  print(initialized);
}

void access() {
  String nullVariable;
  String unNullVariable = "something";

  print(nullVariable?.toUpperCase() ?? "data null");
  print(unNullVariable?.toUpperCase());
}

void spread() {
  List<int> nullList;
  final otherCollection = [4, 5, 6];

  final result = [...?nullList, ...?otherCollection];
  print(result);
}

class MyNullAwareWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // withoutCoalesing();
    // withCoalescing();
    // assignment();
    // access();
    // spread();

    return Container();
  }
}
