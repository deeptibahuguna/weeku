import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutterappp/OTP.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final LogIn=new TextField(
    obscureText:false,
    decoration:InputDecoration(
        contentPadding: EdgeInsets.all(20),hintText: "Country",
//enabledBorder: const OutlineInputBorder(

//borderSide: const BorderSide(color: Colors.grey, width: 0.0),
//),
        border:OutlineInputBorder(borderRadius: BorderRadius.circular(20))
    ),
  );
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: new AppBar(title: new Text("Log In"),),

          backgroundColor: Colors.green,
        body:new Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            height: 300,
            width: 280,
            decoration: BoxDecoration(
              color: Colors.black12,
              border: Border.all(
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: 30,),
               LogIn,
                SizedBox(height: 30,),
            new Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(20),
              color: Colors.blueAccent,
              child: MaterialButton(
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(20, 15, 20,15),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OTP(),
                      ));
                },
                child: Text("Enter",textAlign: TextAlign.center,),
              ),
            )

              ],
            ),
          ),
        )

      ),
    );
  }
}
