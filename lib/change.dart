import 'dart:ffi';
import 'main.dart';
import 'package:flutter/material.dart';



  
  
class change extends StatelessWidget {
  bool passwordVisible = true;
  Void selectScreen (BuildContext ctx , int n){
    Navigator.of(ctx).push(MaterialPageRoute(
    builder: (_){
  
    return MyApp();
    }
    ));
  }
   
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Password'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/images/12.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        alignment :Alignment.center,
         child: SingleChildScrollView(
        child :Column(
          
        children: <Widget>[
            Container(
         
            margin: EdgeInsets.fromLTRB(30, 0, 30, 0) ,
            alignment :Alignment.center,
            child: TextField(
              decoration: InputDecoration(
                labelText: "Old Password",
                labelStyle: TextStyle(fontSize: 20),
                hintText: "Enter Old Password",
                hintStyle: TextStyle(fontSize: 15),
                icon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: Icon (
                  passwordVisible?Icons.visibility : Icons.visibility_off
                  ),
                  onPressed:(){
                    setState() {
                      passwordVisible = !passwordVisible;
                    }
                  },
                )
              ),
              keyboardType: TextInputType.emailAddress,
              obscureText: passwordVisible,
            ),
            ),
          
         Container(
         
            margin: EdgeInsets.fromLTRB(30, 0, 30, 30) ,
            alignment :Alignment.center,
            child: TextField(
              decoration: InputDecoration(
                labelText: "New Password",
                labelStyle: TextStyle(fontSize: 20),
                hintText: "Enter New Password",
                hintStyle: TextStyle(fontSize: 15),
                icon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: Icon (
                  passwordVisible?Icons.visibility : Icons.visibility_off
                  ),
                  onPressed:(){
                    setState() {
                      passwordVisible = !passwordVisible;
                    }
                  },
                )
              ),
              keyboardType: TextInputType.emailAddress,
              obscureText: passwordVisible,
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
             child: Text("Submit" , style : TextStyle(fontSize: 25, color: Colors.white , )),
          ),
        ]
      ),
      ),
      ),
    );
  }
}