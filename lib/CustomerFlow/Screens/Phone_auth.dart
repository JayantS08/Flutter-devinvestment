import 'package:devinvestment/CustomerFlow/Screens/welcome.dart';
import 'package:flutter/material.dart';
import 'package:devinvestment/services/auth.dart';
import 'package:fluttertoast/fluttertoast.dart';


class PhoneLogin extends StatefulWidget {

  @override
  _PhoneLoginState createState() => _PhoneLoginState();
}

class _PhoneLoginState extends State<PhoneLogin> {
  final AuthService _auth = AuthService();
  //final _formKey = GlobalKey<FormState>();
  final formKey = new GlobalKey<FormState>();

  String _email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
      key: formKey,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.only(left: 8.0, top: 30),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Verify its you',style: TextStyle(color:Colors.white,fontSize: 27,fontWeight: FontWeight.bold),),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.0, right: 25.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter Your Email here',
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: Icon(Icons.phone_android),
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                  ),
                  onChanged: (val)
                  {
                    setState(() {
                      this._email = val;
                    });
                  },
                )),
            SizedBox(
              height: 20,
            ),
                Container(
              child: SizedBox(
                height: 20,
              ),
            ),
        Padding(
            padding: EdgeInsets.only(left: 25.0, right: 25.0),
            child: RaisedButton(

              color: Colors.green,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
                child: Center(child: Text('Send Link')),
                onPressed: () async{
                  //final auth = Provider.of(context).auth;
                  await _auth.sendPasswordResetEmail(_email);
                  print("Password reset email sent");
                  Fluttertoast.showToast(
                      msg: "Password reset link sent!!",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIos: 1,
//                                      backgroundColor: Colors.whi,
//                                      textColor: Colors.white,
                      fontSize: 10.0);
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => welcome()),
                    );
                  });
                  //return new MaterialApp(
                  //  home: AuthService().handleAuth(),
                  //);
                })
            )
          ],
        ),
      ),
    ),
    );
  }
}