import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:food_app_ui/screens/categoryScree.dart';
import 'package:food_app_ui/widget/FoodCard.dart';
import 'package:food_app_ui/widget/horizentalToPRowWidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(children: [
          SizedBox(height:MediaQuery.of(context).size.height/23 ,),
          Container(
            height: 40,
            decoration: BoxDecoration(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.blue.shade400,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.notifications,
                    color: Colors.blue.shade400,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "What would you like to \neat?",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: (){
                
                },
                child: HorizentalScrollWidget(url: "assets/foodTool.png")),
              HorizentalScrollWidget(url: "assets/burgor.png"),
              HorizentalScrollWidget(url: "assets/drink.png"),
              HorizentalScrollWidget(url: "assets/cake.png")
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Foodies",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              child: InkWell(
                  
                onTap: (){
                },
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    FoodCardWidget(
                      
                      url: "assets/chineseFood.jpg",
                      title: "Chinese Food",
                      tag: "Best Experience",
                      comment: "Best Experience",
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    FoodCardWidget(
                      url: "assets/seafood.jpg",
                      title: "Sea Food",
                      tag: "My Best",
                      comment: "Best Experience",
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    FoodCardWidget(
                        url: "assets/pakistaniFood.jpg",
                        comment: "Best Experience",
                        title: "Pakistani Food",
                        tag: "Traditional Food"),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Discount",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 10.0, right: 10, top: 8, bottom: 8),
            child: Container(
              width: 220,
              height: 190,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage("assets/pizza.jpg"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.6), BlendMode.darken),
                  )),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Expanded(
                    child: Center(
                        child: Text(
                  "wow",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                ),
                ),
                Expanded(
                    child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Get Discount of",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                       Text(
                        "45 %",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        "Only today",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                )),
              ]),
            ),
          )
        ]),
      ),
    );
  }
}
