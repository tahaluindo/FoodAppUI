import 'package:flutter/material.dart';
import 'package:food_app_ui/screens/LogInScree.dart';
import 'package:food_app_ui/screens/signUp_screen.dart';

class IntroductoryScreen extends StatefulWidget {
  const IntroductoryScreen({super.key});

  @override
  State<IntroductoryScreen> createState() => _IntroductoryScreenState();
}

class _IntroductoryScreenState extends State<IntroductoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
            top: 0,
            left: -70,
            child: Container(
              width: 220,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("assets/photo1.jpg"), fit: BoxFit.cover),
                // borderRadius: BorderRadius.only(
                //     topRight: Radius.circular(100),
                //     bottomRight: Radius.circular(100),
                //     ),
              ),
            )),
        Positioned(
            right: -40,
            top: MediaQuery.of(context).size.height / 2 - 10,
            child: Container(
              width: 140,
              height: 180,
              decoration: BoxDecoration(
                
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("assets/photo2.jpg"), fit: BoxFit.cover),
                
              ),
            )),

             Positioned(
            bottom: 0,
            left: -40,
            child: Container(
              width: 180,
              height: 170,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("assets/egg.jpg"), fit: BoxFit.cover),
              ),
            )),
        Positioned(
          bottom: 120,
          left: 30,
          right: 30,
          child: Column(
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LogInSceen(),));
                },
                  child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignupSceen(),));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade200, width: 1),
                      borderRadius: BorderRadius.circular(20)),
                      child: Center(
                      child: Text(
                    "Sign up",
                    style: TextStyle( fontSize: 20,color: Colors.blue),
                  )),
                ),
              ),
            ],
          ),
        ),

        
        Container(
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "FOOOD",
                style: TextStyle(color: Colors.grey, fontSize: 45),
              ),
              Text(
                "Always With You",
                style: TextStyle(color: Colors.blue, fontSize: 18),
              ),
            ]),
          ),
        ),
      ]),
    );
  }
}
