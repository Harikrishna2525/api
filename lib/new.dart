import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import 'model/nation.dart';

class nat extends StatefulWidget {
  const nat({super.key});

  @override
  State<nat> createState() => _natState();
}

class _natState extends State<nat> {
  
  Future<nativ> fetch()async{
    var resp = await http.get(Uri.parse("https://dog.ceo/api/breeds/image/random"));
    print(resp.body);
    print(resp.statusCode);
    print(resp.headers);
    return nativ.fromJson(jsonDecode(resp.body));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<nativ>(
          future: fetch(),
          builder: (context,snapshot){
            if(snapshot.hasData){
              return Column(
                children: [
                  Text(snapshot.data!.message.toString()),
                  Text(snapshot.data!.status.toString()),

                ],
              );
            }else if(snapshot.hasError){
              return Text("${snapshot.error}");
            }
            return CircularProgressIndicator();

          }
      )
      
    );
  }
}
