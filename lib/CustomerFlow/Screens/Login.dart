import 'package:devinvestment/CustomerFlow/Screens/create_Account.dart';
import 'package:devinvestment/CustomerFlow/Screens/welcome.dart';
import 'package:devinvestment/OwnerLogin/HomePage.dart';
import 'package:flutter/material.dart';
class login extends StatefulWidget {

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//
//        actions: [
////          FlatButton(
////            child: Text("Open Company Flow"),
////            onPressed: (){
////              Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
////            },
////          )
//        ],
//      ),
      body: Stack(
          children:<Widget> [
      Container(
      decoration: BoxDecoration(
          image: DecorationImage(
          image: AssetImage("images/hhuh.png"),
      fit: BoxFit.cover,
      //colorFilter: ColorFilter.mode(Color.fromRGBO(192, 234, 218,1).withOpacity(0.6), BlendMode.softLight),
    ),
    ),
    ),
            Padding(
              padding: const EdgeInsets.only(right: 70,left: 70,top: 70),
              child: Container(
                height: 200,
                width: 250,
                decoration: BoxDecoration(
                  image:DecorationImage(
                  image: AssetImage('images/devlogo.png')),
                ),
              ),
            ),
            Positioned(
              height: 70,
              bottom: 130,
              right: 80,
              child: Container(
                width: 190,
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.white)),
                    color: Colors.white,
                    textColor: Colors.deepPurple,
                    padding: EdgeInsets.all(8.0),
                    onPressed: () {  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => welcome()),
                    );},
                    child: Text(
                      "Login".toUpperCase(),
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              height: 70,
              bottom: 50,
              right: 80,
              child: Container(
                width: 190,
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.white)),
                    color: Colors.white,
                    textColor: Colors.deepPurple,
                    padding: EdgeInsets.all(8.0),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => account()));
                    },
                    child: Text(
                      "Register".toUpperCase(),
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ),
              ),
            )

          ])
    );
  }
}
