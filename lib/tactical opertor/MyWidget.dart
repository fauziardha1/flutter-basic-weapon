part of 'home.dart';

List<int> joinCollectionWithoutSpread() {
  final collection = [1, 2, 3];
  final otherCollection = [4, 5, 6];
  collection.addAll(otherCollection);

  return collection;
}

List<int> joinCollectionWithSpread() {
  final collection = [1, 2, 3];
  final otherCollection = [4, 5, 6];

  return [...collection, ...otherCollection];
}

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool showLoginUI = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text("Fake email input"),
        Text("Fake password input"),
        if (showLoginUI) ...[
          Container(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: changeStatus,
              child: Text("Login"),
            ),
          ),
          Container(
            width: double.infinity,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewPage()),
                );
              },
              child: Text("Forgot Password"),
            ),
          )
        ],
        if (!showLoginUI)
          Container(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: changeStatus,
              child: Text("Register"),
            ),
          ),
      ],
    );
  }

  void changeStatus() {
    return setState(() {
      showLoginUI = !showLoginUI;
    });
  }
}
