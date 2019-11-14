import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'bottom_nav_owner.dart';

class LoginScreenApp extends StatefulWidget {
  @override
  _LoginScreenAppState createState() => _LoginScreenAppState();
}

class _LoginScreenAppState extends State<LoginScreenApp> {
TextEditingController name=new TextEditingController();
TextEditingController pwd=new TextEditingController();
final _formkey=new GlobalKey<FormState>();

bool _clickusername=false;
bool _obscureText = true;
bool _remember = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        children: <Widget>[
          _headerLogin(),
          _formLogin(),
          _btnsLogin(),
            ],
      ),
    );
  }
  Widget _headerLogin()=>Expanded(
    flex: 1,
    child: Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.teal,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30)
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,blurRadius: 6,offset: Offset(0, 3.0)
          )
        ]
      ),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text("Welcome From Info",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),)
        ],
      ),
    ),
  );

  Widget _formLogin()=>Expanded(
    flex: 5,
      child: Container(
        padding: EdgeInsets.only(left: 32,top: 32,right: 32,bottom: 16),
        child: Form(
          key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Name or Email"),
                SizedBox(height: 5,),
                _email(),
                SizedBox(height: 5,),
                Text("Password"),
                SizedBox(height: 5,),
                _pwdform(),
                SizedBox(height: 5,),
                _rememberMe(),
                SizedBox(height: 5,),
                _btnLogin(),
                SizedBox(height: 5,),
                _forgetpwd(),
                SizedBox(height: 3,),
                _singup(),

              ],
            )
        ),

      )
  );


  Widget _email()=>TextFormField(
    controller: name,
    keyboardType: TextInputType.text,
    validator: _validatorname,
    decoration:InputDecoration(
      suffixIcon: _clickusername?
          IconButton(icon: Icon(Icons.backspace), onPressed: (){
            setState(() {
              name.text='';
            });
          }) :null,
      fillColor: Colors.white,
      focusColor: Colors.white,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(color: Colors.teal,width: 3),),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.teal,width: 3),
        borderRadius: BorderRadius.circular(20)
      ),
      prefixIcon: Icon(Icons.email,color: Colors.teal,size: 30,),
      hintText: "example@gmail.com",
      hintStyle: TextStyle(color: Colors.grey)
    ),

  );

  Widget _pwdform()=>TextFormField(
    controller: pwd,
    keyboardType: TextInputType.text,
    validator: _validatorpwd,
    obscureText: _obscureText,
    decoration: InputDecoration(
      suffixIcon: GestureDetector(
        dragStartBehavior: DragStartBehavior.down,
        onTap: (){
          setState(() {
            _obscureText=!_obscureText;
          });
        },
        child: Icon(_obscureText?Icons.visibility_off:Icons.visibility,semanticLabel: _obscureText?"Show password":"Hide password",),
      ),
      fillColor: Colors.white,
      focusColor: Colors.lightBlue,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(color: Colors.teal,width: 3),),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.teal,width: 3),
        borderRadius: BorderRadius.circular(20)
      ),
      prefixIcon: Icon(Icons.vpn_key,color: Colors.teal,size: 30,),
      hintText: "⊛⊛⊛⊛⊛⊛⊛⊛",
      hintStyle: TextStyle(color: Colors.grey,fontSize: 10)
    ),
    );

  Widget _rememberMe()=>Padding(
    padding: const EdgeInsets.only(top:5.0,bottom: 6),
    child: Row(
      children: <Widget>[
        CupertinoSwitch(
            value: _remember,
            activeColor: Colors.teal,
            onChanged: (bool value){
              setState(() {
                _remember=value;
              });
            },
        ),
        Text("Remember me",style: TextStyle(color: Colors.black,fontSize: 13),)
      ],
    ),
  );

  Widget _btnLogin(){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: Offset(0, 3),color: Colors.black12,blurRadius: 6
          )
        ]
      ),
      child: RaisedButton(
        color: Colors.teal,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomNavOwner()));
          },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Login",style: TextStyle(fontSize: 17,color: Colors.white),)
          ],
        ),
      ),
    );

  }

  Widget _forgetpwd()=>GestureDetector(
    child: Padding(
      padding: const EdgeInsets.only(top:8.0,bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Forget password ?",style: TextStyle(color: Colors.black,fontSize: 15),),
        ],
      ),
    ),
  );
  Widget _singup()=>Expanded(
    child: Padding(
      padding: const EdgeInsets.only(top:8.0,left: 20.0),
      child: Row(
        children: <Widget>[
          Text("Don\'t have an account ?",style: TextStyle(color: Colors.black,fontSize: 15),),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>null));
            },
              child: Text("Sing up",style: TextStyle(color: Colors.teal,fontSize: 20,fontWeight: FontWeight.bold),)),
        ],
        ),
    ),
  );

