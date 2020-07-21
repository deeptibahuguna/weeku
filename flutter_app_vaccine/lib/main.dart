import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int gender=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title:Text("vacine"),),
        body: Container(
          child:Padding(
            padding: EdgeInsets.all(30),

         child: Center(
           child: Column(

               children: <Widget>[



                 Expanded(
                   flex: 1,
                   child:       Row(children: <Widget>[
                     Expanded(
                       flex: 5,
                       child:  Container(
                           decoration:BoxDecoration(
                             color: Colors.cyan,
                             border: Border.all(
                               color: Colors.grey,
                             ),
                           ),
                           child:Padding(
                               padding: EdgeInsets.all(10),

                               child:Center(

                                 child: Text("given",textAlign: TextAlign.center,style: TextStyle(fontSize: 14,color: Colors.black),) ,
                               )

                           )
                       ),

                     ),

                     Expanded(
                       flex: 5,
                       child:  Container(
                           decoration:BoxDecoration(
                             color: Colors.cyan,
                             border: Border.all(
                               color: Colors.grey,
                             ),
                           ),
                           child:Padding(
                               padding: EdgeInsets.all(10),

                               child:Center(

                                 child: Text("description",textAlign: TextAlign.center,style: TextStyle(fontSize: 14,color: Colors.black),) ,
                               )

                           )
                       ),
                     ),
                   ],),
                 ),
                 Expanded(
                   flex: 1,
                   child: Align(
                       alignment: Alignment.topRight, // Align however you like (i.e .centerRight, centerLeft)
                       child: Padding(
                         padding: EdgeInsets.all(10),child:Text("click if it is given",style: TextStyle(color: Colors.black ,fontSize: 16),textAlign: TextAlign.left,) ,
                       )
                   ) ,
                 ),

                 Expanded(
                   flex: 3,
                   child:                     Row(children: <Widget>[
                     Expanded(
                       flex: 5,
                       child:   Column(children: <Widget>[
                         SizedBox(height: 20,),

                         Text("Dose 1:"),
                         SizedBox(height: 10,),

                         Text("Age: 6 Weeks"),
                       ],),

                     ),
                     Expanded(
                         flex: 5,
                         child:Column(children: <Widget>[

                           new Radio(value: 1, groupValue: gender, onChanged: (val){
                             setState(() {
                               gender=val;
                             });
                           }),
                           Container(
                               decoration:BoxDecoration(
                                 color: Colors.cyan,
                                 border: Border.all(
                                   color: Colors.grey,
                                 ),
                               ),


                               child:Center(

                                 child: Text("set Reminder",textAlign: TextAlign.center,style: TextStyle(fontSize: 14,color: Colors.black),) ,
                               )


                           ),
                         ],)

                     )



                   ]     ),




                 ),
                 Expanded(
                   flex: 3,
                   child:Row(children: <Widget>[
                     Expanded(
                       flex: 5,
                       child:   Column(children: <Widget>[
                         SizedBox(height: 20,),

                         Text("Dose 2:"),
                         SizedBox(height: 10,),

                         Text("Age: 10 Weeks"),
                       ],),

                     ),
                   Expanded(
                       flex: 5,
                       child:Column(children: <Widget>[
                         new Radio(value: 2, groupValue: gender, onChanged: (val){
                           setState(() {
                             gender=val;
                           });
                         }),
                          Container(
                             decoration:BoxDecoration(
                               color: Colors.cyan,
                               border: Border.all(
                                 color: Colors.grey,
                               ),
                             ),


                                 child:Center(

                                   child: Text("set Reminder",textAlign: TextAlign.center,style: TextStyle(fontSize: 14,color: Colors.black),) ,
                                 )


                         ),
                       ],)



)



                   ]     ),




                 ),

                 Expanded(
                   flex: 3,
                   child:                     Row(children: <Widget>[
                     Expanded(
                       flex: 5,
                       child:   Column(children: <Widget>[
                         SizedBox(height: 20,),

                         Text("Dose 3:"),
                         SizedBox(height: 10,),

                         Text("Age: 14 Weeks"),
                       ],),

                     ),
                     Expanded(
                       flex: 5,
                       child:Column(children: <Widget>[
                     new Radio(value: 3, groupValue: gender, onChanged: (val){
                       setState(() {
                         gender=val;
                       });
                     }),
                     Container(
                         decoration:BoxDecoration(
                           color: Colors.cyan,
                           border: Border.all(
                             color: Colors.grey,
                           ),
                         ),


                         child:Center(

                           child: Text("set Reminder",textAlign: TextAlign.center,style: TextStyle(fontSize: 14,color: Colors.black),) ,
                         )


                     ),
                   ],)

                     )



                   ]     ),




                 ),  Expanded(
                   flex: 3,
                   child:                     Row(children: <Widget>[
                     Expanded(
                       flex: 5,
                       child:   Column(children: <Widget>[
                         SizedBox(height: 20,),

                         Text("Dose 4:"),
                         SizedBox(height: 10,),

                         Text("Age: 16-24 Weeks"),
                       ],),

                     ),
                     Expanded(
                       flex: 5,
                         child:Column(children: <Widget>[
                           new Radio(value: 4, groupValue: gender, onChanged: (val){
                             setState(() {
                               gender=val;
                             });
                           }),
                           Container(
                               decoration:BoxDecoration(
                                 color: Colors.cyan,
                                 border: Border.all(
                                   color: Colors.grey,
                                 ),
                               ),


                               child:Center(

                                 child: Text("set Reminder",textAlign: TextAlign.center,style: TextStyle(fontSize: 14,color: Colors.black),) ,
                               )


                           ),
                         ],)


                     ),



                   ]     ),




                 ),
               ]
           ),
         ),
        ),
      ),
    ),
    );



  }
}
