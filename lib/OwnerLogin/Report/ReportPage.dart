
import 'package:devinvestment/OwnerLogin/AddParty/AddParty.dart';
import 'package:flutter/material.dart';
import '../CashBank.dart';
import '../ExpensesPage.dart';
import '../HomePage.dart';
import '../LoanRequest.dart';
import 'DayReport.dart';
import 'PartyReport.dart';
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

class ReportPage extends StatefulWidget {
  @override
  _ReportPageState createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  MaterialColor dyellow = MaterialColor(0xffe0903b,colors);
  MaterialColor dblue = MaterialColor(0xff25274e,colors);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dblue,
      drawer: getDrawer(),
      appBar: AppBar(
        title: Text("Report"),
        backgroundColor: dyellow,
      ),
      body: getBody(),
    );
  }

  getDrawer() {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/NavBack.png")
            )
        ),
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(

              ),
              child: CircleAvatar(
                child: Image.asset("assets/user-picture.png",fit: BoxFit.scaleDown,height: 100,width: 100,color: Colors.white,),
                backgroundColor: Colors.black,



              ),

            ),
            ListTile(
              leading: Image.asset("assets/Icons/1.png",width: 50,height: 50,),
              title: Text("Create Employee ID",style: TextStyle(fontSize: 15),),
              onTap: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context)=> DummyPage()));
              },

            ),
            ListTile(
              leading: Image.asset("assets/Icons/2.png",width: 50,height: 50,),
              title: Text("Add Party",style: TextStyle(fontSize: 15),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> AddParty()));
              },

            ),
            ListTile(
              leading: Image.asset("assets/Icons/3.png"),
              title: Text("All Parties",style: TextStyle(fontSize: 15),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
              },

            ),
            ListTile(
              leading: Image.asset("assets/Icons/4.png"),
              title: Text("Business Dashboard",style: TextStyle(fontSize: 15),),
              onTap: (){
                //  Navigator.push(context, MaterialPageRoute(builder: (context)=> DummyPage()));
              },

            ),
            ListTile(
              leading: Image.asset("assets/Icons/5.png"),
              title: Text("Reports",style: TextStyle(fontSize: 15),),
              onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> ReportPage()));
              },

            ),
            ListTile(
              leading: Image.asset("assets/Icons/6.png"),
              title: Text("Expense",style: TextStyle(fontSize: 15),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ExpensesPage()));
              },

            ),
            ListTile(
              leading: Image.asset("assets/Icons/7.png"),
              title: Text("Cash and Bank",style: TextStyle(fontSize: 15),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> CashBank()));
              },

            ),
            ListTile(
              leading: Image.asset("assets/Icons/8.png"),
              title: Text("Loan Request",style: TextStyle(fontSize: 15),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> LoanRequest()));
              },

            ),
            ListTile(
              leading: Image.asset("assets/Icons/9.png"),
              title: Text("Setting",style: TextStyle(fontSize: 15),),
              onTap: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context)=> DummyPage()));
              },

            ),
            ListTile(
              leading: Image.asset("assets/Icons/10.png",width: 50,height: 50,),
              title: Text("Back Up",style: TextStyle(fontSize: 15),),
              onTap: (){
                //Navigator.push(context, MaterialPageRoute(builder: (context)=> DummyPage()));
              },

            ),
          ],
        ),
      ),
    );
  }

  getBody() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
         children: [
           Padding(
             padding: const EdgeInsets.all(30),
             child: Container(
               child: Column(
                 children: [
                   Card(
                     color: Colors.white,
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         ColoredBox(
                           color: dyellow,
                           child: Align(alignment: Alignment.topCenter,child: Padding(
                             padding: const EdgeInsets.all(8),
                             child: Text("Transactions",style: TextStyle(fontSize: 20,color: Colors.white),),
                           ),),
                         ),
                         GestureDetector(
                           onTap: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>DayReport()));
                           },
                           child: Padding(
                             padding: const EdgeInsets.all(15.0),
                             child: GestureDetector(child: Text("Day Report")),
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(15.0),
                           child: Text("All Transactions"),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(15.0),
                           child: Text("Profit & Loss"),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(15.0),
                           child: Text("Balance Sheet"),
                         ),

                       ],
                     ),

                   ),
                   SizedBox(height: 30,),
                   Card(
                     color: Colors.white,
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         ColoredBox(
                           color: dyellow,
                           child: Align(alignment: Alignment.topCenter,child: Padding(
                             padding: const EdgeInsets.all(8),
                             child: Text("Party Report",style: TextStyle(fontSize: 20,color: Colors.white),),
                           ),),
                         ),
                         GestureDetector(
                           onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>PartyReport()));
                           },
                           child: Padding(
                             padding: const EdgeInsets.all(15.0),
                             child: GestureDetector(child: Text("Party Report")),
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(15.0),
                           child: Text("All Party Report"),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(15.0),
                           child: Text("Expense Report"),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(15.0),
                           child: Text("Discount Report"),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(15.0),
                           child: Text("Total Interest Report"),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(15.0),
                           child: Text("Total Loan Report"),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(15.0),
                           child: Text("Total Penalty Report"),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(15.0),
                           child: Text("Employee Report"),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(15.0),
                           child: Text("Due Installment Report"),
                         ),

                       ],
                     ),

                   ),
                 ],
               ),
             ),
           )
         ],
        ),
      ),
    );
  }

}
