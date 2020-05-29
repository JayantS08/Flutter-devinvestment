

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

class CashBank extends StatefulWidget {
  @override
  _CashBankState createState() => _CashBankState();
}

class _CashBankState extends State<CashBank> {
  MaterialColor dyellow = MaterialColor(0xffe0903b,colors);
  MaterialColor dblue = MaterialColor(0xff25274e,colors);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dyellow,
      appBar: AppBar(
        title: Text("Cash&Bank"),
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
              child: Image.asset("assets/finance14.png",fit: BoxFit.fill,),
            ),
            getContents(),
          ],
        ),
      ),
    );
  }

  getContents() {
    return Padding(
      padding: EdgeInsets.only(left: 30,top: 125,right: 20),
      child: Column(
        children: [
          getTable(),


          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: MaterialButton(
                  minWidth: 150,
                  onPressed: (){},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  color: dyellow,
                  child: Text("Done",style: TextStyle(color: Colors.white,fontSize: 15),),
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
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      columnWidths: {1:FractionColumnWidth(.4)},
      children: [
        TableRow(
            children: [
              Padding(padding: EdgeInsets.only(top: 10),child: Text("Cash in Amount",style: TextStyle(color: Colors.white,fontSize: 15),)),
              Padding(
                padding:EdgeInsets.only(top: 10),
                child: SizedBox(
                  height: 40,
                  width: 225,
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
              Padding(padding: EdgeInsets.only(top: 10),child: Text("Cash in Amount",style: TextStyle(color: Colors.white,fontSize: 15),)),
              Padding(
                padding:EdgeInsets.only(top: 10),
                child: SizedBox(
                  height: 40,
                  width: 225,
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
              Padding(padding: EdgeInsets.only(top: 10),child: Text("Amount in Account",style: TextStyle(color: Colors.white,fontSize: 15),)),
              Padding(
                padding:EdgeInsets.only(top: 10),
                child: SizedBox(
                  height: 40,
                  width: 225,
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
