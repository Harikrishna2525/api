import 'dart:convert';

import 'package:api/model/catt.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class enet extends StatefulWidget {
  const enet({super.key});

  @override
  State<enet> createState() => _enetState();
}

class _enetState extends State<enet> {
  
  Future<List<Entries>> fetchdetails()async {
    var ent = await http.get(Uri.parse("https://api.publicapis.org/entries"));
    var data = jsonDecode(ent.body)["entries"];
    // return entryy.fromJson(jsonDecode(ent.body));
    return (data as List).map((obj) => Entries.fromJson(obj)).toList();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Entries>>(
          future: fetchdetails(),
          builder: (context,snapshot){
            if(snapshot.hasData){
              List<Entries>getting=snapshot.data!;
              return Column(
                children: [
                  // Text(snapshot.data!.count.toString()),
                  Container(
                    height: 700,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: getting.length,
                        itemBuilder: (BuildContext  context,index){
                          return Column(
                            children: [
                              ListTile(
                                leading: Text(getting[index].aPI.toString()),
                                title: Text(getting[index].description.toString()),
                                subtitle: Text(getting[index].link.toString()),
                                trailing: Text(getting[index].cors.toString()),
                              ),
                            ],
                          );
                        }),
                  )
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
