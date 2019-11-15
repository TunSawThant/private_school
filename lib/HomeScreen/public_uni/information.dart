import 'package:flutter/material.dart';

import 'detail_price.dart';
class InformationApp extends StatefulWidget {
  @override
  _InformationAppState createState() => _InformationAppState();
}

class _InformationAppState extends State<InformationApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _overview(),
            _listDept()

          ],
        ),

      ),
    );
  }

  Widget _overview(){
    String overview="Established since 1960, RUPP is considered the oldest public university in Phnom Penh which locates along Russian Federation Boulevard. It was originally the Royal Khmer University; the name got changed several times until it stopped at the Royal University of Phnom Penh in 1996";
  return Padding(
    padding: EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Overview",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,color: Colors.black54),),
        SizedBox(height: 5,),
        Text(overview,softWrap: true,)
      ],
    ),
  );
  }

  Widget _listDept(){
    return Padding(
      padding: EdgeInsets.all(4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("List Of Department",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,),),
                Text("Undergraduate Degerees",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              ],
            ),
          ),

          GestureDetector(
            child: _sublist("Biology"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPrice()));
            },
          ),
          _sublist("Chemistry"),
          _sublist("Computer Sciences"),
          _sublist("Biology"),
          _sublist("Chemistry"),
          _sublist("Computer Sciences"),

        ],
      ),
    );
  }

  Widget _sublist(String deptname){
    return Column(
      children: <Widget>[
        Divider(height: 0,),
        Container(
          height: 50,
          padding: EdgeInsets.only(left: 8,right: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(deptname,style: TextStyle(fontSize: 14),),
              Spacer(),
              Text("View",style: TextStyle(fontSize: 14),),
              Icon(Icons.arrow_forward_ios,color: Colors.black,)
            ],
          ),
        ),
        Divider(height: 0,)
      ],
    );
  }
}
