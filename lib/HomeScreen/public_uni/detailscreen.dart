import 'package:flutter/material.dart';

import 'about_screen.dart';
import 'information.dart';

class DetailsScreen extends StatefulWidget {
  String nameUniversity='';
  DetailsScreen(nameUniversity);
  @override
  _DetailsScreenState createState() => _DetailsScreenState(nameUniversity);
}

class _DetailsScreenState extends State<DetailsScreen> {

  _DetailsScreenState(nameUniversity);
  String nameUniversity = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,
        title: Text(''),
      ),
      body: Column(
        children: <Widget>[
          _logouniveristy(),
          _tabwidget()
        ],
      ),
    );
  }

  Widget _logouniveristy(){
    return Expanded(
      flex: 1,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              Image.asset("images/items/AmericanUniversityofPhnomPenh.png",width: 120,),
              SizedBox(width: 10,),
              Expanded(child: Text("American University of PhnomPenh",softWrap: true,style: TextStyle(fontWeight: FontWeight.bold),))
            ],
          ),
        )
    );
  }

  Widget _tabwidget()=>Expanded(
    flex: 5,
    child: Container(
      //height: 50,

      child: DefaultTabController(
          length: 2,
          child: Column(
            children: <Widget>[
              Container(
                height: 40,
                margin: EdgeInsets.only(left: 16,right: 16),
                decoration: BoxDecoration(
                  border:Border.all(color: Colors.teal),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: TabBar(
                  isScrollable: false,
                    unselectedLabelColor: Colors.black,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(3, 3),
                          blurRadius: 6,
                        )
                      ],
                      color:Colors.teal,
                      borderRadius: BorderRadius.circular(6)
                    ),
                    tabs: [
                      Tab( child: Align(
                            child: Text("Information"),
                          alignment: Alignment.center,
                        ),
                      ),
                      Tab( child: Align(
                          child: Text("About"),
                          alignment: Alignment.center,
                        ),
                      ),
                    ]
                ),
              ),

              Expanded(child: TabBarView(
                  children:<Widget>[
                    InformationApp(),
                    AboutScreen()
              ]))
            ],
          )
      ),
    ),
  );
}
