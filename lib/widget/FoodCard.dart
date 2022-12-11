import 'package:flutter/material.dart';
import 'package:food_app_ui/screens/categoryScree.dart';

class FoodCardWidget extends StatelessWidget {
  final String url;
  final String title;
  final String tag;
  final String comment;
  VoidCallback? onpressed;

   FoodCardWidget(
      {super.key,
       this.onpressed,
      required this.comment,
      required this.url,
      required this.title,
      required this.tag});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      height: 280,
      child: Column(
        children: [
          Expanded(
            flex: 7,
            child: InkWell(
              onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CategoryScreen(url: "$url",title: "$title",),
                    ));
              },
              child: Container(
                
                width: 220,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage("$url"),
                      fit: BoxFit.cover,
                      colorFilter:
                          ColorFilter.mode(Colors.black26, BlendMode.darken)),
                ),
                child: Stack(children: [
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Column(
                      children: [
                        Text(
                          "$title",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Text(
                          "$tag",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                      ],
                    ),
                  )
                ]),
              ),
            ),
          ),
          Expanded(
              flex: 2,
              child: Text(
                "$comment",
                style: TextStyle(fontSize: 18),
              ))
        ],
      ),
    );
  }
}
