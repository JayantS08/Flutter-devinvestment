import 'package:flutter/material.dart';

class cash extends StatefulWidget {
  @override
  _cashState createState() => _cashState();
}

class _cashState extends State<cash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Color.fromRGBO(222, 144, 59, 1),
            child: SafeArea(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/back24.png"),
                    fit: BoxFit.fill,
                    //colorFilter: ColorFilter.mode(Color.fromRGBO(192, 234, 218,1).withOpacity(0.6), BlendMode.softLight),
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
