import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import 'model/catt.dart';

class ag extends StatefulWidget {
  const ag({super.key});

  @override
  State<ag> createState() => _agState();
}

class _agState extends State<ag> {
  
  Future<gify> fetchgifi() async{
    var resp = await http.get(Uri.parse("https://api.agify.io?name=meelad"));
    print(resp.body);
    print(resp.statusCode);
    return gify.fromJson(jsonDecode(resp.body));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: fetchgifi(),
          builder: (context,snapshot){
            if(snapshot.hasData){
              return Column(
                children: [
                  Text(snapshot.data!.count.toString()),
                  Text(snapshot.data!.name.toString()),
                  Text(snapshot.data!.age.toString()),

                ],
              );
            }else if(snapshot.hasError){
              return Text("${snapshot.error}");
            }
            return CircularProgressIndicator();
          }
      ),

    );
  }
}
