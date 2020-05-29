

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

class PartyReport extends StatefulWidget {
  @override
  _PartyReportState createState() => _PartyReportState();
}

class _PartyReportState extends State<PartyReport> {
  MaterialColor dyellow = MaterialColor(0xffe0903b,colors);
  MaterialColor dblue = MaterialColor(0xff25274e,colors);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: getBottom(),
      backgroundColor: dblue,
      appBar: AppBar(
        backgroundColor: dyellow,
        title: Text("Party Report"),
        centerTitle: true,
        actions: [
          Icon(Icons.picture_as_pdf,color: Colors.red,),
          Icon(Icons.print,color: Colors.green,)
        ],
      ),
      body: getBody(),
    );
  }
List dropdown=[
  "Sample 1",
  "Sample 2"
];
  getBody() {
    return Column(
      children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width/2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CheckboxListTile(
                onChanged: (val){},
                value: true,
                title: Text("Date Filter",style: TextStyle(color: dyellow,fontSize: 20),),
              ),
            ),
          ),
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
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Show",style: TextStyle(color: dyellow),),
            Text("Sort By",style: TextStyle(color: dyellow),),

          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          DropdownButton(
            onChanged: (val){

            },
            style: TextStyle(color: dyellow),
            hint: Text("All Parties"),
            items: [
              DropdownMenuItem(
                child: Text("Sample 1"),
              ),
              DropdownMenuItem(
                child: Text("Sample 1"),
              )
            ],
            icon: Icon(Icons.arrow_drop_down,color: dyellow,),
          ),
            DropdownButton(
              onChanged: (val){

              },
              style: TextStyle(color: dyellow),
              hint: Text("Name",style: TextStyle(color: dyellow),),
              items: [
                DropdownMenuItem(
                  child: Text("Sample 1"),
                ),
                DropdownMenuItem(
                  child: Text("Sample 1"),
                )
              ],
              icon: Icon(Icons.arrow_drop_down,color: dyellow,),
            ),

          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CheckboxListTile(
            title: Text("Show Zero Balance Party",style: TextStyle(color: Colors.white)),
            value: true,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Party Name",style: TextStyle(color: dyellow,fontSize: 15),),
              Text("Balance",style: TextStyle(color: dyellow,fontSize: 15,),)
            ]
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Name",style: TextStyle(color: Colors.white),),
              Text("Amount",style: TextStyle(color: Colors.white),),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Name",style: TextStyle(color: Colors.white),),
              Text("Amount",style: TextStyle(color: Colors.white),),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Name",style: TextStyle(color: Colors.white),),
              Text("Amount",style: TextStyle(color: Colors.white),),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Name",style: TextStyle(color: Colors.white),),
              Text("Amount",style: TextStyle(color: Colors.white),),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Name",style: TextStyle(color: Colors.white),),
              Text("Amount",style: TextStyle(color: Colors.white),),
            ],
          ),
        ),
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
