import 'package:flutter/material.dart';
import 'package:food_app_ui/screens/categoryScree.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("All Foods",),centerTitle: true,
      automaticallyImplyLeading: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right:20.0),
          child: Icon(Icons.search),
        )
      ],
      ),
      body: ListView(children: [
             CategoryScreenFoodCartWidget(
            rate: "130",
            url: "assets/AsianPrawn.jpg",
            name: "Asian Prawn",
            cookName: "Mark T"),
        CategoryScreenFoodCartWidget(
            rate: "250",
            url: "assets/dumpling.jpg",
            name: "dumplig",
            cookName: "xavi"),
        CategoryScreenFoodCartWidget(
            rate: "300",
            url: "assets/ramenNoddels.jpg",
            name: "Reman Noddles",
            cookName: "Reman"),
        CategoryScreenFoodCartWidget(
            rate: "250",
            url: "assets/dumpling.jpg",
            name: "dumplig",
            cookName: "xavi"),

             CategoryScreenFoodCartWidget(
            rate: "130",
            url: "assets/AsianPrawn.jpg",
            name: "Asian Prawn",
            cookName: "Mark T"),
        CategoryScreenFoodCartWidget(
            rate: "250",
            url: "assets/dumpling.jpg",
            name: "dumplig",
            cookName: "xavi"),
        CategoryScreenFoodCartWidget(
            rate: "300",
            url: "assets/ramenNoddels.jpg",
            name: "Reman Noddles",
            cookName: "Reman"),
        CategoryScreenFoodCartWidget(
            rate: "250",
            url: "assets/dumpling.jpg",
            name: "dumplig",
            cookName: "xavi"),
             CategoryScreenFoodCartWidget(
            rate: "130",
            url: "assets/AsianPrawn.jpg",
            name: "Asian Prawn",
            cookName: "Mark T"),
        CategoryScreenFoodCartWidget(
            rate: "250",
            url: "assets/dumpling.jpg",
            name: "dumplig",
            cookName: "xavi"),
        CategoryScreenFoodCartWidget(
            rate: "300",
            url: "assets/ramenNoddels.jpg",
            name: "Reman Noddles",
            cookName: "Reman"),
        CategoryScreenFoodCartWidget(
            rate: "250",
            url: "assets/dumpling.jpg",
            name: "dumplig",
            cookName: "xavi"),
      ]),
    );
  }
}
