import 'dart:ffi';
import 'main.dart';
import 'package:flutter/material.dart';

class sign extends StatelessWidget {
  bool passwordVisible = true;  
  
  Void selectScreen (BuildContext ctx ){
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
        title: Text('Sign Up'),
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
          Text(
            "Sign Up",
            style : TextStyle(fontSize: 30 ,  fontWeight:FontWeight.w900 ),
          ),

          Container(
            margin: EdgeInsets.fromLTRB(30, 0, 30, 0) ,
            alignment :Alignment.center,
            child: TextField(
              decoration: InputDecoration(
                labelText: "Name",
                labelStyle: TextStyle(fontSize: 20),
                hintText: "Enter Name",
                hintStyle: TextStyle(fontSize: 15),
                icon: Icon(Icons.alternate_email),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            ),

            Container(
            margin: EdgeInsets.fromLTRB(30, 0, 30, 0) ,
            alignment :Alignment.center,
            child: TextField(
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(fontSize: 20),
                hintText: "Enter E-mail",
                hintStyle: TextStyle(fontSize: 15),
                icon: Icon(Icons.alternate_email),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            ),

            Container(
            margin: EdgeInsets.fromLTRB(30, 0, 30, 0) ,
            alignment :Alignment.center,
            child: TextField(
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(fontSize: 20),
                hintText: "Enter Password",
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
            margin: EdgeInsets.fromLTRB(30, 0, 30, 15) ,
            alignment :Alignment.center,
            child: TextField(
              decoration: InputDecoration(
                labelText: "Phone",
                labelStyle: TextStyle(fontSize: 20),
                hintText: "Enter Phone",
                hintStyle: TextStyle(fontSize: 15),
                icon: Icon(Icons.phone),
              ),
              keyboardType: TextInputType.phone,
            ),
            ),


          RaisedButton(
           onPressed: () {selectScreen(context);}, 
           color: Colors.red ,
           splashColor: Colors.green,
           padding: EdgeInsets.all(10),
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.all(Radius.circular(10.0))
             ),
             child: Text("Sign Up" , style : TextStyle(fontSize: 30, color: Colors.white , )),
          ),
           
        ]
       ), 
        ),
        )
    );
  }
}
