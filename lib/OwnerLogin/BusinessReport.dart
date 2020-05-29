

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

class BusinessReport extends StatefulWidget {
  @override
  _BusinessReportState createState() => _BusinessReportState();
}

class _BusinessReportState extends State<BusinessReport> {
  MaterialColor dyellow = MaterialColor(0xffe0903b,colors);
  MaterialColor dblue = MaterialColor(0xff25274e,colors);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: dblue,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: dyellow,
        title: Text("Business Dashboard"),
        centerTitle: true,
      ),
      body: getBody(),
      bottomNavigationBar: getBottom(),
    );
  }

  getBody() {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.asset("assets/financeBack.jpg",fit: BoxFit.fill,),
        ),
        getContents(),
      ],
    );
  }

  getContents() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 8),
            child: Text("Payment Out",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          GestureDetector(
            onTap: (){_showDialog(context);},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Name",style: TextStyle(color: dyellow,fontSize: 15,fontWeight: FontWeight.bold),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Total Amount",style: TextStyle(color: dyellow,fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Date",style: TextStyle(color: dyellow,fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Discount",style: TextStyle(color: dyellow,fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Paid",style: TextStyle(color: dyellow,fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              GestureDetector(
                onTap: (){
                  _showDialog(context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Reminder",style: TextStyle(color: dyellow,fontSize: 15,fontWeight: FontWeight.bold),),
                ),
              ),
              Icon(Icons.share,color: dyellow,),
              Icon(Icons.print,color: dyellow,),
              Text("See all",style: TextStyle(color: Colors.white))
            ],
          ),
          Divider(
            color: Colors.white,
            thickness: 3,
          ),Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Payment In",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          GestureDetector(
            onTap: (){_showDialog(context);},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Name",style: TextStyle(color: dyellow,fontSize: 15,fontWeight: FontWeight.bold),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Total Amount",style: TextStyle(color: dyellow,fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Date",style: TextStyle(color: dyellow,fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Discount",style: TextStyle(color: dyellow,fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Paid",style: TextStyle(color: dyellow,fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (){
                  _showDialog(context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Reminder",style: TextStyle(color: dyellow,fontSize: 15,fontWeight: FontWeight.bold),),
                ),
              ),
              Icon(Icons.share,color: dyellow,),
              Icon(Icons.print,color: dyellow,),
              Text("See all",style: TextStyle(color: Colors.white))
            ],
          ),
          Divider(
            color: Colors.white,
            thickness: 3,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Name",style: TextStyle(color: dyellow,fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Total Amount",style: TextStyle(color: dyellow,fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Discount",style: TextStyle(color: dyellow,fontSize: 15,fontWeight: FontWeight.bold),),
          ),
        ],
        ),
      ),
    );
  }

  getBottom() {
    return SafeArea(
      child: Container(
        color: Colors.white,
        height: 40,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("PAYMENT IN"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("PAYMENT OUT"),
            )
          ],
        ),
      ),
    );
  }

  _showDialog(context) {
    return showDialog(
        context: context,
        builder: (BuildContext bc)=> AlertDialog(
          contentPadding: EdgeInsets.all(0),
          titlePadding: EdgeInsets.all(0),
          actionsPadding: EdgeInsets.all(0),
          actions: [
            FlatButton(
              child: Text("Cancel"),
              onPressed: (){},
            ),
            FlatButton(
              child: Text("Submit"),
              onPressed: (){},
            )
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ),
          title: ColoredBox(
            color: dyellow,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Name of the Customer",style: TextStyle(fontSize: 15),),
                  Text("Amount",style: TextStyle(color: Colors.white,fontSize: 15),)
                ],
              ),
            ),
          ),
          content: Container(
            height: 200,
            width: MediaQuery.of(context).size.width/1.5,
            child: ListView(
              children: [
                ListTile(
                  leading: Radio(),
                  title: Text("Remind me on",style: TextStyle(fontSize: 10),),
                  trailing: Text("Select Date",style: TextStyle(decoration: TextDecoration.underline,fontSize: 10),),
                ),
                ListTile(
                  leading: Radio(),
                  title: Text("Send SMS on",style: TextStyle(fontSize: 10),),
                  trailing: Text("Select Date",style: TextStyle(decoration: TextDecoration.underline,fontSize: 10),),
                ),
                ListTile(
                  leading: Radio(),
                  title: Text("Ignore till",style: TextStyle(fontSize: 10),),
                  trailing: Text("Select Date",style: TextStyle(decoration: TextDecoration.underline,fontSize: 10),),
                ),
                ListTile(
                  leading: Radio(),
                  title: Text("Clear Reminder",style: TextStyle(fontSize: 10),),

                ),
              ],
            ),
          ),
        )
    );
  }


}

