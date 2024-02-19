import 'dart:convert';

import 'package:api/model/nation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class univer extends StatefulWidget {
  const univer({super.key});

  @override
  State<univer> createState() => _univerState();
}

class _univerState extends State<univer> {
  // Future <List<person>> fetch() async{
  //   var a = await http.get(Uri.parse("http://turf.gtcollege.in/api/payments/id/P01"));
  //   var data = jsonDecode(a.body);
  //   // print(a.body);
  //   return (data as List).map((e) => person.fromJson(e)).toList();
  // }
  Future <List<person>> fetchingdetails() async{
    var b = await http.get(Uri.parse("http://turf.gtcollege.in/api/payments/id/P01"));
    var krish = jsonDecode(b.body);
    print(b.body);
    // print(b.body)["paymentCreatedBy"];
    return (krish as List).map((e) => person.fromJson(e)).toList();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FutureBuilder(
              future: fetchingdetails(),
              builder: (context,snapshot){
                if(snapshot.hasData){
                List<person>mine =snapshot.data!;
                return Container(
                  height: 600,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                      itemCount: mine.length,
                      itemBuilder: (BuildContext context, index){

                      return Column(
                        children: [
                          Text(mine[index].paymentCreatedBy == null? "Data Not Avaliable" :mine[index].paymentCreatedBy!.adminId.toString()),
                          Text(mine[index].paymentCreatedBy == null? "No Data Found":mine[index].paymentCreatedBy!.adminName.toString()),
                        ],
                      );
                      }
                  ),
                );
                }else if(snapshot.hasError){
                  return Text("${snapshot.error}");
                }return CircularProgressIndicator();
              }
          ),
        ],
      )

    );
  }
}
