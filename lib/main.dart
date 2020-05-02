// Learning by doing
// help of this demo https://github.com/RehamAhmad/ecommerce_app_ui








import 'package:clip_shadow/clip_shadow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_ui/iconButton.dart';
import 'package:flutter_ui/styles.dart';


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
      bottomNavigationBar: _buildButtonNavigationIconButton(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 60,
              ),
              _topNavigationRow(),
              SizedBox(height: 120),
              Stack(
                alignment: Alignment.topCenter,
                overflow: Overflow.visible,
                children: <Widget>[
                  _buildMainCard(),
                  Positioned(
                    top: -100,
                    child: Image(
                      height: 290,
                      image: AssetImage(
                          'assets/watch.png'),
                    ),
                  )
                ],
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _topNavigationRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      _buildRoundedIconButton(Icons.arrow_back),
      _buildRoundedIconButton(Icons.add_shopping_cart),
    ],
  );
}

Widget _buildRoundedIconButton(icon) {
  return Container(
    height: 50,
    width: 50,
    padding: EdgeInsets.all(4),
    decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.white,
              offset: Offset(-5, -5),
              spreadRadius: 1,
              blurRadius: 15),
          BoxShadow(
              color: Color(0xff748CAC).withOpacity(.6),
              offset: Offset(5, 5),
              spreadRadius: 1,
              blurRadius: 15)
        ],
        border: Border.all(width: 2, color: Color(0xff9DB4D3)),
        borderRadius: BorderRadius.circular(25)),
    child: Center(
      child: Icon(
        icon,
        size: 24,
        color: Color(0xff353151).withOpacity(.6),
      ),
    ),
  );
}

Widget _buildButtonNavigationIconButton() {
  return Padding(
    padding: EdgeInsets.fromLTRB(16, 0, 16, 20),
    child: Container(
      height: 60,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blueGrey.shade200, width: 1),
          borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: <Widget>[
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                "3,200",
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Flexible(flex: 3, fit: FlexFit.tight, child: _preOrderButton())
        ],
      ),
    ),
  );
}

Widget _preOrderButton() {
  return Container(
    height: 60,
    decoration: BoxDecoration(
      gradient: activeGradient,
      borderRadius: BorderRadius.circular(16),
      boxShadow: [
        BoxShadow(
          color: Colors.indigo[300],
          spreadRadius: 6,
          blurRadius: 15,
        )
      ],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          'Pre Order',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        VerticalDivider(
          color: Colors.red,
        ),
        Icon(
          Icons.arrow_forward,
          color: Colors.white,
          size: 32,
        )
      ],
    ),
  );
}

Widget _buildMainCard() {
  return ClipShadow(
      boxShadow: [
        BoxShadow(
            color: Colors.white,
            offset: Offset(-5, -5),
            spreadRadius: 1,
            blurRadius: 15),
        BoxShadow(
            color: Color(0xff748CAC).withOpacity(.6),
            offset: Offset(5, 5),
            spreadRadius: 1,
            blurRadius: 15)
      ],
      clipper: RoundedDiagonalPathClipper(),
      child: Container(
        padding: EdgeInsets.all(16),
        height: 470,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(36),
          color: Color(0xffcddeec),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Align(
              alignment: Alignment.topRight,
              child: _buildRoundedIconButton(Icons.favorite),
            ),
            _buildMainBottomDescription(),
          ],
        ),
      ));
}

Widget _buildMainBottomDescription() {
  return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: iconBtns.map((icon) {
            return CustomIconButton(
              iconName: icon,
            );
          }).toList(),
        ),
        SizedBox(height: 10),
        Text(
          'Flutter UI',
          style: TextStyle(
            fontSize: 42,
            fontWeight: FontWeight.w700,
            color: Color(0xFF353151),
          ),
        ),
        SizedBox(height: 8),
        Text(
          'Reham Ahmed Ibrahim ',
          style: TextStyle(
              fontSize: 20,
              color: Color(0xFF353151),
              fontWeight: FontWeight.w400,
              wordSpacing: 4),
        ),
        SizedBox(height: 8),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt  ',
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 8),
      ]);
}
