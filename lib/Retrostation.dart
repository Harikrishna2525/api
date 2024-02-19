import 'dart:convert';

import 'package:api/model/Retro_station.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class retr extends StatefulWidget {
  const retr({super.key});

  @override
  State<retr> createState() => _retrState();
}

class _retrState extends State<retr> {
  Future<List<retro>> fetch()  async{
    var a = await http.get(Uri.parse("http://turf.gtcollege.in/api/customers/active"));
    var  data = jsonDecode(a.body);
    print(a.body);
    return (data as List).map((e) => retro.fromJson(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            FutureBuilder(
                future: fetch(),
                builder: (context,snapshot){
                  if(snapshot.hasData){
                  List<retro> getting = snapshot.data!;
                  return Column(
                    children: [
                      Container(
                        height: 600,
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                            itemCount: getting.length,
                            itemBuilder: (BuildContext context, index){
                            return Column(
                              children: [
                                Text(getting[index].sId.toString()),
                                Text(getting[index].customerId.toString()),
                                Text(getting[index].customerName.toString()),
                                Text(getting[index].phonenumber.toString()),
                                Text(getting[index].description.toString()),
                                Text(getting[index].isActive.toString()),
                                Text(getting[index].status.toString()),
                                Text(getting[index].createdAt.toString()),
                                Text(getting[index].iV.toString()),
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
            FutureBuilder(
                future: fetch(),
                builder: (context,snapshot){
                  if(snapshot.hasData){
                  List<retro>hey = snapshot.data!;
                  return Container(
                    height: 600,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                        itemCount: hey.length,
                        itemBuilder: (BuildContext context, index){
                        return Center(child: Text(hey[index].customerCreatedBy!.adminName.toString()));
                        }
                    ),
                  );
        
                  }else if(snapshot.hasError){
                    return Text("${snapshot.error}");
                  }return CircularProgressIndicator();
                }
            )
          ],
        ),
      ),
      
    );
  }
}
