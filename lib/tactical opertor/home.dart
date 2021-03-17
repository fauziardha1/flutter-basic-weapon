import 'package:flutter/material.dart';
part 'MyWidget.dart';
part 'MyCascadeWidget.dart';
part 'MyNullAwareWidget.dart';
part 'new_page.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(width: double.infinity, child: MyWidget());
  }
}
