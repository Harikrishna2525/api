import 'dart:convert';

import 'package:api/model/catt.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class gee extends StatefulWidget {
  const gee({super.key});

  @override
  State<gee> createState() => _geeState();
}

class _geeState extends State<gee> {
  Future<gen> fetching() async{
    var res = await http.get(Uri.parse("https://api.genderize.io?name=luc"));
    return gen.fromJson(jsonDecode(res.body));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: fetching(),
          builder: (context,snapshot){
            if (snapshot.hasData){
              return Column(
                children: [
                  Text("${snapshot.data!.count.toString()}"),
                  Text("${snapshot.data!.name.toString()}"),
                  Text("${snapshot.data!.gender.toString()}"),
                  Text("${snapshot.data!.probability.toString()}")
                ],
              );
            }else if (snapshot.hasError){
              return Text("${snapshot.error}");
            }return CircularProgressIndicator();

          }
      ),
      
    );
  }
}
