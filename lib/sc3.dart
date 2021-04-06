import 'dart:ffi';
import 'crop.dart';
import 'package:flutter/material.dart';



  
  
class sc3 extends StatelessWidget {
  bool passwordVisible = true;
  Void selectScreen (BuildContext ctx ){
    Navigator.of(ctx).push(MaterialPageRoute(
    builder: (_){
  return crop();
    
    }
    ));
  }
   
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
     
      body: Container(
        
            alignment :Alignment.center,
         decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/images/22.jpg"),
            fit: BoxFit.cover,
          ),
        ),
         child :Container(
         margin: EdgeInsets.fromLTRB(20, 15, 20, 15) ,
  

   child :Column(
        children: <Widget>[
  Container(
      color:Colors.white,
      child: (
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                  height: 100,
                  width: 100,
                  
                  image: AssetImage("lib/images/66.jpg"),
                ),
            ),
            Column(
              children: <Widget>[
                Text("Farmer (1)" ,
             style : TextStyle(fontSize: 20 , fontWeight:FontWeight.w900 ),),
                Text("How are you ?"),

                Divider(
                  color: Colors.black,
                )
              ],
            )
          ],
        )
      ),
    ),
    Container(
      color:Colors.white,
      child: (
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                  height: 100,
                  width: 100,
                  
                  image: AssetImage("lib/images/66.jpg"),
                ),
            ),
            Column(
              children: <Widget>[
               Text("Farmer (2)" ,
             style : TextStyle(fontSize: 20 , fontWeight:FontWeight.w900 ),),
                Text("Hallo, sir"),

                Divider(
                  color: Colors.black,
                )
              ],
            )
          ],
        )
      ),
    ),
    Container(
      color:Colors.white,
      child: (
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                  height: 100,
                  width: 100,
                  
                  image: AssetImage("lib/images/66.jpg"),
                ),
            ),
            Column(
              children: <Widget>[
               Text("Farmer (3)" ,
             style : TextStyle(fontSize: 20 , fontWeight:FontWeight.w900 ),),
                Text("good bye , sir"),

                Divider(
                  color: Colors.black,
                )
              ],
            )
          ],
        )
      ),
    ),
        ],
         ),
    ),
      ),
    );
  }
}