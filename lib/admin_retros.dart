import 'dart:convert';

import 'package:api/model/Retro_station.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class admi extends StatefulWidget {
  const admi({super.key});

  @override
  State<admi> createState() => _admiState();
}

class _admiState extends State<admi> {
  Future<List<admins>> fetch() async {
    var a = await http.get(Uri.parse("http://turf.gtcollege.in/api/admins"));
    var adm = jsonDecode(a.body);
    print(adm[2]);
    // print(a.body);
    return (adm as List).map((e) => admins.fromJson(e)).toList();
    // return (adm as ([0]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: fetch(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<admins> admins_data = snapshot.data!;
              // List<admins> filteredList = [];
              // filteredList.add(admins_data.elementAt(3));
              List<admins> filter = [];
              filter.add(admins_data.elementAt(3));

              // print(admins_data[0]);
              // print(admins_data[2]);
              return Column(
                children: [
                  Container(
                    height: 500,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: filter.length,
                        itemBuilder: (BuildContext context, index) {
                          return Column(
                            children: [
                              // Text(admins_data[index].sId.toString()),
                              // Text(admins_data[index].adminId.toString()),
                              // Text(admins_data[index].name.toString()),
                              // Text(admins_data[index].password.toString()),
                              Text(filter[index].adminCreatedBy.toString()),
                              Text(filter[index].adminId.toString()),
                              // Text(admins_data[index].status.toString()),
                              // Text(admins_data[index].createdAt.toString()),
                              // Text(admins_data[index].iV.toString()),
                              // Text(admins_data[index].updatedAt.toString()),
                              // Text(admins_data[index].deletedAt.toString()),
                            ],
                          );
                        }),
                  )
                ],
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return CircularProgressIndicator();
          }),
    );
  }
}
