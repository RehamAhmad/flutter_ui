import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
      backgroundColor: Color(0xffCDDEEC),
      // bottomNavigationBar: ,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              _topNavigationRow()
            ],
          ),
        ),
      ),
    );
  }
}


Widget  _topNavigationRow(){
  return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
    _buildRoundedIconButton()
  ],);
}

Widget _buildRoundedIconButton(){
  return Container(
    height: 50,
    width: 50,
    padding: EdgeInsets.all(4),
    decoration: BoxDecoration(
      color:Colors.white,
      boxShadow: [BoxShadow(
        color: Colors.white,
        offset:Offset(-5,-5),
        spreadRadius:1,
        blurRadius: 15),
        ],

      
    ),
  );
}