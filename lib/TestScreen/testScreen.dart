import 'package:flutter/material.dart';
class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}
List<String> _items=[
  'Information of Technology',
  'Medicine',
  'Tourism',
  'Agriculture',
  'Languages',
  'Adminstration',
  'Communication',
  'Architecture',
  'Business',
  'Engineering',
  'Art and Music',
  'Law',
  'Education'
];

final List<DropdownMenuItem<String>> _menuItems=_items.map((String value)=>DropdownMenuItem(value: value,child: Text(value))).toList();
class _TestScreenState extends State<TestScreen> {

  String _btnSelectedval;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left:10.0),
              child: Text("Select major for take a test \t:" ,style: TextStyle(fontSize: 16,),),
            ),
            SizedBox(height: 10,),
            _dropDown(),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                _btnStart()
              ],
            ),
            SizedBox(height: 10,),
            Spacer(),
            Text("History of TEST\t :",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            Column(
              children: <Widget>[
                SizedBox(height: 5,),
                Container(
                  height: MediaQuery.of(context).size.height*0.35,
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        offset: Offset(0, 3),
                        color: Colors.black12,
                        blurRadius: 6,
                      )
                    ]

                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      _historytestobj("Computer Science"),
                      _historytestobj("Civil Engineering"),
                      _historytestobj("Mathematical"),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text("View More",style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      )
                    ]
                  ),
                )
              ],
            )


          ],
        ),
      ),
    );
  }

  Widget _dropDown()=>
      Container(
        padding: EdgeInsets.only(left: 32,right: 32,bottom: 5,top: 5),
        decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              blurRadius: 6,
              color: Colors.black12,
              offset: Offset(0, 3)
            )
          ]
        ) ,
        child: DropdownButton<String>(
            items:_menuItems ,
            value: _btnSelectedval,
            iconSize: 40,
            hint:Text("Select major for take a test",),
            onChanged: ((String newValue){
              setState(() {
                _btnSelectedval=newValue;
              });
            }),
          isExpanded: true,
        ),
      );

  Widget _btnStart()=>Container(
    height: 50,
    width: MediaQuery.of(context).size.width*0.7-65,
    decoration:BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      boxShadow:<BoxShadow>[
        BoxShadow(
          offset: Offset(0, 3),
          color: Colors.black12,
          blurRadius: 6
        )
      ]
    ) ,
    child: RaisedButton(
      color: Colors.teal,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        ),
        onPressed: (){},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("START TEST",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
        ],
      ),
    ),
  );

  Widget _historytestobj(String title)=>
      Column(
          children: <Widget>[
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(title,style: TextStyle(color: Colors.black),),
                Text("View",style: TextStyle(fontWeight: FontWeight.bold,),)
              ],
            ),
            SizedBox(height: 5,),
            Divider()
          ],
        );

}
