import 'package:flutter/material.dart';

import 'detailscreen.dart';

class AllPublicUinversity extends StatefulWidget {
  @override
  _AllPublicUinversityState createState() => _AllPublicUinversityState();
}

class _AllPublicUinversityState extends State<AllPublicUinversity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Public University",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen("American University of PhnomPenh")));
              },
              child: _boxuniversity("AmericanUniversityofPhnomPenh", "American University of PhnomPenh"),
            ),
            _boxuniversity("EconomicsandFinanceInstitute", "Economics and Finance Institute"),
            _boxuniversity("ChenlaUniversity", "Chenla University"),
            _boxuniversity("CheaSimUniversityofKamchaymear", "Chea Sim University of Kam chaymear"),
            _boxuniversity("AmericanUniversityofPhnomPenh", "American University of PhnomPenh"),
            _boxuniversity("BelteiInternationalUniversity", "Beltei International University"),
            _boxuniversity("AngkorKhemaraUniversity", "Angkor Khemara University"),
            _boxuniversity("NationalUniversityofManagement", "National University of Management"),
            _boxuniversity("PannasastraUniversityofCambodia", "Pannasastra University of Cambodia"),
            _boxuniversity("UniversityofSoutheastAsia", "University of SoutheastAsia"),
          ],
        ),
      ),

    );
  }
  Widget _boxuniversity(String imgname,String titleuni)=>Container(
    child:Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
       Container(
         height: 130,
         margin:EdgeInsets.only(left: 16) ,
         padding: EdgeInsets.all(8.0),
         width: MediaQuery.of(context).size.width*0.3,
         child: Image.asset("images/items/"+imgname+".png"),
       ),
        Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.only(left: 16,right:16),
          width: MediaQuery.of(context).size.width*0.7-48,
          child: Text(titleuni,softWrap: true,),
        ),
        Divider(
          color: Colors.teal,
        )
      ],
    ) ,
  );


}
