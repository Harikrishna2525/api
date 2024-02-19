import 'dart:convert';
import 'dart:js_interop_unsafe';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'model/catt.dart';

class cats extends StatefulWidget {
  const cats({super.key});

  @override
  State<cats> createState() => _catsState();
}

class _catsState extends State<cats> {


  Future<catfact> fetch() async{
    var resp = await http.get(Uri.parse("https://catfact.ninja/fact"));
    print(resp.body);
    print(resp.statusCode);

    return catfact.fromJson(jsonDecode(resp.body));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fetch details "),
      ),
      body: Center(
        child: FutureBuilder<catfact>(
          future: fetch(),
          builder: (context,snapshot){
            if(snapshot.hasData){
              return Column(
                children: [
                  Text(snapshot.data!.fact.toString()),
                  Text(snapshot.data!.length.toString())
                ],
              );
            }else if(snapshot.hasError){
              return Text("${snapshot.error}");
            }
            return CircularProgressIndicator();
        }
        ),
      ),

    );
  }
}
