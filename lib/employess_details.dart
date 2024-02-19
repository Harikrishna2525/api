import 'dart:convert';

import 'package:api/model/catt.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class emp extends StatefulWidget {
  const emp({super.key});

  @override
  State<emp> createState() => _empState();
}

class _empState extends State<emp> {
  Future<List<EmployeeList>> fetchingdetails() async{
    var a = await http.get(Uri.parse("http://catodotest.elevadosoftwares.com/Employee/GetAllEmployeeDetails"));
    var data = jsonDecode(a.body)["employeeList"];
    print(a.body);
    print(a.statusCode);
    return (data as List).map((obj) => EmployeeList.fromJson(obj)).toList();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: fetchingdetails(),
          builder: (context ,snapshot){
            if(snapshot.hasData){
              List<EmployeeList>gettingdata = snapshot.data!;
              return Column(
                children: [
                  Container(
                    height: 700,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                        itemCount: gettingdata.length,
                        itemBuilder: (BuildContext context, index){
                        return Column(
                          children: [
                            Text(gettingdata[index].employeeId.toString()),
                            Text(gettingdata[index].employeeName.toString()),
                            Text(gettingdata[index].mobile.toString()),
                            Text(gettingdata[index].userName.toString()),
                            Text(gettingdata[index].password.toString()),
                            Text(gettingdata[index].confirmPassword.toString()),
                            Text(gettingdata[index].removedOn.toString()),
                            Text(gettingdata[index].removedRemarks.toString()),
                            Text(gettingdata[index].createdBy.toString()),
                            Text(gettingdata[index].confirmPassword.toString()),
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
