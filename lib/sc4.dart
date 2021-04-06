import 'dart:ffi';
import 'crop.dart';
import 'package:flutter/material.dart';



  
  
class sc4 extends StatelessWidget {
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
                  
                  image: AssetImage("lib/images/mm.jpg"),
                ),
            ),
            Column(
              children: <Widget>[
                Text("Water" ,
             style : TextStyle(fontSize: 20 , fontWeight:FontWeight.w900 ),),
                Text("You must put water tomorrow"),

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
                  
                  image: AssetImage("lib/images/nn.jpg"),
                ),
            ),
            Column(
              children: <Widget>[
               Text("Compost" ,
             style : TextStyle(fontSize: 20 , fontWeight:FontWeight.w900 ),),
                Text("You must put the compost today"),

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
                  
                  image: AssetImage("lib/images/ss.jpg"),
                ),
            ),
            Column(
              children: <Widget>[
               Text("Repeller" ,
             style : TextStyle(fontSize: 20 , fontWeight:FontWeight.w900 ),),
                Text("You must put Repeller tomorrow"),

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