import 'empDetails.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/jayan/Downloads/dev_invest-master/lib/utils/const.dart';
import 'file:///C:/Users/jayan/Downloads/dev_invest-master/lib/utils/buttons.dart';
class empLogin extends StatefulWidget {
  @override
  _empLoginState createState() => _empLoginState();
}

class _empLoginState extends State<empLogin> {
  String _email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/background.png"),
                fit: BoxFit.cover,
                //colorFilter: ColorFilter.mode(Color.fromRGBO(192, 234, 218,1).withOpacity(0.6), BlendMode.softLight),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: 170,
                    width: 250,
                    decoration: BoxDecoration(

                        image:DecorationImage(image: AssetImage('images/devlogo.png'))
                    ),
                  ),
                  Text('Employee Login',style: TextStyle(color:Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    onSaved: (input) {
                      _email = input;
                    },
                    icon: Icon(Icons.email),
                    hint: "Your Email Address",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    obsecure: true,
                    onSaved: (input) {
                      _email = input;
                    },
                    icon: Icon(Icons.email),
                    hint: "Password",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RoundButoon(color: Color.fromRGBO(35, 39, 70, 1),f:(){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => details()));
                  },name: 'Sumbit',),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
