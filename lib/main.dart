import 'package:flutter/material.dart';
import 'package:reso/automated_animation/HomeAnimation.dart';
import 'package:reso/clean_dart_ui/profile.dart';
import 'package:reso/tactical%20opertor/home.dart';

main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.green,
      primarySwatch: Colors.green,
    ),
    home: Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
      ),
      body: Profile(),
    ),
  ));
}
