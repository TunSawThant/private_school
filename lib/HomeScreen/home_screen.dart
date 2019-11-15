import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:private_school/HomeScreen/public_uni/alluni.dart';
class HomeScreen extends StatefulWidget {
@override
_State createState() => _State();
}

class _State extends State<HomeScreen> {
@override
Widget build(BuildContext context) {
return Scaffold(
  body: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _sliderApp(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AllPublicUinversity()));
              },
              child: _subWidget("public@3x", "Public University", 80.0, 80.0),
            ),
            GestureDetector(
              onTap: (){
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>null));
              },
              child: _subWidget("private@3x", "Private University", 80.0, 80.0),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GestureDetector(
              onTap: (){
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>null));
              },
              child: _subWidget("location@3x", "Locations", 80.0, 80.0),
            ),
            GestureDetector(
              onTap: (){
               // Navigator.push(context, MaterialPageRoute(builder: (context)=>null));
              },
              child: _subWidget("subject@3x", "Majors", 80.0, 80.0),
            ),
          ],
        )
      ],
    ),
  ),
);
}

Widget _sliderApp()=>SizedBox(
    height: 200.0,
    width: MediaQuery.of(context).size.width*1-32,
    child: Carousel(
      radius: Radius.circular(18),
      images: [
        ExactAssetImage("images/coverschool/1.jpg"),
        ExactAssetImage("images/coverschool/2.jpg"),
        ExactAssetImage("images/coverschool/3.jpg"),
        ExactAssetImage("images/coverschool/4.jpg"),
        ExactAssetImage("images/coverschool/5.jpg"),
        ExactAssetImage("images/coverschool/6.jpg"),

        ExactAssetImage("images/coverschool/11.jpg"),
        ExactAssetImage("images/coverschool/13.jpg"),
        ExactAssetImage("images/coverschool/16.jpg"),
        ExactAssetImage("images/coverschool/18.jpg"),
        ExactAssetImage("images/coverschool/19.jpg"),
        ExactAssetImage("images/coverschool/17.jpg"),
      ],
      dotSize: 4.0,
      dotSpacing: 15.0,
      dotColor: Colors.lightGreenAccent,
      indicatorBgPadding: 5.0,
      dotBgColor: Colors.purple.withOpacity(0.5),
      borderRadius: true,
      animationCurve: Curves.decelerate,
    )
);

Widget _subWidget(String image,String title,double imgheight,double imgwidgth)=>Container(
  height: MediaQuery.of(context).size.height*0.2,
  width: MediaQuery.of(context).size.width*0.5-24,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.white,
    boxShadow: <BoxShadow>[
      BoxShadow(
        color: Colors.black12,blurRadius: 10,
        offset: Offset(3, 3),
      )
    ]
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Image.asset("images/"+image+".png",height: imgheight,width: imgwidgth,),
      Text(title,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF384F71)),)
    ],
  ),
);

}


