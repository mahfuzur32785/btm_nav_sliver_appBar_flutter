import 'package:flutter/material.dart';

class Sliver_App_Bar extends StatefulWidget {
  const Sliver_App_Bar({Key? key}) : super(key: key);

  @override
  State<Sliver_App_Bar> createState() => _Sliver_App_BarState();
}

class _Sliver_App_BarState extends State<Sliver_App_Bar> {

  List <String> _products = [
    "Computer","laptop","Ram","Monitor","Mouse","KeyBoard","SSD"
    ,"Computer","laptop","Ram","Monitor","Mouse","KeyBoard","SSD",
    "Computer","laptop","Ram","Monitor","Mouse","KeyBoard","SSD",
    "Computer","laptop","Ram","Monitor","Mouse","KeyBoard","SSD"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Icon(Icons.menu),
            expandedHeight: 150,
            pinned: true,
          ),

          SliverToBoxAdapter(
            child: ListView.builder(
              //physics: ScrollPhysics(),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
                itemCount: _products.length,
                itemBuilder: (context, index){
                  return ListTile(
                    title: Text(_products[index]),
                  );
                }
            ),
          )
        ],
      ),
    );
  }
}
