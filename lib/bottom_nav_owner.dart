import 'package:flutter/material.dart';
import 'package:private_school/profilescreen/menuprofile.dart';

import 'HomeScreen/home_screen.dart';
class BottomNavOwner extends StatefulWidget {
  @override
  _BottomNavOwnerState createState() => _BottomNavOwnerState();
}

class _BottomNavOwnerState extends State<BottomNavOwner> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3, 
        child: Theme(
            data: ThemeData(brightness: Brightness.light,hoverColor: Colors.red),
            child: Scaffold(
              appBar: AppBar(
             brightness: Brightness.light,
                iconTheme: IconThemeData(
                  color: Colors.white,
                ),
                backgroundColor: Colors.white,
                title: Text("Private School",style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold,fontSize: 25),),
                centerTitle: false,
                actions: <Widget>[
                  IconButton(
                      icon:Image.asset("images/info-me.png"),
                    onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>new MenuProfile()));
                    },
                  ),
                ], ),
              bottomNavigationBar: Container(
                height: 70,
                padding: EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow:<BoxShadow>[
                    BoxShadow(
                      offset: Offset(0, 0),
                      color: Colors.black12,
                      blurRadius: 6
                    )
                  ]
                ),
                child: TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.widgets,size: 30,),),
                      Tab(icon: Icon(Icons.assignment,size: 30,),),
                      Tab(icon: Icon(Icons.account_circle,size: 30,),),
                    ],
                unselectedLabelColor:Colors.black12 ,
                  labelColor: Colors.teal,
                  indicatorColor: Colors.white,
                  indicatorWeight: 2,
                ),
              ),
              body:TabBarView(
                  children: <Widget>[
                    HomeScreen(),
                    Text("Welcome"),
                    Text("Thanks u")
                  ]
              ) ,
            )
        )
    );
  }
}
