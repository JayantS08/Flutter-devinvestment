import 'package:devinvestment/CustomerFlow/Screens/Bank_Detail.dart';
import 'package:devinvestment/CustomerFlow/Screens/Phone_auth.dart';
import 'package:devinvestment/CustomerFlow/Screens/Request.dart';
import 'package:devinvestment/CustomerFlow/Screens/create_Account.dart';
import 'package:devinvestment/OwnerLogin/HomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:devinvestment/services/auth.dart';

class welcome extends StatefulWidget {

  final Function toggleView;
  welcome({ this.toggleView });

  @override
  _welcomeState createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  var myController = TextEditingController();
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String error ='';

  String email ='';
  String pass ='';
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
              child: Container(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Container(
                      height: 170,
                      width: 250,
                      decoration: BoxDecoration(

                          image:DecorationImage(image: AssetImage('images/devlogo.png'))
                      ),
                    ),
                    Text('Create Account',style: TextStyle(color:Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      //validator: (val) => val.isEmpty ? 'Enter an email' : null,
                      decoration: InputDecoration(
                        hintText: 'Email',
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: Icon(Icons.email),
                        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        border:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                      ),
                      validator: (val) => val.isEmpty ? 'Enter an email' : null,
                      onChanged: (val) {
                        setState(() => email = val);
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: Icon(Icons.lock_outline),
                        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        border:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                      ),
                      validator: (val) => val.length < 6 ? 'Enter a password 6+ chars long' : null,
                      onChanged: (val) {
                        setState(() => pass = val);
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RaisedButton(
                        color: Colors.deepPurple,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
                        child: Text(
                          'Sign In',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () async {
                          if(_formKey.currentState.validate()) {
                            dynamic result = await _auth.signInWithEmailAndPassword(email, pass);
                            if(result == null) {
                              setState(() {
                                error = 'Could not sign in with those credentials';
                              });

                            }
                            else
                              {
                                if(email=="admin@gmail.com")
                                  {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => HomePage()),
                                    );
                                  }
                                else
                                  {
                                    Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Request()),
                                    );
                                  }
                              }
                          }
                        }
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PhoneLogin()));
                        // Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rightToLeft, child: signup()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 150),
                        child: new Text("Forgot Password?",textAlign: TextAlign.right,style: TextStyle(
                            fontWeight: FontWeight.w400,
                            //decoration: TextDecoration.underline
                            color: Colors.white,
                            fontSize: 15
                        ),),
                      ),
                    ),
                    SizedBox(height: 25,),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => account()));
                        //Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rightToLeft, child: signup()));
                      },
                      child: new Text("Don't have an account?Register",style: TextStyle(
                          fontWeight: FontWeight.w400,
                          // decoration: TextDecoration.underline
                          color: Colors.white,
                          fontSize: 18
                      ),),
                    ),
                  ],
                ),
              ),

              )
            ),
          )
        ],
      ),
    );
  }
}
