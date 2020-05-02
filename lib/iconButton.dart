import 'package:flutter/material.dart';
import 'package:flutter_ui/main.dart';
import 'package:flutter_ui/styles.dart';

class CustomIconButton extends StatefulWidget {
  final IconData iconName;

  const CustomIconButton({Key key, this.iconName}) : super(key: key);

  @override
  _CustomIconButtonState createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {
  bool _active = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _active = !_active;
        });
      },
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFFEFF4F8),
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
          gradient: _active ? activeGradient : null,
        ),
        child: Center(
          child: Icon(
            widget.iconName,
            size: 30,
            color: _active ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
