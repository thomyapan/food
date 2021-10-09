import 'package:flutter/material.dart';
import 'package:flutter_food/models/food_item.dart';
import 'package:google_fonts/google_fonts.dart';


class Detail extends StatelessWidget {
  //static const routeName = '/detail';
  const Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var item = ModalRoute.of(context)!.settings.arguments as FoodItem;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade800,
        title: Text(item.name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              child: Image.asset('assets/images/${item.image}')),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("$item" ,style: TextStyle(fontSize: 22,color: Colors.black)),
          ),
        ],
      ),
    );
  }
}