Widget _btnsLogin()=>Expanded(
  flex: 2,
    child:Container(
      padding: EdgeInsets.all(32.0),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,

        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
           SizedBox(
             child: Container(
               width: MediaQuery.of(context).size.width*0.3,
               height: 1,
               color: Colors.black45,
             ),
           ),
              Text("Login with",style: TextStyle(color: Colors.black45),),
          SizedBox(
             child: Container(
                  width: MediaQuery.of(context).size.width*0.3,
                  height: 1,
                  color: Colors.black45,
                ),),
            ],
          ),
         Expanded(
           child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                    _btnwithFb(),
                  // Container(width: 2,),
                  SizedBox(width: 2,),
                    _btnwithGoogle()
                ],
              ),
         ),

        ],
      ),
    ) ,
);

Widget _btnwithFb()=> Expanded(
  child:   Container(

    height: 50,

    width: MediaQuery.of(context).size.width*0.35,

    decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(20),

        boxShadow:<BoxShadow>[

          BoxShadow(

            offset: Offset(0, 3),

            color: Colors.black12,

            blurRadius: 6,

          )

        ]

    ),

    child:RaisedButton(

        onPressed: (){},

        shape:RoundedRectangleBorder(

            borderRadius: BorderRadius.circular(20),

            side: BorderSide(

              color: Colors.blue,

              width: 2.0,

            )

        ) ,

        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: <Widget>[

            Image.asset("images/facebook.png",width: 35,),

            SizedBox(width: 5,),

            Text("Facebook",style: TextStyle(color: Colors.blue,fontSize: 17),)

          ],

        )

    ) ,

  ),
);

Widget _btnwithGoogle()=>Expanded(
  child:   Container(

    height: 50,

    width: MediaQuery.of(context).size.width*0.35,

    decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(20),

        boxShadow:<BoxShadow>[

          BoxShadow(

            offset: Offset(0, 3),

            color: Colors.black12,

            blurRadius: 6,

          )

        ]

    ),



    child:RaisedButton(

        onPressed: (){},

        shape:RoundedRectangleBorder(

            borderRadius: BorderRadius.circular(20),

            side: BorderSide(

              color: Colors.red,

              width: 2.0,

            )

        ) ,

        child: Row(



          mainAxisAlignment: MainAxisAlignment.center,



          children: <Widget>[



            Image.asset("images/google.png",width: 35,),



            SizedBox(width: 5,),



            Text("G",style: TextStyle(color: Colors.blue[600],fontSize: 17),),



            Text("o",style: TextStyle(color: Colors.red[600],fontSize: 17),),



            Text("o",style: TextStyle(color: Colors.yellow[900],fontSize: 17),),



            Text("g",style: TextStyle(color: Colors.blue[600],fontSize: 17),),



            Text("l",style: TextStyle(color: Colors.green,fontSize: 17),),



            Text("e",style: TextStyle(color: Colors.red[600],fontSize: 17),),



          ],



        )



    ) ,



  ),
);

  String  _validatorname(String value){
    if(value.isEmpty){
      return "Email \/ user name can't empty!";
    }
  }

String  _validatorpwd(String value){
  if(value.isEmpty){
    return "Password can't empty!";
  }
}
}

