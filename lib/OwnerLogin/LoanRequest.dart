


import 'package:devinvestment/OwnerLogin/AddParty/AddParty2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
Map<int, Color> colors =
{
  50:Color.fromRGBO(136,14,79, .1),
  100:Color.fromRGBO(136,14,79, .2),
  200:Color.fromRGBO(136,14,79, .3),
  300:Color.fromRGBO(136,14,79, .4),
  400:Color.fromRGBO(136,14,79, .5),
  500:Color.fromRGBO(136,14,79, .6),
  600:Color.fromRGBO(136,14,79, .7),
  700:Color.fromRGBO(136,14,79, .8),
  800:Color.fromRGBO(136,14,79, .9),
  900:Color.fromRGBO(136,14,79, 1),
};

class LoanRequest extends StatefulWidget {
  @override
  _LoanRequestState createState() => _LoanRequestState();
}

class _LoanRequestState extends State<LoanRequest> {

  MaterialColor dyellow = MaterialColor(0xffe0903b,colors);
  MaterialColor dblue = MaterialColor(0xff25274e,colors);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dyellow,
      appBar: AppBar(
        title: Text("Loan Request"),
        backgroundColor: dyellow,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [

            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset("assets/background11.png",fit: BoxFit.fill,),),
            getContents(),
          ],
        ),
      ),
    );
  }

  getContents() {
    return Padding(
      padding: EdgeInsets.only(top: 150,left: 40),
      child: Column(

        children: [

          Row(
            children: [
              Text("Customer Name",style: TextStyle(fontSize: 15),)
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(
                height: 50,
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Type the party Name",
                    suffixIcon: Image.asset("assets/icon.png",height: 40,width: 40,),
                      filled: true,
                      border: OutlineInputBorder(

                          borderSide: BorderSide(width: 1),
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 15,),

          Row(
            children: [
              Text("A Mobile Diary",style: TextStyle(fontSize: 15),)
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(
                height: 50,
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Type the Mobile Number",
                    suffixIcon: Image.asset("assets/icon2.png",height: 40,width: 40,),
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1),
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              Text("Calculator",style: TextStyle(fontSize: 15),)
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(
                height: 50,
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: Image.asset("assets/icn.png",height: 40,width: 40,),
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1),
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 15,),

          SizedBox(height: 10,),



          Align(
            alignment: Alignment.bottomCenter,
            child: MaterialButton(
              color: dblue,
              minWidth: 100,
              child: Text("Submit",style: TextStyle(color: Colors.white),),
              onPressed: (){

              },
            ),
          )
        ],
      ),
    );
  }
}
