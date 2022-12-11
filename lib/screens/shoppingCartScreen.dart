

import 'package:flutter/material.dart';
import 'package:food_app_ui/screens/categoryScree.dart';
class ShoppingCartScreen extends StatelessWidget {
  final String rate;
  final String url;
  final String title;
  final String Cookname;

  const ShoppingCartScreen({super.key, required this.rate, required this.url, required this.title, required this.Cookname});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 200,
            decoration: BoxDecoration(border: Border.all(color: Colors.grey),borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Expanded(
                  flex: 3,
                  child: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/shrimp.jpg"),fit: BoxFit.cover)),)),
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text("Name : Shrimp",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,),),
                        Text(
                            "Cost : \$ 350",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "Owner : XingYong",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                      ],),
                    ))
              ]),
            ),
          ),
        )
      ]),
    );
  }
}