


import 'package:devinvestment/OwnerLogin/AddParty/AddParty2.dart';
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

class AddParty extends StatefulWidget {
  @override
  _AddPartyState createState() => _AddPartyState();
}

class _AddPartyState extends State<AddParty> {
  int emiOption=0;
  MaterialColor dyellow = MaterialColor(0xffe0903b,colors);
  MaterialColor dblue = MaterialColor(0xff25274e,colors);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dblue,
      appBar: AppBar(
        title: Text("Add Party"),
        backgroundColor: dblue,
      ),
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [

            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                  child: Image.asset("assets/background21.png",fit: BoxFit.fill,),),
           getContents(),
          ],
        ),
      ),
    );
  }

  getContents() {
      return Padding(
        padding: EdgeInsets.only(left:25,top:40),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset("assets/devlogo.png",height: 100,width: 200,)
              ],
            ),
            Row(
              children: [
                Text("Name",style: TextStyle(fontSize: 15),)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(
                  height: 50,
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 15,),

            Row(
              children: [
                Text("Address",style: TextStyle(fontSize: 15),)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(
                  height: 50,
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1),
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Text("Mobile Number",style: TextStyle(fontSize: 15),)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(
                  height: 50,
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1),
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Text("Father/Mother/Husband Name",style: TextStyle(fontSize: 15),)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(
                  height: 50,
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1),
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text("Select EMI Type"),
                )
              ],
            ),
            SizedBox(
              height: 75,
              width: 600,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    color: emiOption==0?dyellow:Colors.white,
                    child: Text("Daily",style: TextStyle(color: emiOption==0?Colors.white:Colors.black),),
                    onPressed: (){
                      setState(() {
                        emiOption=0;
                      });
                    },
                  ),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    color: emiOption==1?dyellow:Colors.white,
                    child: Text("Weekly",style: TextStyle(color: emiOption==1?Colors.white:Colors.black)),
                    onPressed: (){
                      setState(() {
                        emiOption=1;
                      });
                    },
                  ),

                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    color: emiOption==2?dyellow:Colors.white,
                    child: Text("Monthly",style: TextStyle(color: emiOption==2?Colors.white:Colors.black)),
                    onPressed: (){
                      setState(() {
                        emiOption=2;
                      });
                    },
                  ),
                ],
              )
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                color: dblue,
                minWidth: 100,
                child: Text("NEXT",style: TextStyle(color: Colors.white),),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AddParty2()));
                },
              ),
            )
          ],
        ),
      );
  }
}
