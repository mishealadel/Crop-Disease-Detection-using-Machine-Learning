import 'dart:ffi';
import 'main.dart';
import 'package:flutter/material.dart';
import 'change.dart';
import 'us.dart';
import 'sc1.dart';
import 'sc2.dart';
import 'sc3.dart';
import 'sc4.dart';
import 'help.dart';

  
  
class Home1 extends StatelessWidget {
  bool passwordVisible = true;
  Void selectScreen (BuildContext ctx , int n){
    Navigator.of(ctx).push(MaterialPageRoute(
    builder: (_){
  if(n==1) return change();
  if(n==2) return us();
  if(n==3) return MyApp();
  if(n==4) return help();
    }
    ));
  }
   
  @override
  Widget build(BuildContext context) {
  
    return DefaultTabController( 
      length: 4,
      child:Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        bottom: TabBar(
          tabs: <Widget> [
            Tab(icon: Icon(Icons.star),text: ("Today"),),
            Tab(icon: Icon(Icons.star),text: ("Yesterday"),),
            Tab(icon: Icon(Icons.chat),text: ("Chat"),),
            Tab(icon: Icon(Icons.notification_important),text: ("Alarm"),),
          ],
        ),
      ),
      body: Container(
        child: TabBarView(children: <Widget> [
          sc1(),
          sc2(),
          sc3(),
          sc4(),
        ],),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/images/22.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      drawer: Drawer(
        child : ListView(
          children:<Widget> [
            ListTile(
              title :Text("Change Password" , style : TextStyle(fontSize: 20 , fontWeight:FontWeight.w900)),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: ()=> selectScreen(context,1),
            ),
             ListTile(
              title :Text("Connect Us" , style : TextStyle(fontSize: 20 , fontWeight:FontWeight.w900), ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: ()=> selectScreen(context,2),
            ),
             ListTile(
              title :Text("Help" , style : TextStyle(fontSize: 20 , fontWeight:FontWeight.w900), ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: ()=> selectScreen(context,4),
            ),
             ListTile(
              title :Text("Log Out" , style : TextStyle(fontSize: 20 , fontWeight:FontWeight.w900)),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: ()=> selectScreen(context,3),
            )
          ],
        )
      ),
      )
      );
    
  }
}