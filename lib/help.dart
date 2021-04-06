import 'dart:ffi';
import 'crop.dart';
import 'package:flutter/material.dart';



  
  
class help extends StatelessWidget {
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
      appBar: AppBar(
        title: Text('Help'),
      ),
      body: Container(
        
            alignment :Alignment.center,
         decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/images/22.jpg"),
            fit: BoxFit.cover,
          ),
        ),
            child :Column(
        children: <Widget>[
          Container(
           margin: EdgeInsets.fromLTRB(30, 20, 30, 0) ,
       child : Text(
            "Information about your crop",
             style : TextStyle(fontSize: 25 , fontWeight:FontWeight.w900 ),
        ),
          ),
           Container(
               margin: EdgeInsets.fromLTRB(30, 12, 30, 0) ,
           child :Text(
            "You are growing a crop of wheat and wheat. It needs irrigation every 15 days at least, and it must be fertilized at least once a month. Pesticides must also be sprayed once every two months to maintain the crop production, and it takes three months to plant You should also monitor the crop at least three times a week, to notice any changes in the plant, and among the insects that affect the wheat plant is the bug of the tunnel maker, which is a dangerous insect on the plant and its growth. ",
            style : TextStyle(fontSize: 20 , fontWeight:FontWeight.w600 ),
          ),
           ),
        ],
          ),
    ),
    );
  }
}