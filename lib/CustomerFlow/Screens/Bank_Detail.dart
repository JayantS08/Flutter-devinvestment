import 'package:devinvestment/utils/const.dart';
import 'package:devinvestment/Employee/employye_login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Detail extends StatefulWidget {
  @override
  _DetailState createState() => _DetailState();
}

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
bool _autoValidate = false;
String _value;
final _firestore = Firestore.instance;

class _DetailState extends State<Detail> with SingleTickerProviderStateMixin {
  TabController _tabController;


  @override
  void initState() {
    // TODO: implement initStat
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    String _name;
    String _accno;
    String _ifsc;
    String _BranchName;
    String _Gpay;
    String _paypal;
    String _paytm;
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Stack(
            children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/finance12.jpg"),
                fit: BoxFit.cover,
                //colorFilter: ColorFilter.mode(Color.fromRGBO(192, 234, 218,1).withOpacity(0.6), BlendMode.softLight),
              ),
            ),
          ),
          Form(
            key: _formKey,
            autovalidate: _autoValidate,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SafeArea(
                      child: Container(
                        //color:Color.fromRGBO(222, 144, 59, 1) ,
                        child: SizedBox(
                            height: MediaQuery.of(context).size.height / 12,
                            width: double.infinity,
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                                SizedBox(
                                  width: 80,
                                ),
                                Center(
                                    child: Text(
                                      'Bank Details',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400),
                                    )),
                              ],
                            )),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height,
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text(
                                    'Name of Account Holder',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                CustomTextField(
                                      onSaved: (input) {
                                        _name = input;
                                      },
                                    ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text(
                                    'Account Number',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  height: 0,
                                ),
                                CustomTextField(
                                  onSaved: (input) {
                                    _accno = input;
                                  },
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text(
                                    'IFSC Code',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  height: 0,
                                ),
                                CustomTextField(
                                  onSaved: (input) {
                                    _ifsc = input;
                                  },
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text(
                                    'Branch Name',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  height: 0,
                                ),
                                CustomTextField(
                                  onSaved: (input) {
                                    _BranchName = input;
                                  },
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 54,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child:
                            SingleChildScrollView(
                              child: Column(
                                children: [
                                  Text(
                                    'Billing',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        letterSpacing: 1.5,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  TabBar(
                                    indicatorColor: Colors.grey,
                                    indicatorSize: TabBarIndicatorSize.values[1],
                                    indicatorWeight: 1,
                                    controller: _tabController,
                                    tabs: [
                                      Tab(
                                        child: Text(
                                          'Mobile Payment',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
//                      Text('+More',style: TextStyle(color: Colors.white),)
                                      Tab(
                                        child: Text(
                                          '+More',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 250,
                                    child: TabBarView(
                                      children: [
                                        Column(
                                          children: <Widget>[
                                            CustomTextField(
                                              onSaved: (input) {
                                                _Gpay = input;
                                              },
                                              hint: "Google Pay Number ",
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            CustomTextField(
                                              onSaved: (input) {
                                                _paypal = input;
                                              },
                                              hint: "Paypal ID ",
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            CustomTextField(
                                              onSaved: (input) {
                                                _paytm = input;
                                              },
                                              hint: "Paytm Number ",
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 0),
                                              child: RaisedButton(
                                                onPressed: () async{
                                                  if (_formKey.currentState.validate()) {
                                                    _formKey.currentState.save();
                                                    print(
                                                        '$_name $_accno $_ifsc $_BranchName $_Gpay $_paytm $_paypal');
                                                    final FirebaseUser user = await _auth.currentUser();
                                                    String uid1 = user.uid;
                                                    try {
                                                      DocumentReference res = await _firestore.collection('Bank_Details').add({
                                                        'Account Holder':_name ,
                                                        'Account Number': _accno,
                                                        'IFSC number': _ifsc,
                                                        'Branch Name': _BranchName,
                                                        'Google Pay Number': _Gpay,
                                                        'Paypal ID': _paypal,
                                                        'Paytm number': _paytm,
                                                        'uid': uid1,
                                                      });
                                                      print(res.documentID);
                                                      Fluttertoast.showToast(
                                                          msg: "Data Uploaded Successfully",
                                                          toastLength: Toast.LENGTH_SHORT,
                                                          gravity: ToastGravity.BOTTOM,
                                                          timeInSecForIos: 1,
                                                          fontSize: 10.0);
                                                      Navigator.pop(context);
                                                    } catch (e) {
                                                      print(e);
                                                    }
                                                  }

                                                    Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => empLogin()));
                                                },
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  new BorderRadius.circular(
                                                      9.0),
                                                  side: BorderSide(
                                                      color: Colors.white),
                                                ),
                                                color: Colors.white,
                                                child: Text(
                                                  'Save',
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          56, 56, 108, 1)),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text('more')
                                      ],
                                      controller: _tabController,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )

                        ],
                      ),
                    ),
                  ],
                ),
              ),
          )
        ])
    );
  }
}
//Text('Bank Details',style: TextStyle(color:Colors.white),),
