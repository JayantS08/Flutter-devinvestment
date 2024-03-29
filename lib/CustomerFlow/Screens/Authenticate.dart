import 'package:flutter/material.dart';
import 'create_Account.dart';
import 'welcome.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showSignIn = true;
  void toggleView()
  {
    setState(() {
      showSignIn = !showSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(showSignIn)
      {
        return welcome(toggleView: toggleView);
      }
    else
      {
        return account(toggleView: toggleView);
      }
  }
}
