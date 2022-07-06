import 'package:buttom_nav/screen/home_page.dart';
import 'package:buttom_nav/screen/navbar_home.dart';
import 'package:buttom_nav/screen/sliver_appbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  NavbarHome(),
    );
  }
}