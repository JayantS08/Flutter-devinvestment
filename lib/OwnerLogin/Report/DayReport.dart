

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
class DayReport extends StatefulWidget {
  @override
  _DayReportState createState() => _DayReportState();
}

class _DayReportState extends State<DayReport> {
  MaterialColor dyellow = MaterialColor(0xffe0903b,colors);
  MaterialColor dblue = MaterialColor(0xff25274e,colors);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: getBottom(),
      appBar: AppBar(
        backgroundColor: dyellow,
        title: Text("Day Report"),
        centerTitle: true,
      ),
      backgroundColor: dblue,
      body: getBody(),

    );
  }

  getBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
     children: [
        Row(

           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              minWidth: 100,
              onPressed: (){},
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: Text("Date"),),

              ),
            ),
          ],
        ),
       SizedBox(height: 15,),
       Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
           Text("Transactions",style: TextStyle(color: Colors.white,fontSize: 15),),
           Text("Total",style: TextStyle(color: Colors.white,fontSize: 15),),
           Text("Money In",style: TextStyle(color: Colors.white,fontSize: 15),),
           Text("Money Out",style: TextStyle(color: Colors.white,fontSize: 15),),

         ],
       )
     ],
    );
  }

  getBottom() {
    return Container(
      height: 75,
      width: MediaQuery.of(context).size.width,
      color: dyellow,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text("Total:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            Text("Money In - Money Out:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
          ],
        ),
      ),
    );
  }
}
