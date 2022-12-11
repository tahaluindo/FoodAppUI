import 'package:flutter/material.dart';
import 'package:food_app_ui/screens/detailScreen.dart';

class CategoryScreen extends StatelessWidget {
  final String url;
  final String title;

  const CategoryScreen({super.key, required this.title, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: ListView(children: [
        Container(
          height: MediaQuery.of(context).size.height / 2.5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              image: DecorationImage(
                  image: AssetImage("$url"),
                  fit: BoxFit.cover,
                  colorFilter:
                      ColorFilter.mode(Colors.black26, BlendMode.darken))),
          child: Stack(children: [
            Positioned(
                top: 20,
                left: 10,
                right: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 35,
                    ),
                    Icon(Icons.search, color: Colors.white, size: 35),
                  ],
                )),
            Positioned(
                bottom: 20,
                left: 5,
                child: Text(
                  "$title",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ))
          ]),
        ),
        SizedBox(
          height: 20,
        ),
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

class CategoryScreenFoodCartWidget extends StatelessWidget {
  final String url;
  final String name;
  final String rate;
  final String cookName;

  const CategoryScreenFoodCartWidget(
      {super.key,
      required this.rate,
      required this.url,
      required this.name,
      required this.cookName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
            color: Colors.white,
            // border: Border.all(color: Colors.grey,width: 2),
            borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage("$url"), fit: BoxFit.fitHeight))),
              flex: 3,
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "$name",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "\$ $rate",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text(
                        "$cookName",
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 30,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 30,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 150,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.blue.withOpacity(0.4),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Icon(Icons.shopping_cart),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                              child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailsScreen(
                                        CookName: cookName,
                                        rate: rate,
                                        title: "$name",
                                        url: url),
                                  ));
                            },
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.blue.withOpacity(0.4),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                  child: Text(
                                "Details",
                                style: TextStyle(fontSize: 18),
                              )),
                            ),
                          )),
                        ],
                      ),
                    )
                  ]),
              flex: 5,
            ),
          ]),
        ),
      ),
    );
  }
}
