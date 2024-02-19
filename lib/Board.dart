import 'dart:convert';

import 'package:api/model/catt.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class bor extends StatefulWidget {
  const bor({super.key});

  @override
  State<bor> createState() => _borState();
}

class _borState extends State<bor> {
  Future<List<Boards>> fetching() async{
    var a = await http.get(Uri.parse("https://a.4cdn.org/boards.json"));
    var data = jsonDecode(a.body)["boards"];
    print(a.body);
    print(a.statusCode);
    return (data as List).map((obj) => Boards.fromJson(obj)).toList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: fetching(),
          builder: (context,snapshot){
            if(snapshot.hasData){
              List<Boards>gettingdata=snapshot.data!;
              return Column(
                children: [
                  Container(
                    height: 800,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                        itemCount:gettingdata.length ,
                        itemBuilder: (BuildContext context, index){
                        return Column(
                          children: [
                            Text(gettingdata[index].board.toString()),
                            Text(gettingdata[index].title.toString()),
                            Text(gettingdata[index].wsBoard.toString()),
                            Text(gettingdata[index].perPage.toString()),
                            Text(gettingdata[index].pages.toString()),
                            Text(gettingdata[index].maxFilesize.toString()),
                            Text(gettingdata[index].maxWebmFilesize.toString()),
                            Text(gettingdata[index].maxCommentChars.toString()),
                            Text(gettingdata[index].maxWebmDuration.toString()),
                            Text(gettingdata[index].bumpLimit.toString()),
                            Text(gettingdata[index].imageLimit.toString()),
                            Text(gettingdata[index].cooldowns.toString()),
                            Text(gettingdata[index].metaDescription.toString()),
                            Text(gettingdata[index].isArchived.toString()),
                            Text(gettingdata[index].spoilers.toString()),
                            Text(gettingdata[index].customSpoilers.toString()),
                            Text(gettingdata[index].userIds.toString()),
                            Text(gettingdata[index].countryFlags.toString()),
                            Text(gettingdata[index].codeTags.toString()),
                            Text(gettingdata[index].webmAudio.toString()),
                            Text(gettingdata[index].minImageWidth.toString()),
                            Text(gettingdata[index].minImageHeight.toString()),
                            Text(gettingdata[index].oekaki.toString()),
                            Text(gettingdata[index].sjisTags.toString()),
                            Text(gettingdata[index].boardFlags.toString()),
                            Text(gettingdata[index].textOnly.toString()),
                            Text(gettingdata[index].requireSubject.toString()),
                            Text(gettingdata[index].mathTags.toString()),
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
