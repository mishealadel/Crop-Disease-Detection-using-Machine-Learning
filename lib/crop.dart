import 'dart:ffi';

import 'package:flutter/material.dart';
  
class crop extends StatelessWidget {
  bool passwordVisible = true;
 
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: Text('Crop'),
      ),
     body:Container(
        alignment :Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/images/55.jpg"),
            fit: BoxFit.cover,
          ),
        ),
       
        
         child :Column(
        children: <Widget>[
          Container(
           margin: EdgeInsets.fromLTRB(30, 330, 30, 0) ,
       child : Text(
            "Analysis",
             style : TextStyle(fontSize: 25 , fontWeight:FontWeight.w900 ),
        ),
          ),
           Container(
               margin: EdgeInsets.fromLTRB(30, 0, 30, 0) ,
           child :Text(
            "Plant analysis is very dangerous becouse this plant is very bad and will die soon . ",
            style : TextStyle(fontSize: 20 , fontWeight:FontWeight.w600 ),
          ),
           ),
        ],
          ),
    ),
        );
     
  }
}