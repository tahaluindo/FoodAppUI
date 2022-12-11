import 'package:flutter/material.dart';
import 'package:food_app_ui/screens/shoppingCartScreen.dart';

class DetailsScreenFoodCartWidget extends StatelessWidget {
  final String url;
  final String name;
  final String rate;
  final String cookName;

  const DetailsScreenFoodCartWidget(
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
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => ShoppingCartScreen(rate: rate, url: url, title: name, Cookname: cookName)));
                              },
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.blue.withOpacity(0.4),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Icon(Icons.shopping_cart),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
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
