import 'dart:convert';

import 'package:api/model/catt.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class cate extends StatefulWidget {
  const cate({super.key});

  @override
  State<cate> createState() => _cateState();
}

class _cateState extends State<cate> {
  Future<List<CategoryList>> fetching() async{
   var a = await http.get(Uri.parse("http://catodotest.elevadosoftwares.com/Category/GetAllCategories"));
   var data = jsonDecode(a.body)["categoryList"];
   return (data as List).map((my) => CategoryList.fromJson(my)).toList();
  
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: fetching(),
          builder: (context,snapshot){
            if(snapshot.hasData){
              List<CategoryList>krish=snapshot.data!;
              return Column(
                children: [
                  ListView.builder(
                    scrollDirection: Axis.vertical,
                      itemCount: krish.length,
                      itemBuilder: (BuildContext context, index){
                      return Column(
                        children: [
                          Text(krish[index].categoryId.toString()),
                          Text(krish[index].category.toString()),
                          Text(krish[index].description.toString()),
                          Text(krish[index].deletedOn.toString()),
                          Text(krish[index].removedRemarks.toString()),
                          Text(krish[index].createdBy.toString()),
                        ],

                      );
                      }
                  )
                ],
              );
            }else if (snapshot.hasError){
              return Text("${snapshot.error}");

            }return CircularProgressIndicator();
          }
      ),
      
    );
  }
}
