import 'package:flutter/material.dart';
import 'custom_card.dart';
import 'database.dart';

SceneData scene = SceneData();


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
      ),
      home: MyHomePage(title: 'Would You Rather'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title),),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          CustomCard(flex: 10,text: scene.getCaterogy()[0],onpressed: (){setState(() {
            scene.getnum();
          });},),
          Expanded(
            flex: 2,
            child: Center(
              child: Text("Or",
          style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),
          ),
            ),),
          CustomCard(flex: 10,text: scene.getCaterogy()[1],onpressed: (){setState(() {
            scene.getnum();
          });},),
        ],
      ),
    );
  }
}

