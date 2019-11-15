import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class DetailPrice extends StatefulWidget {
  @override
  _DetailPriceState createState() => _DetailPriceState();
}

class _DetailPriceState extends State<DetailPrice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Biology",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              _subrow("Beachelor of Science in Biology")
            ],
          ),
        ),
      ),
    );
  }

  Widget _subrow(String uniname)=>
      Container(
        padding: EdgeInsets.only(top: 8),
        child: Column(
          children: <Widget>[
            Divider(height: 0,),
            Container(
              color: Colors.white,
              height: 50,
              padding: EdgeInsets.only(left: 16,right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(uniname,style: TextStyle(fontSize: 17),),
                  Spacer(),
                  Text("Details",style: TextStyle(fontSize: 17,color:Colors.black87 ),)
                ],
              ),
            ),
            Divider(height: 0,),
            Padding(
              padding: EdgeInsets.all(16),
              child: Row(

                children: <Widget>[
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Tuition Fee per Year"),
                        Text("Time Study")
                      ],
                    ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text("\$300"),
                      Text("Morning"),
                      Text("Afternoon"),
                      Text("Evening"),
                    ],
                  )
                ],
              ),

            )
          ],
        ),
      );
}
