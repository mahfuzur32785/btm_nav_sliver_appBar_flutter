import 'package:buttom_nav/screen/sliver_appbar.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Page"),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Sliver_App_Bar()));
                },
                color: Colors.pink,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Go SliverAppBar Page'),
                    SizedBox(width: 10,),
                    Icon(Icons.arrow_forward),
                  ],
                )
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey,
    );
  }
}
