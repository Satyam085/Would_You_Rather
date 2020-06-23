import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {

  CustomCard({this.flex,this.text,this.onpressed});

  final String text;
  final int flex;
  final Function onpressed;

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: widget.flex,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: RaisedButton(
            color: Color(0x90eeeeee),
          onPressed: widget.onpressed,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
    child: Text(widget.text,textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
    ),
        ),
      ),
    );
  }
}
