//import 'file:///D:/flutterProjects/dev_investment/lib/utils/buttons.dart';
import 'package:devinvestment/utils/buttons.dart';
import 'package:flutter/material.dart';
//import 'file:///D:/flutterProjects/dev_investment/lib/utils/const.dart';
import 'package:devinvestment/utils/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'Request.dart';

class account extends StatefulWidget {
  final Function toggleView;
  account({ this.toggleView });
  @override
  _accoutState createState() => _accoutState();
}

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
bool _autoValidate = false;
String _value;
final _firestore = Firestore.instance;

class _accoutState extends State<account> {
  final _auth = FirebaseAuth.instance;

  Future _selectDate() async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2016),
        lastDate: new DateTime(2019));
    if (picked != null) setState(() => _value = picked.toString());
  }

  @override
  Widget build(BuildContext context) {
    String name;
    String _fname;
    String _sadd;
    String _mob;
    String _email;
    String _add;
    String _pass;

    return Scaffold(
      resizeToAvoidBottomPadding: false,
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
          Form(
              key: _formKey,
              autovalidate: _autoValidate,
              child: SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 170,
                        width: 250,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/devlogo.png'))),
                      ),
                      Text(
                        'Create Account',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: CustomTextField(
                          validator: (String input) =>
                              input.isEmpty ? 'please enter name' : null,
                          onSaved: (input) => name = input,
                          icon: Icon(Icons.email),
                          hint: "Name",
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: CustomTextField(
                          validator: (String input) =>
                              input.isEmpty ? 'please enter name' : null,
                          onSaved: (input) => _fname = input,
                          hint: "Father Name",
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: CustomTextField(
                          validator: (String input) =>
                              input.isEmpty ? 'please enter address' : null,
                          onSaved: (input) => _sadd = input,
                          icon: Icon(Icons.email),
                          hint: "Shop Address",
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: CustomTextField(
                          validator: (String input) => input.isEmpty
                              ? 'please enter mobile number'
                              : null,
                          onSaved: (input) => _mob = input,
                          icon: Icon(Icons.email),
                          hint: "Mobile Number",
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: CustomTextField(
                          validator: (String input) => input.isEmpty
                              ? 'please enter Email'
                              : !input.contains('@')
                                  ? 'please enter a valid email'
                                  : null,
                          onSaved: (input) => _email = input,
                          icon: Icon(Icons.email),
                          hint: "Email",
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: CustomTextField(
                          validator: (String input) =>
                              input.isEmpty ? 'please enter address' : null,
                          onSaved: (input) => _add = input,
                          icon: Icon(Icons.email),
                          hint: "Address",
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: CustomTextField(
                          obsecure: true,
                          validator: (String input) =>
                              input.isEmpty ? 'please enter password' : null,
                          onSaved: (input) => _pass = input,
                          icon: Icon(Icons.email),
                          hint: "Password",
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: RoundButoon(
                          color: Colors.deepPurple,
                          f: () async {
                            if (_formKey.currentState.validate()) {
                              _formKey.currentState.save();
                              print(
                                  '$name $_fname $_sadd $_mob $_email $_add $_pass');

                              try {
                                final newUser =
                                    await _auth.createUserWithEmailAndPassword(
                                        email: _email.trim(), password: _pass);
                                if (newUser != null) {
                                  print('registered');
                                  DocumentReference res = await _firestore.collection('credentials').add({
                                    'Name': name,
                                    'Father Name': _fname,
                                    'Shop Address': _sadd,
                                    'Mobile': _mob,
                                    'Email': _email,
                                    'Address': _add,
                                  });
                                  print(res.documentID);
                                  _auth.signOut();
                                  Fluttertoast.showToast(
                                      msg: "Registration Successful",
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.BOTTOM,
                                      timeInSecForIos: 1,
//                                      backgroundColor: Colors.whi,
//                                      textColor: Colors.white,
                                      fontSize: 10.0);
                                  Navigator.pop(context);
                                }
                              } catch (e) {
                                print(e);
                              }
                            }
                          },
                          name: 'Login',
                        ),
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
