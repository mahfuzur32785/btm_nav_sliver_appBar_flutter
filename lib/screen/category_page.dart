import 'package:flutter/material.dart';

class CaregoryPage extends StatefulWidget {
  const CaregoryPage({Key? key}) : super(key: key);

  @override
  State<CaregoryPage> createState() => _CaregoryPageState();
}

class _CaregoryPageState extends State<CaregoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Caregory Page"),
      ),
      backgroundColor: Colors.green,
    );
  }
}
