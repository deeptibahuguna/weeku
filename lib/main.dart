import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}



class myApllication5 extends StatefulWidget {
  @override
  _myApllication5State createState() => _myApllication5State();
}



class _myApllication5State extends State<myApllication5> {
  List<Photo> list = List();
  List<ImageSlider> Image_list = List();

  var isLoading = false;
  @override
  void initState() {
    super.initState();
    _fetchData();
    _fetchDataImageSlider();
  }
  _fetchData() async {
    setState(() {
      isLoading = true;
    });
    final response =
    await http.get("https://boxofficea2z.com/getAllTypeVideoUrl.php");
    if (response.statusCode == 200) {
      list = (json.decode(response.body) as List)
          .map((data) => new Photo.fromJson(data))
          .toList();
      setState(() {
        isLoading = false;
      });
    } else {
      throw Exception('Failed to load photos');
    }
  }
  _fetchDataImageSlider() async {
    setState(() {
      isLoading = true;
    });
    final response =
    await http.get("https://boxofficea2z.com/getImageSlider.php");
    if (response.statusCode == 200) {
      Image_list = (json.decode(response.body) as List)
          .map((data) => new ImageSlider.fromJson(data))
          .toList();
      setState(() {
        isLoading = false;
      });
    } else {
      throw Exception('Failed to load photos');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: new AppBar(title: new Text("Weeku"),backgroundColor: Colors.black,),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(accountName:new Text("deepti bahuguna") , accountEmail: new Text("deeptibahuguna94@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.black,child: new Text('D'),
              ),decoration: BoxDecoration(color: Colors.black),otherAccountsPictures: <Widget>[


              ],),

            new ListTile(title: new Text("Home"), trailing: new Icon(Icons.arrow_forward)),
              //  Navigator.of(context).push(new MaterialPageRoute(builder:(BuildContext context)=>)),
            //  ),
            new ListTile(title: new Text("Package"), trailing: new Icon(Icons.arrow_forward)),
              //onTap: ()=>),
                  //Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>new my("page 2"))),),

            new ListTile(title: new Text("About Us"), trailing: new Icon(Icons.arrow_forward),)

          ],
        ),
      ),
        body: isLoading
            ? Center(
          child: CircularProgressIndicator(),
        )
            : Container(
          child: Column(


            children: <Widget>[

            CarouselSlider(

                options: CarouselOptions(
                  height: 200,

                  initialPage: 1,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  scrollDirection: Axis.horizontal,
                ),

              items: <Widget>[
                for (var i = 0; i < list.length; i++)
                  Container(
                    width: MediaQuery.of(context).size.width,

                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(list[i].thumbnailUrl),
                        fit: BoxFit.fitWidth,
                      ),
                      // border:
                      //     Border.all(color: Theme.of(context).accentColor),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                  ),
              ],

            ),
            SizedBox(height: 3,),
            Text("Trailer",style: TextStyle(color: Colors.white,fontSize: 16,),textAlign: TextAlign.start,),
            SizedBox(height: 3,),

            Expanded(
              flex: 1,
              child:ListView.builder(
                  scrollDirection: Axis.horizontal,

                  itemCount: list.length,
                  itemBuilder: (BuildContext context, int index) {
                    return  Container(
                        width: 150,
                        height:170,
                        child: Card (
                            color: Colors.grey,

                            child:ListTile(

                              contentPadding: EdgeInsets.all(10.0),


                              subtitle: Column(
                                children: <Widget>[
                                  Image.network(
                                    list[index].thumbnailUrl,
                                    fit: BoxFit.fill,
                                    height: 130,
                                    width: 150,
                                  ),
                                  Text(list[index].title,style: TextStyle(color: Colors.white,fontSize: 14)),
                              Image(image: AssetImage("images/video.png"),color: Colors.white,width: 20,height: 20,),

                                ],
                              ),
                            )));
                  }) ,
            ),
            SizedBox(height: 3,),
            Text("View More",style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.left),
            SizedBox(height: 3,),

            Expanded(
              flex: 1,

              child:ListView.builder(
                  scrollDirection: Axis.horizontal,

                  itemCount: list.length,
                  itemBuilder: (BuildContext context, int index) {
                    return  Container(
                        width: 150,
                        height: 170,
                        child: Card (
                            color: Colors.grey,

                            child:ListTile(

                              contentPadding: EdgeInsets.all(10.0),


                              subtitle: Column(
                                children: <Widget>[
                                  Image.network(
                                    list[index].thumbnailUrl,
                                    fit: BoxFit.fill,
                                    height: 130,
                                    width: 150,
                                  ),
                                  Text(list[index].title,style: TextStyle(color: Colors.white,fontSize: 14),),
                                  Image(image: AssetImage("images/video.png"),color: Colors.white,width: 20,height: 20,),


                                ],
                              ),
                            )));
                  }) ,
            ),
          ],),
          ));

  }


}
class Photo {
  final String title;
  final String thumbnailUrl;
  Photo._({this.title, this.thumbnailUrl});
  factory Photo.fromJson(Map<String, dynamic> json) {
    return new Photo._(
      title: json['videodescription'],
      thumbnailUrl: json['videoImage'],
    );
  }
}
class ImageSlider {
  final String Image;
  ImageSlider._({this.Image});
  factory ImageSlider.fromJson(Map<String, dynamic> json) {
    return new ImageSlider._(
      Image: json['image'],
    );
  }
}
class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>MaterialApp(home:myApllication5()) ,
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:Center( child:Container(
          child:Image.asset("images/learnig.gif",
              fit: BoxFit.fill,
              width: 200,
            height: 200,
          ) ,
        ))
    );
  }




}