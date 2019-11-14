import 'package:flutter/material.dart';
import 'package:private_school/profilescreen/settings.dart';
import 'package:private_school/profilescreen/viewprofile.dart';

import '../bottom_nav_owner.dart';
import '../login_screen.dart';
import 'history.dart';
class MenuProfile extends StatefulWidget {
  @override
  _MenuProfileState createState() => _MenuProfileState();
}

class _MenuProfileState extends State<MenuProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.teal,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.white,),onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomNavOwner()));
        },),
      ),
      body: Column(
        children: <Widget>[
          _headerProfiel("Tun Saw Thant"),
          GestureDetector(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ViewProfile()));
            },
            child: _subItem("viewprofile", "View Profile"),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>History()));
            },
            child: _subItem("historys", "Historys"),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SettingsApp()));
            },
            child: _subItem("settings", "Settings"),
          ),
          GestureDetector(
            onTap: (){},
            child: _subItem("support", "Help & Support"),
          ),
          GestureDetector(
            onTap: (){},
            child: _subItem("about", "About Us"),
          ),
          GestureDetector(
            onTap: (){},
            child: _subItem("contact", "Contact Us"),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreenApp()));
            },
            child: _subItem("logout", "Log Out"),
          ),

        ],
      ),
    );
  }
  Widget _headerProfiel(String name)=>Padding(
    padding: const EdgeInsets.all(16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        CircleAvatar(child: Image.asset("images/profile.gif"),radius: 50,backgroundColor: Colors.transparent,),
        Text(name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
      ],
    ),
  );

  Widget _subItem(String image,String name){
    return Column(
      children: <Widget>[
        Divider(height: 0,color: Colors.teal,),
        Container(
          height: 50,
          padding: EdgeInsets.only(left: 16,right: 16),
          child: Row(
            children: <Widget>[
              Image.asset("images/"+image+".png",height: 30,),
              SizedBox(width: 10,),
              Text(name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
            ],
          ),
        ),
        Divider(height: 0,color: Colors.teal,)
      ],

    );
  }
}
