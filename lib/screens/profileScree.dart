import 'package:flutter/material.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView(children: [
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
        SizedBox(height: MediaQuery.of(context).size.height/16,
        
        ),
        Column(children: [
          CircleAvatar(backgroundImage: AssetImage("assets/girl.jpg"),radius: 70,),
          SizedBox(height: 5,),
          Text("Kamil Shinwari",style: TextStyle(fontSize: 20),),
            SizedBox(
              height: 5,
            ),
           Text(
              "kamilshinwari66@gmail.com",
              style: TextStyle(fontSize: 16),
            ),
        ],),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:15.0),
          child: Column(
            children: [
              ProflileWidget(
                icon: Icons.edit,
                text: "Edit Profile",
              ),
              SizedBox(height: 10,),
               ProflileWidget(
                icon: Icons.security,
                text: "Privacy",
              ),

               SizedBox(
                height: 10,
              ),
              ProflileWidget(
                icon: Icons.history,
                text: "History",
              ),

               SizedBox(
                height: 10,
              ),
              ProflileWidget(
                icon: Icons.settings,
                text: "Setting",
              ),

               SizedBox(
                height: 10,
              ),
              ProflileWidget(
                icon: Icons.logout,
                text: "Logout",
              ),
              
            ],
          ),
        )
    ],));
  }
}

class ProflileWidget extends StatelessWidget {
final String text;
final IconData icon;

  const ProflileWidget({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      child: Center(
        child: ListTile(
          leading:  Icon(icon,color: Colors.blue,),
          title:  Text("$text",style: TextStyle(color: Colors.blue,fontSize: 20),),
          trailing: Icon(
            Icons.forward,
            color: Colors.blue,
          ) ,
        ),
      ),
       
      
    );
  }
}