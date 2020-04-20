import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TileCard extends StatelessWidget {
  final Widget child;
  final double elevation;
  final double radius;
  final Color color;
  double vertical;
  double horizontal;

  TileCard({this.child, this.elevation = 14.0, this.radius = 10.0, this.color, this.vertical = 5.0, this.horizontal = 15.0});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation,
      color: color,
      borderRadius: BorderRadius.circular(radius),
      shadowColor: Color(0x582196F3),
      child: InkWell(
        child: Padding(padding: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal), child: child),
      ),
    );
  }
}

// ignore: must_be_immutable
class DataArea extends StatelessWidget {
  String info;
  String  number;

  DataArea(this.info, this.number);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 160,
        width:  220,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
              margin: EdgeInsets.only(top: 40),
                elevation: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(info,style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.red),),
                  Text(number,style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
    );

  }
}
