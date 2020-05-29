import 'package:flutter/material.dart';
import 'file:///C:/Users/jayan/Downloads/dev_invest-master/lib/utils/buttons.dart';
import 'file:///C:/Users/jayan/Downloads/dev_invest-master/lib/utils/const.dart';
class CustomerDetail extends StatefulWidget {
  @override
  _CustomerDetailState createState() => _CustomerDetailState();
}

class _CustomerDetailState extends State<CustomerDetail> {
  Positioned getTable() {
    return Positioned(
      top: 50,
      left: 30,
      child: Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: [
          TableRow(
              children: [
                Padding(padding: EdgeInsets.only(top: 10),
                    child: Text("Customer Name",
                      style: TextStyle(color: Colors.white, fontSize: 15),)),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: SizedBox(
                    height: 40,
                    width: 225,
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(

                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  width: 1, color: Colors.white)
                          )


                      ),
                    ),
                  ),
                )
              ]
          ),
          TableRow(
              children: [
                Padding(padding: EdgeInsets.only(top: 10),
                    child: Text("Father Name",
                      style: TextStyle(color: Colors.white, fontSize: 15),)),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: SizedBox(
                    height: 40,
                    width: 225,
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(

                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  width: 1, color: Colors.white)
                          )


                      ),
                    ),
                  ),
                )
              ]
          ),
          TableRow(
              children: [
                Padding(padding: EdgeInsets.only(top: 10),
                    child: Text("Mobile Number",
                      style: TextStyle(color: Colors.white, fontSize: 15),)),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: SizedBox(
                    height: 40,
                    width: 225,
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(

                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  width: 1, color: Colors.white)
                          )


                      ),
                    ),
                  ),
                )
              ]
          ),
          TableRow(
              children: [
                Padding(padding: EdgeInsets.only(top: 10),
                    child: Text("Balance",
                      style: TextStyle(color: Colors.white, fontSize: 15),)),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: SizedBox(
                    height: 40,
                    width: 225,
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(

                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  width: 1, color: Colors.white)
                          )


                      ),
                    ),
                  ),
                )
              ]
          ),
          TableRow(
              children: [
                Padding(padding: EdgeInsets.only(top: 10),
                    child: Text("Due Installment",
                      style: TextStyle(color: Colors.white, fontSize: 15),)),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: SizedBox(
                    height: 40,
                    width: 225,
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(

                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  width: 1, color: Colors.white)
                          )


                      ),
                    ),
                  ),
                )
              ]
          ),
          TableRow(
              children: [
                Padding(padding: EdgeInsets.only(top: 10),
                    child: Text("Balance Installment",
                      style: TextStyle(color: Colors.white, fontSize: 15),)),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: SizedBox(
                    height: 40,
                    width: 225,
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(

                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  width: 1, color: Colors.white)
                          )


                      ),
                    ),
                  ),
                )
              ]
          ),
          TableRow(
              children: [
                Padding(padding: EdgeInsets.only(top: 10),
                    child: Text("Total Cash in",
                      style: TextStyle(color: Colors.white, fontSize: 15),)),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: SizedBox(
                    height: 40,
                    width: 225,
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(

                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  width: 1, color: Colors.white)
                          )


                      ),
                    ),
                  ),
                )
              ]
          ),


        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: [
          Container(
            color: Color.fromRGBO(222, 144, 59, 1),
            child: SafeArea(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/finance14.png"),
                    fit: BoxFit.fill,
                    //colorFilter: ColorFilter.mode(Color.fromRGBO(192, 234, 218,1).withOpacity(0.6), BlendMode.softLight),
                  ),
                ),
              ),
            ),
          ),
          SafeArea(
            child: Container(
              //color:Color.fromRGBO(222, 144, 59, 1) ,
              child: SizedBox(
                  height:50,
                  width: double.infinity,
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back,color: Colors.white,),
                        onPressed: (){
                          Navigator.pop(context);
                        },
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Center(child: Text('Customer Details',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),)),
                    ],
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30,top: 100,right: 20),
            child: Column(
              children: <Widget>[
                getTable(),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                child: RaisedButton(onPressed: (){
//                      Navigator.push(
//                          context,
//                          MaterialPageRoute(builder: (context) => empLogin()));
                },shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(9.0),
                  side: BorderSide(color:Colors.white ),),
                  color: Color.fromRGBO(222, 144, 59, 1) ,
                  child: Text('Submit',style: TextStyle(color:Colors.white),),
                )),
//),

              ],
            ),
          )

        ],
      ),
    );
  }
}
