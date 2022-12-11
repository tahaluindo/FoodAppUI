import 'package:flutter/material.dart';
import 'package:food_app_ui/screens/homescreen.dart';

class LogInSceen extends StatefulWidget {
  const LogInSceen({super.key});

  @override
  State<LogInSceen> createState() => _LogInSceenState();
}

class _LogInSceenState extends State<LogInSceen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(children: [
        Container(
          height: MediaQuery.of(context).size.height / 2.3,
          decoration: BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                  image: AssetImage("assets/girl.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.4), BlendMode.darken)),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: Stack(children: [
            Positioned(
                left: 16,
                right: 16,
                bottom: 20,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Back",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ))
          ]),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left:15.0),
                        child: TextField(
                    decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email or Phone number",
                          hintStyle: TextStyle(color: Colors.grey)),
                  ),
                      )),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.grey)),
                    ),
                  )),
                ]),
              ),
            ),
          ),
        ),
         InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ));
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:16.0),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text(
                "Login",
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
            ),
          ),
        ),
      ]),
    );
  }
}
