import 'dart:convert';

import 'package:api/model/catt.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class worl extends StatefulWidget {
  const worl({super.key});

  @override
  State<worl> createState() => _worlState();
}

class _worlState extends State<worl> {
  Future<List<Country>> fetchingdetails() async{
    var a = await http.get(Uri.parse("https://api.nationalize.io?name=nathaniel"));
    var data = jsonDecode(a.body)["country"];
    print(a.body);
    print(a.statusCode);
    return (data as List).map((obj1) => Country.fromJson(obj1)).toList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: fetchingdetails(),
          builder: (context,snapshot){
            if(snapshot.hasData){
              List<Country>gettingdata = snapshot.data!;
              return Column(
                children: [
                  Container(
                    height: 700,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                        itemCount: gettingdata.length,
                        itemBuilder: (BuildContext context, index){
                        return Column(
                          children: [
                            Text(gettingdata[index].countryId.toString()),
                            Text(gettingdata[index].probability.toString()),
                          ],
                        );
                        }
                    ),
                  )
                ],
              );
            }else if(snapshot.hasError){
              return Text("${snapshot.error}");
            }return CircularProgressIndicator();
          }
      ),
      
    );
  }
}
