

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
Map<int, Color> colors =
{
  50:Color.fromRGBO(136,14,79, .1),
  100:Color.fromRGBO(136,14,79, .2),
  200:Color.fromRGBO(136,14,79, .3),
  300:Color.fromRGBO(136,14,79, .4),
  400:Color.fromRGBO(136,14,79, .5),
  500:Color.fromRGBO(136,14,79, .6),
  600:Color.fromRGBO(136,14,79, .7),
  700:Color.fromRGBO(136,14,79, .8),
  800:Color.fromRGBO(136,14,79, .9),
  900:Color.fromRGBO(136,14,79, 1),
};

class ExpensesPage extends StatefulWidget {
  @override
  _ExpensesPageState createState() => _ExpensesPageState();
}

class _ExpensesPageState extends State<ExpensesPage> {
  MaterialColor dyellow = MaterialColor(0xffe0903b,colors);
  MaterialColor dblue = MaterialColor(0xff25274e,colors);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dblue,
      appBar: AppBar(
        title: Text("Expenses"),
        backgroundColor: dyellow,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [

            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
//              decoration: BoxDecoration(
//                  image: DecorationImage(
//                      image: AssetImage("assets/finance14.png",),
//
//                      fit: BoxFit.fill)
//              )
              child: Image.asset("assets/financeBack.jpg",fit: BoxFit.fill,),
            ),
            getContents(),
          ],
        ),
      ),
    );
  }

  getContents() {
    return Padding(
      padding: EdgeInsets.only(left: 30,top: 100,right: 20),
      child: Column(
        children: [
          getTable(),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: MaterialButton(
                  onPressed: (){},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  color: dyellow,
                  child: Text("Submit",style: TextStyle(color: Colors.white,fontSize: 15),),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: MaterialButton(
                  onPressed: (){},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  color: dyellow,
                  child: Text("Save",style: TextStyle(color: Colors.white,fontSize: 15),),
                ),
              ),
            ],
          )

        ],
      ),
    );
  }

  getTable() {
    return Table(
      columnWidths: {1:FractionColumnWidth(.4)},
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        TableRow(
            children: [
              Padding(padding: EdgeInsets.only(top: 10),child: Text("Party Details",style: TextStyle(color: Colors.white,fontSize: 15),)),
              Padding(
                padding:EdgeInsets.only(top: 10),
                child: SizedBox(
                  height: 40,

                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 1,color: Colors.white)
                        )


                    ),
                  ),
                ),
              )
            ]
        ),
        TableRow(
            children: [
              Padding(padding: EdgeInsets.only(top: 10),child: Text("Receipt Number",style: TextStyle(color: Colors.white,fontSize: 15),)),
              Padding(
                padding:EdgeInsets.only(top: 10),
                child: SizedBox(
                  height: 40,

                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 1,color: Colors.white)
                        )


                    ),
                  ),
                ),
              )
            ]
        ),
        TableRow(
            children: [
              Padding(padding: EdgeInsets.only(top: 10),child: Text("Party Name",style: TextStyle(color: Colors.white,fontSize: 15),)),
              Padding(
                padding:EdgeInsets.only(top: 10),
                child: SizedBox(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 1,color: Colors.white)
                        )


                    ),
                  ),
                ),
              )
            ]
        ),
        TableRow(
            children: [
              Padding(padding: EdgeInsets.only(top: 10),child: Text("Party Balance",style: TextStyle(color: Colors.white,fontSize: 15),)),
              Padding(
                padding:EdgeInsets.only(top: 10),
                child: SizedBox(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 1,color: Colors.white)
                        )


                    ),
                  ),
                ),
              )
            ]
        ),
        TableRow(
            children: [
              Padding(padding: EdgeInsets.only(top: 10),child: Text("Today received Payment",style: TextStyle(color: Colors.white,fontSize: 15),)),
              Padding(
                padding:EdgeInsets.only(top: 10),
                child: SizedBox(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 1,color: Colors.white)
                        )


                    ),
                  ),
                ),
              )
            ]
        ),
        TableRow(
            children: [
              Padding(padding: EdgeInsets.only(top: 10),child: Text("Discarded Amount",style: TextStyle(color: Colors.white,fontSize: 15),)),
              Padding(
                padding:EdgeInsets.only(top: 10),
                child: SizedBox(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 1,color: Colors.white)
                        )


                    ),
                  ),
                ),
              )
            ]
        ),
        TableRow(
            children: [
              Padding(padding: EdgeInsets.only(top: 10),child: Text("Total received Installment",style: TextStyle(color: Colors.white,fontSize: 15),)),
              Padding(
                padding:EdgeInsets.only(top: 10),
                child: SizedBox(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 1,color: Colors.white)
                        )


                    ),
                  ),
                ),
              )
            ]
        ),
        TableRow(
            children: [
              Padding(padding: EdgeInsets.only(top: 10),child: Text("Total Due Installment",style: TextStyle(color: Colors.white,fontSize: 15),)),
              Padding(
                padding:EdgeInsets.only(top: 10),
                child: SizedBox(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 1,color: Colors.white)
                        )


                    ),
                  ),
                ),
              )
            ]
        ),
        TableRow(
            children: [
              Padding(padding: EdgeInsets.only(top: 10),child: Text("Payment out",style: TextStyle(color: Colors.white,fontSize: 15),)),
              Padding(
                padding:EdgeInsets.only(top: 10),
                child: SizedBox(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 1,color: Colors.white)
                        )


                    ),
                  ),
                ),
              )
            ]
        ),


      ],
    );
  }
}
