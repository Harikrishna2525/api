import 'dart:convert';

import 'package:api/model/nation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class resu extends StatefulWidget {
  const resu({super.key});

  @override
  State<resu> createState() => _resuState();
}

class _resuState extends State<resu> {
  Future<List<RestaurantDtls>> fetchingdata () async{
    var a = await http.get(Uri.parse("http://gtsuvai.gtcollege.in//User/GetItem_ResDtlsByUser?Key=col&Lat=11.0190694&Long=76.990981"));
    var data = jsonDecode(a.body)["restaurantDtls"];
    print(a.body);
    print(a.statusCode);
    return (data as List).map((my) => RestaurantDtls.fromJson(my)).toList();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: fetchingdata(),
          builder: (context,snapshot){
            if(snapshot.hasData){
              List<RestaurantDtls>gettingdata =snapshot.data!;
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 1500,
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                          itemCount: gettingdata.length,
                          itemBuilder: (BuildContext context, index){
                          return Column(
                            children: [
                              Text(gettingdata[index].restaurantId.toString()),
                              Text(gettingdata[index].restaurantName.toString()),
                              Text(gettingdata[index].itemName.toString()),
                              Text(gettingdata[index].price.toString()),
                              Text(gettingdata[index].itemImage.toString()),
                              Text(gettingdata[index].distance.toString()),
                              Text(gettingdata[index].isRestaurantORItem.toString()),
                              Text(gettingdata[index].restaurantImage.toString()),
                              Text(gettingdata[index].restaurantRating.toString()),
                              Text(gettingdata[index].itemRating.toString()),
                            ],
                          );
                          }
                      ),
                    )
                  ],
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
