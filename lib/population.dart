import 'dart:convert';

import 'package:api/model/nation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class pope extends StatefulWidget {
  const pope({super.key});

  @override
  State<pope> createState() => _popeState();
}

class _popeState extends State<pope> {
  Future<List<Data>> fetch () async{
    var a = await http.get(Uri.parse("https://datausa.io/api/data?drilldowns=Nation&measures=Population"));
    var data = jsonDecode(a.body)["data"];
    print(a.body);
    return (data as List).map((e) => Data.fromJson(e)).toList();
  }
  //
  Future<List<Source>> fetchingdata() async{
    var b = await http.get(Uri.parse("https://datausa.io/api/data?drilldowns=Nation&measures=Population"));
    var sour = jsonDecode(b.body)["source"];
    print(b.body);
    return (sour as List).map((e) => Source.fromJson(e)).toList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FutureBuilder(
              future: fetch(),
              builder: (context,snapshot){
                if(snapshot.hasData){
                List<Data> getting_data = snapshot.data!;
                return Column(
                  children: [
                    Container(
                      height: 700,
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                          itemCount: getting_data.length,
                          itemBuilder: (BuildContext context, index){
                          return Column(
                            children: [
                              Text(getting_data[index].iDNation.toString()),
                              Text(getting_data[index].iDYear.toString()),
                              Text(getting_data[index].nation.toString()),
                              Text(getting_data[index].year.toString()),
                              Text(getting_data[index].population.toString()),
                              Text(getting_data[index].slugNation.toString()),

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
              future: fetchingdata(),
              builder: (context,snapshot){
                if(snapshot.hasData){
                  List<Source> getting = snapshot.data!;
                  return Column(
                    children: [
                      Container(
                        height: 700,
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: getting.length,
                            itemBuilder: (BuildContext context, index){
                              return Column(
                                children: [
                                  Text(getting[index].measures.toString()),
                                  Text(getting[index].annotations!.sourceName.toString()),
                                  Text(getting[index].annotations!.sourceDescription.toString()),
                                  Text(getting[index].annotations!.datasetName.toString()),
                                  Text(getting[index].annotations!.datasetLink.toString()),
                                  Text(getting[index].annotations!.tableId.toString()),
                                  Text(getting[index].annotations!.topic.toString()),
                                  Text(getting[index].annotations!.subtopic.toString()),


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
        ],
      ),

    );
  }
}
