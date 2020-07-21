
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutterappp/LogIn.dart';
class TribalList extends StatefulWidget {
  @override
  _TribalListState createState() => _TribalListState();
}

class _TribalListState extends State<TribalList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: new AppBar(title: new Text("Add Child Detail"),),
            body: Center(
              child: Container(
                child: Padding(

                  padding: const EdgeInsets.all(36),

                  child: Center(

//            child:    ListView.builder(
//                itemCount: 7,
//                itemBuilder:(BuildContext context,int index){
//                  return new ListTile(
//                    title: new Text('item :$index'),
//                    trailing: new Icon(Icons.arrow_forward),
//                  );
//                }),


                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child:
                      Row(
                        children: <Widget>[
                          Container(
                            height: 70,
                            width: 70,
                            child: Card(
                              semanticContainer: true,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Image.network(
                                'https://placeimg.com/640/480/any', fit: BoxFit.fill,),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              elevation: 5,
                              margin: EdgeInsets.all(10),
                            ),
                          ),
                          Container(
                            height: 70,
                            width: 70,
                            child: Card(
                              semanticContainer: true,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Image.network(
                                'https://placeimg.com/640/480/any', fit: BoxFit.fill,),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              elevation: 5,
                              margin: EdgeInsets.all(10),
                            ),
                          ),

                        ],
                      ),
                    ),


                    //],
                  ),

                ),
              ),)
        )

    );
  }
}
