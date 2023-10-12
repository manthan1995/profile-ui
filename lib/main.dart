import 'package:flutter/material.dart';
import 'package:flutter_test_profile/view/bottom_bar.dart';
import 'package:flutter_test_profile/view/follow_page.dart';
import 'package:flutter_test_profile/view/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: BottomBarPage(),
    );
  }
}
