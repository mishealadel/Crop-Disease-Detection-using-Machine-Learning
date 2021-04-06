import 'dart:ffi';
import 'main.dart';
import 'package:flutter/material.dart';



  
  
class us extends StatelessWidget {
  bool passwordVisible = true;
  Void selectScreen (BuildContext ctx , int n){
    Navigator.of(ctx).push(MaterialPageRoute(
    builder: (_){
  
    return MyHomePage();
    }
    ));
  }
   
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: Text('Connect Us'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/images/12.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child :Column(
        children: <Widget>[
         Container(
            margin: EdgeInsets.fromLTRB(30, 190, 30, 20) ,
            alignment :Alignment.center,
            child: TextField(
              decoration: InputDecoration(
                 border: OutlineInputBorder(
                borderSide: BorderSide(width: 200 ),
                borderRadius: BorderRadius.circular(40)
                ),
                labelText: "Mail",
                labelStyle: TextStyle(fontSize: 20),
                hintText: "Enter Mail",
                hintStyle: TextStyle(fontSize: 15),
              ),
              maxLines: 8,
            ),
            ),
             RaisedButton(
            
           onPressed: () {selectScreen(context ,1);},
           color: Colors.red ,
           splashColor: Colors.green,
           padding: EdgeInsets.all(10),
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.all(Radius.circular(10.0))
             ),
             child: Text("Send" , style : TextStyle(fontSize: 25, color: Colors.white , )),
          ),
            ],
         ),
      ),
    );
  }
}