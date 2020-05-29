import 'package:devinvestment/CustomerFlow/Screens/Bank_Detail.dart';
import 'package:devinvestment/utils/buttons.dart';
import 'package:devinvestment/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Request extends StatefulWidget {
  @override
  _RequestState createState() => _RequestState();
}

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
bool _autoValidate = false;
String _value;
final _firestore = Firestore.instance;

class _RequestState extends State<Request> {
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    String _LoanNeeded;
    String _NeedsBefore;
    String _LoanType;
    String _dt;
    String _address;
    String _mobile;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/back2.png"),
                fit: BoxFit.cover,
                //colorFilter: ColorFilter.mode(Color.fromRGBO(192, 234, 218,1).withOpacity(0.6), BlendMode.softLight),
              ),
            ),
          ),

            Container(
              color: Color.fromRGBO(222, 144, 59, 1),
              child: SizedBox(
                  height: 70,
                  width: double.infinity,
                  child: Center(
                      child: Text(
                    'Request Form',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ))),
            ),

          Form(
            key: _formKey,
            autovalidate: _autoValidate,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SafeArea(
                    child: Container(
                      color: Color.fromRGBO(222, 144, 59, 1),
                      child: SizedBox(
                          height: 60,
                          width: double.infinity,
                          child: Center(
                              child: Text(
                                'Request Form',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400),
                              ))),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  CustomTextField(
                    validator: (String input) =>
                    input.isEmpty ? 'please enter amount needed' : null,
                    onSaved: (input) {
                      _LoanNeeded = input;
                    },
                    //icon: Icon(Icons.email),
                    hint: "Loan needed",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(children: [
                    Expanded(
                      child: CustomTextField(
                        validator: (String input) =>
                        input.isEmpty ? 'please enter date' : null,
                        onSaved: (input) {
                          _NeedsBefore = input;
                        },
                        // icon: Icon(Icons.email),
                        hint: "Needs Before",
                      ),
                    ),
                    Expanded(
                      child: CustomTextField(
                        validator: (String input) =>
                        input.isEmpty ? 'please enter Loan Type' : null,
                        onSaved: (input) {
                          _LoanType = input;
                        },
                        // icon: Icon(Icons.email),
                        hint: "Loan Type",
                      ),
                    )
                  ]),
                  SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    validator: (String input) =>
                    input.isEmpty ? 'please enter date' : null,
                    onSaved: (input) =>_dt = input,
                    //icon: Icon(Icons.email),
                    hint: "Select the Date mm-dd-yyyy",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    validator: (String input) =>
                    input.isEmpty ? 'please enter Address' : null,
                    onSaved: (input) {
                      _address = input;
                      print(_address);
                    },
                    //icon: Icon(Icons.email),
                    hint: "Shop Address",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    validator: (String input) =>
                    input.isEmpty ? 'please enter Mobile no.' : null,
                    onSaved: (input) {
                      _mobile = input;
                      print(_mobile);
                    },
                    //icon: Icon(Icons.email),
                    hint: "Mobile Number",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70, right: 70),
                    child: RoundButoon(
                      color: Color.fromRGBO(222, 144, 59, 1),
                      f: () async{
                        if (_formKey.currentState.validate()) {
                          _formKey.currentState.save();
                          print(
                              '$_LoanNeeded $_NeedsBefore $_address $_mobile $_dt $_LoanType');
                          final FirebaseUser user = await _auth.currentUser();
                          String uid1 = user.uid;
                          try {
                            print('registered');
                            DocumentReference res = await _firestore.collection('request').add({
                              'LoanNeeded':_LoanNeeded ,
                              'LoanType': _LoanType,
                              'NeedsBefore': _NeedsBefore,
                              'address': _address,
                              'dt': _dt,
                              'mobile': _mobile,
                              'uid': uid1,
                            });
                            print(res.documentID);
                            Fluttertoast.showToast(
                                msg: "Data Uploaded Successfully",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.BOTTOM,
                                timeInSecForIos: 1,
//                                      backgroundColor: Colors.whi,
//                                      textColor: Colors.white,
                                fontSize: 10.0);
                            Navigator.pop(context);
                          } catch (e) {
                            print(e);
                          }
                        }
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Detail()));
                      },
                      name: 'Next',
                    ),
                  )
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
