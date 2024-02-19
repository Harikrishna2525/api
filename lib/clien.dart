import 'dart:convert';

import 'package:api/model/catt.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class clie extends StatefulWidget {
  const clie({super.key});

  @override
  State<clie> createState() => _clieState();
}

class _clieState extends State<clie> {
  Future<List<ClientList>> fetching() async{
    var a = await http.get(Uri.parse("http://catodotest.elevadosoftwares.com/Client/GetAllClientDetails"));
    var data = jsonDecode(a.body)["clientList"];
    print(a.body);
    print(a.statusCode);
    return (data as List).map((obj) => ClientList.fromJson(obj)).toList();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: fetching(),
          builder: (context,snapashot){
            if(snapashot.hasData){
              List<ClientList>Hari=snapashot.data!;
              return Column(
                children: [
                  Container(
                    height: 700,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                       itemCount: Hari.length,
                        itemBuilder: (BuildContext context, index){
                        return Column(
                          children: [
                            Text(Hari[index].clientId.toString()),
                            Text(Hari[index].clientName.toString()),
                            Text(Hari[index].phone.toString()),
                            Text(Hari[index].address.toString()),
                            Text(Hari[index].gst.toString()),
                            Text(Hari[index].website.toString()),
                            Text(Hari[index].email.toString()),
                            Text(Hari[index].contactPerson.toString()),
                            Text(Hari[index].phoneNumber.toString()),
                            Text(Hari[index].removedOn.toString()),
                            Text(Hari[index].removedRemarks.toString()),
                            Text(Hari[index].createdBy.toString()),

                          ],
                        );
                        }
                    ),
                  )
                ],
              );
            }else if(snapashot.hasError){
              return Text("${snapashot.error}");
            }return CircularProgressIndicator();

          }
      ),

    );
  }
}
