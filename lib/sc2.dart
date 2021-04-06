import 'dart:ffi';
import 'crop.dart';
import 'package:flutter/material.dart';



  
  
class sc2 extends StatelessWidget {
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
       Row(
        mainAxisAlignment:MainAxisAlignment.center,
        children:<Widget>[
         RaisedButton(
           onPressed: () {selectScreen(context);},
           color: Colors.red ,
           splashColor: Colors.green,
           padding: EdgeInsets.all(10),
           shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(500.0))
            ),
            child: Text("Camera (1)" , style : TextStyle(fontSize: 15, color: Colors.black ,fontWeight:FontWeight.w900 )),
          ),
          RaisedButton(
           onPressed: () {selectScreen(context);},
           color: Colors.green ,
           splashColor: Colors.green,
           padding: EdgeInsets.all(10),
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.all(Radius.circular(500.0))
             ),
             child: Text("Camera (2)" , style : TextStyle(fontSize: 15, color: Colors.black ,fontWeight:FontWeight.w900 )),
          ),
          RaisedButton( 
           onPressed: () {selectScreen(context );},
           color: Colors.yellow ,
           splashColor: Colors.green,
           padding: EdgeInsets.all(10),
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.all(Radius.circular(500.0))
             ),
             child: Text("Camera (3)" , style : TextStyle(fontSize: 15, color: Colors.black ,fontWeight:FontWeight.w900 )),
          ),
          ]
         ) ,
      Row(mainAxisAlignment:MainAxisAlignment.center,
      
        children: <Widget>[
         RaisedButton(
           
           onPressed: () {selectScreen(context);},
           color: Colors.red ,
           splashColor: Colors.green,
           padding: EdgeInsets.all(10),
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.all(Radius.circular(500.0))
             ),
             child: Text("Camera (4)" , style : TextStyle(fontSize: 15, color: Colors.black ,fontWeight:FontWeight.w900 )),
          ),
          RaisedButton(
           onPressed: () {selectScreen(context);},
           color: Colors.green ,
           splashColor: Colors.green,
           padding: EdgeInsets.all(10),
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.all(Radius.circular(500.0))
             ),
             child: Text("Camera (5)" , style : TextStyle(fontSize: 15, color: Colors.black ,fontWeight:FontWeight.w900 )),
          ),
          RaisedButton( 
           onPressed: () {selectScreen(context);},
           color: Colors.yellow ,
           splashColor: Colors.green,
           padding: EdgeInsets.all(10),
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.all(Radius.circular(500.0))
             ),
             child: Text("Camera (6)" , style : TextStyle(fontSize: 15, color: Colors.black ,fontWeight:FontWeight.w900 )),
             ),
      ],
      ),
           ],
        ),
         ),
    ),
    );
  }
}