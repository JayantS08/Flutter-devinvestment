
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

class LoanDetails extends StatefulWidget {
  @override
  _LoanDetailsState createState() => _LoanDetailsState();
}

class _LoanDetailsState extends State<LoanDetails> {
  MaterialColor dyellow = MaterialColor(0xffe0903b,colors);
  MaterialColor dblue = MaterialColor(0xff25274e,colors);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: dyellow,
        elevation: 0,
        actions: [

          FlatButton(
            child: Icon(Icons.notifications,color: Colors.black,),
            onPressed: (){},
          ),
//
        ],
        title: SizedBox(
          height: 50,
          width: 150,
          child: TextField(

            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              hintText: "Search",
              suffixIcon: Icon(
                Icons.search,

              ),
            ),
          ),
        ),


      ),
      body: getBody(),
    );
  }

  getBody() {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image.asset("assets/backmain.png",fit: BoxFit.fill
            ,),),
        Padding(
          padding: EdgeInsets.only(top: 75,left: 35),
          child: Column(
            children: [
              Row(
                children: [
                  Text("Name/Loan ID",style: TextStyle(fontSize: 20,color: dyellow),)
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top:35.0),
                child: Row(
                  children: [
                    Text("Name",style: TextStyle(fontSize: 20,color: Colors.white),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:15.0),
                child: Row(
                  children: [
                    Text("Total Amount",style: TextStyle(fontSize: 20,color: Colors.white),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:15.0),
                child: Row(
                  children: [
                    Text("Loan Type",style: TextStyle(fontSize: 20,color: Colors.white),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:15.0),
                child: Row(
                  children: [
                    Text("Due Amount",style: TextStyle(fontSize: 20,color: Colors.white),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:15.0),
                child: Row(
                  children: [
                    Text("Next Due on",style: TextStyle(fontSize: 20,color: Colors.white),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:15.0),
                child: Row(
                  children: [
                    Text("Interest Rate",style: TextStyle(fontSize: 20,color: Colors.white),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:15.0),
                child: Row(
                  children: [
                    Text("Issued By",style: TextStyle(fontSize: 20,color: Colors.white),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:15.0),
                child: Row(
                  children: [
                    Text("Phone Number",style: TextStyle(fontSize: 20,color: Colors.white),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:15.0),
                child: Row(
                  children: [
                    Text("Email ID",style: TextStyle(fontSize: 20,color: Colors.white),)
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
