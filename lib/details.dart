import 'dart:convert';

import 'package:api/model/catt.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class det extends StatefulWidget {
  const det({super.key});

  @override
  State<det> createState() => _detState();
}

class _detState extends State<det> {
  Future<List<ItemDtls>>fetchingdetails () async {
    var a = await http.get(Uri.parse("http://gtsuvai.gtcollege.in/Master/GetItemDetails?CategoryId=0"));
    var data = jsonDecode(a.body)["itemDtls"];
    print(a.body);
    return (data as List).map((obj) =>ItemDtls.fromJson(obj)).toList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: fetchingdetails(),
          builder: (context,snapshot){
            if(snapshot.hasData){
              List<ItemDtls>heygetting=snapshot.data!;
              return Column(
                children: [
                  Container(
                    height: 700,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                        itemCount: heygetting.length,
                        itemBuilder: (BuildContext context, index){
                        return Column(
                          children: [
                            Text(heygetting[index].itemId.toString()),
                            Text(heygetting[index].type.toString()),
                            Text(heygetting[index].categoryId.toString()),
                            Text(heygetting[index].categoryName.toString()),
                            Text(heygetting[index].itemName.toString()),
                            Text(heygetting[index].itemImage.toString()),
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
