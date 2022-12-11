import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String url;
  final String title;
  final String CookName;
  final String rate;

  const DetailsScreen(
      {super.key,
      required this.CookName,
      required this.rate,
      required this.title,
      required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: ListView(children: [
        Container(
          height: MediaQuery.of(context).size.height / 2.5,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              image: DecorationImage(
                  image: AssetImage("$url"),
                  fit: BoxFit.cover,
                  colorFilter:
                      const ColorFilter.mode(Colors.black26, BlendMode.darken))),
          child: Stack(children: [
            Positioned(
                top: 20,
                left: 10,
                right: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 35,
                    ),
                    Icon(Icons.shopping_cart, color: Colors.white, size: 35),
                  ],
                )),
            // Positioned(
            //     bottom: 20,
            //     left: 5,
            //     child: Text(
            //       "$title",
            //       style: TextStyle(
            //           fontSize: 25,
            //           fontWeight: FontWeight.bold,
            //           color: Colors.white),
            //     ))
          ]),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    " $title",
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "\$$rate",
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Text(
                "\Made With Love By $CookName",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: const [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 35,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 35,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 35,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Size :",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.blue, width: 3)),
                    child: const Center(
                        child: Text(
                      "S",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue,
                        border: Border.all(color: Colors.blue, width: 3)),
                    child: const Center(
                        child: Text(
                      "M",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.blue, width: 3)),
                    child: const Center(
                        child: Text(
                      "L",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Quantary:",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.remove,
                    color: Colors.blue,
                    size: 35,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "1",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.blue,
                    size: 35,
                  ),
                ],
              ),

              const SizedBox(
                height: 10,
              ),
               const Text(
                "Description:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('''
It's said that roasted duck first started tantalizing taste buds more than 1,500 years ago in Nanjing, when the city was the seat of ancient Chinese imperial regimes.
The capital relocated to Beijing in the 1400s, and the imperial families brought those tasty roast duck recipes -- and the chefs -- with them.
It was there that the current way we enjoy the duck, wrapped in that delicate thin pancake, was invented and then popularized around the world.
                ''',style: TextStyle(fontSize: 20),)
            ],
          ),
        ),
      ]),
      bottomNavigationBar: Container(
        color: Colors.blue,
        height: 80,
        child: const Center(
          child: Text(
            "Order Now",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
