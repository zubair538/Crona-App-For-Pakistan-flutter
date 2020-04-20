import 'dart:convert';
import 'package:cronaupdate/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'model/pakistan_entity.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PakistanEntity pak;

  @override
  void initState() {
    super.initState();
    final  cov = DateTime.parse('1947-03-20 00:00:00.000');
    http.get('https://covid19.mathdro.id/api/countries/PK').then((result) {
      String body = result.body;
      setState(() {
        pak = PakistanEntity().fromJson(jsonDecode(body));
      });

    });
  }



  @override
  Widget build(BuildContext context) {
    if (pak == null) {
           return Text("data not found");
    }
    else{
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Pakistan Case",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
              Text(pak.lastUpdate,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

              DataArea(pak.confirmed.value.toString(), "confirmed"),
              DataArea(pak.deaths.value.toString(), "Deth"),
              DataArea(pak.recovered.value.toString(), "Recoverd"),


            ],
          ),
        ),
      ),
    );}
  }
}
