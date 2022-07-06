import 'package:buttom_nav/screen/category_page.dart';
import 'package:buttom_nav/screen/home_page.dart';
import 'package:buttom_nav/screen/product_page.dart';
import 'package:buttom_nav/screen/profile_page.dart';
import 'package:flip_box_bar_plus/flip_box_bar_plus.dart';
import 'package:flutter/material.dart';

class NavbarHome extends StatefulWidget {
  const NavbarHome({Key? key}) : super(key: key);

  @override
  State<NavbarHome> createState() => _NavbarHomeState();
}

class _NavbarHomeState extends State<NavbarHome> {

  int currentIndex = 0;
  List<Widget> pages = [
    HomePage(),
    ProductPage(),
    CaregoryPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: FlipBoxBarPlus(
        selectedIndex: currentIndex,
        items: [
          FlipBarItem(
              icon: Icon(Icons.map, size:40, color: currentIndex==0 ? Colors.red:Colors.black,),
              text: Text("Map"),
              frontColor: Colors.blue,
              backColor: Colors.blueAccent),
          FlipBarItem(
              icon: Icon(Icons.add, size:40, color: currentIndex==1 ? Colors.red:Colors.black,),
              text: Text("Add"),
              frontColor: Colors.cyan,
              backColor: Colors.cyanAccent),
          FlipBarItem(
              icon: Icon(Icons.chrome_reader_mode,size:40, color: currentIndex==2 ? Colors.red:Colors.black,),
              text: Text("Read"),
              frontColor: Colors.orange,
              backColor: Colors.orangeAccent),
          FlipBarItem(
              icon: Icon(Icons.print, size:40, color: currentIndex==3 ? Colors.red:Colors.black,),
              text: Text("Print"),
              frontColor: Colors.purple,
              backColor: Colors.green),
        ],
        onIndexChanged: (newIndex) {
          setState(() {
            currentIndex = newIndex;
          });
        },
      ),
    );
  }
}
