import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.only(left:8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              _info("School Name", "Roya Yangon and Python"),
              _info("School Website", "http://wwww.tunsawthant.edu.kh/"),
              _info("Telephone Number", "09697495475"),
              _info("Email Address", "sorry@gmail.com"),
              _info("Street Address", "Yangon,Myanmar"),
              _info("District", "Yangon"),
              _info("City", "Yangon"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _info(String title,String data)=>
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(title,style: TextStyle(color: Colors.black45,fontWeight: FontWeight.bold,fontSize: 18),),
            SizedBox(
              height: 8,
            ),
            Text(data,style: TextStyle(color: Colors.black87,fontSize: 14),)
          ],
        ),
      );
}
