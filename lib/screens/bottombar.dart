
import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:food_app_ui/screens/LocationScreen.dart';
import 'package:food_app_ui/screens/homescreen.dart';
import 'package:food_app_ui/screens/profileScree.dart';
import 'package:food_app_ui/screens/shoppingCartScreen.dart';

class ShopMainPage extends StatefulWidget {
  @override
  State<ShopMainPage> createState() => _ShopMainPageState();
}

class _ShopMainPageState extends State<ShopMainPage> {
  int selectedindex = 0;
  List<Widget> pageWidget = [
    const HomeScreen(),
    const LocationScreen(),
    const ShoppingCartScreen(Cookname: "",rate: "",title: "",url: ""),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedindex,
        children: pageWidget,
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedindex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          onTap: ((value) {
            setState(() {
              selectedindex = value;
            });
          }),
          items: [
            // ignore: prefer_const_constructors
            BottomNavigationBarItem(
                icon: const Icon(
                  Icons.home,
                  size: 40,
                ),
                label: ""),
            const BottomNavigationBarItem(
                icon:Icon(Icons.all_out,
                  size: 40,
                ),
                label: ""),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag,
                   size: 40,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.grey)),
                    child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.grey),
                    image: const DecorationImage(image: AssetImage("assets/girl.jpg"),fit: BoxFit.cover)
                    ),
                  ),
                  ),
                ),
                label: ""),
          ]),
    );
  }
}
