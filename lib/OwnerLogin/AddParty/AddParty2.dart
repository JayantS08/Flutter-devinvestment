

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

class AddParty2 extends StatefulWidget {
  @override
  _AddParty2State createState() => _AddParty2State();
}

class _AddParty2State extends State<AddParty2> {
  MaterialColor dyellow = MaterialColor(0xffe0903b,colors);
  MaterialColor dblue = MaterialColor(0xff25274e,colors);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dyellow,
      appBar: AppBar(
        title: Text("Add Party"),
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
      padding: EdgeInsets.only(left: 30,top: 100,right: 20),
      child: Column(
        children: [
          getTable(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Starting Date",style: TextStyle(color: Colors.white),),
                Text("Ending Date",style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               SizedBox(height:30,width: 100,child: TextField(decoration: InputDecoration(filled: true,fillColor: Colors.white,suffixIcon: Icon(Icons.calendar_today)),)),
                SizedBox(height:30,width: 100,child: TextField(decoration: InputDecoration(filled: true,fillColor: Colors.white,suffixIcon: Icon(Icons.calendar_today)),)),


              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Penalty",style: TextStyle(color: Colors.white),),
                SizedBox(height:30,width: 100,child: TextField(decoration: InputDecoration(filled: true,fillColor: Colors.white,),)),

              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: MaterialButton(
                  onPressed: (){},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  color: dyellow,
                  child: Text("Submit",style: TextStyle(color: Colors.white,fontSize: 20),),
                ),
              ),
            ],
          )

        ],
      ),
    );
  }

  getTable() {
    return Positioned(
      top: 50,
      left: 30,
      child: Table(
        columnWidths: {1:FractionColumnWidth(.4)},
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: [
          TableRow(
              children: [
                Padding(padding: EdgeInsets.only(top: 10),child: Text("Loan Amount",style: TextStyle(color: Colors.white,fontSize: 15),)),
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
                Padding(padding: EdgeInsets.only(top: 10),child: Text("Interest in Rupees",style: TextStyle(color: Colors.white,fontSize: 15),)),
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
                Padding(padding: EdgeInsets.only(top: 10),child: Text("Total Amount\n(Loan Amount * Interest)",style: TextStyle(color: Colors.white,fontSize: 15),)),
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
                Padding(padding: EdgeInsets.only(top: 10),child: Text("No. of Days",style: TextStyle(color: Colors.white,fontSize: 15),)),
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
                Padding(padding: EdgeInsets.only(top: 10),child: Text("Loan Per Installment",style: TextStyle(color: Colors.white,fontSize: 15),)),
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
      ),
    );
  }
}
