import 'dart:ffi';
import 'package:flutter/material.dart';
import 'Home1.dart';
import 'sign.dart';
void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crop Diseases ',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Crop Diseases'),
    );
  }
}




class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}




class _MyHomePageState extends State<MyHomePage> {
  bool passwordVisible = true;
  Void selectScreen (BuildContext ctx , int n){
    Navigator.of(ctx).push(MaterialPageRoute(
    builder: (_){
  if(n==1) return Home1();
    return sign();
    }
    ));
  }
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
       
        title: Text(widget.title),
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
            "Welcome",
            style : TextStyle(fontSize: 20 , fontWeight:FontWeight.w900 ),
          ),

          Container(
            margin: EdgeInsets.fromLTRB(30, 30, 30, 0) ,
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
            margin: EdgeInsets.fromLTRB(30, 0, 30, 20) ,
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
                    setState(() {
                      passwordVisible = !passwordVisible;
                    });
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
             child: Text("log in" , style : TextStyle(fontSize: 25, color: Colors.white , )),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 0) ,
         child : Text("Don't have an Account ?" , style : TextStyle(fontSize: 15, color: Colors.black , )),
          ),
          InkWell(
           child : Text("Sign up" , style : TextStyle(fontSize: 20, color: Colors.red , fontWeight:FontWeight.w900 )),
           onTap:() {selectScreen(context ,2);},
           ),
           
        ]
       ), 
        ),
        
        )
    );
  }
}
