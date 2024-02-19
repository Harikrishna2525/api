import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'model/catt.dart';

class booe extends StatefulWidget {
  const booe({super.key});

  @override
  State<booe> createState() => _booeState();
}

class _booeState extends State<booe> {
  Future<bore> boredetails() async {
    var resp = await http.get(Uri.parse("https://www.boredapi.com/api/activity"));
    print(resp.body);
    print(resp.statusCode);

    return bore.fromJson(jsonDecode(resp.body));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<bore>(
          future: boredetails(),
          builder: (BuildContext context,snapshot){
            if(snapshot.hasData){
              return Column(

                children: [
                  Text(snapshot.data!.activity.toString()),
                  Text(snapshot.data!.type.toString()),
                  Text(snapshot.data!.participants.toString()),
                  Text(snapshot.data!.price.toString()),
                  Text(snapshot.data!.link.toString()),
                  Text(snapshot.data!.key.toString()),
                  Text(snapshot.data!.accessibility.toString()),
                  // Text(snapshot.data!.activity.toString()),

                ],
              );

            }else if(snapshot.hasError){
              return Text("${snapshot.error}");
            }
            return CircularProgressIndicator();

          }),

    );
  }
}
