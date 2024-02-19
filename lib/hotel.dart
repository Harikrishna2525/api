import 'dart:convert';

import 'package:api/model/catt.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class mess extends StatefulWidget {
  const mess({super.key});

  @override
  State<mess> createState() => _messState();
}

class _messState extends State<mess> {
  Future<List<RestaurantDtls>> fetch () async {
    var a = await http.get(Uri.parse("http://gtsuvai.gtcollege.in/Master/GetRestaurantDetails"));
    var data = jsonDecode(a.body)["restaurantDtls"];
    print(a.body);
    return (data as List).map((obj) => RestaurantDtls.fromJson(obj)).toList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: fetch(),
          builder: (context,snapshot){
            if(snapshot.hasData){
              List<RestaurantDtls>getting=snapshot.data!;
              return SingleChildScrollView(
                child: Container(
                  height: 1000,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                      itemCount: getting.length,
                      itemBuilder: (BuildContext context, index){
                      return Column(
                        children: [
                          Text(getting[index].restaurantId.toString()),
                          Text(getting[index].restaurantName.toString()),
                          Text(getting[index].mobileNo.toString()),
                          Text(getting[index].address.toString()),
                          Text(getting[index].pincode.toString()),
                          Text(getting[index].restaurantImage.toString()),
                          Text(getting[index].restaurantRating.toString()),
                          Text(getting[index].latitude.toString()),
                          Text(getting[index].longtitude.toString()),
                          Text(getting[index].shortAddress.toString()),

                        ],
                      );
                      }
                  ),
                ),
              );
            }else if(snapshot.hasError){
              return Text("${snapshot.error}");
            }return CircularProgressIndicator();
          }
      ),
      
    );
  }
}
