import 'dart:convert';

import 'package:api/model/Retro_station.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class catgeor extends StatefulWidget {
  const catgeor({super.key});

  @override
  State<catgeor> createState() => _catgeorState();
}

class _catgeorState extends State<catgeor> {
  Future<List<date>> fetchinddata () async{
    var category = await http.get(Uri.parse("http://turf.gtcollege.in/api/expenses/by-date-range/2024-01-25/2024-01-26"));
    var data = jsonDecode(category.body);
    print(category.body);
    return (data as List).map((e) => date.fromJson(e)).toList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            FutureBuilder(
                future: fetchinddata(),
                builder: (context,snapshot){
                  if(snapshot.hasData){
                  List<date>gettingdata = snapshot.data!;
                  return Column(
                    children: [
                      Container(
                        height: 400,
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                            itemCount: gettingdata.length,
                            itemBuilder: (BuildContext context, index){
                            return Column(
                              children: [
                                Text(gettingdata[index].sId.toString()),
                                Text(gettingdata[index].expenseId.toString()),
                                Text(gettingdata[index].expenseDate.toString()),
                                Text(gettingdata[index].expenseAmount.toString()),
                                Text(gettingdata[index].attachment.toString()),
                                Text(gettingdata[index].isActive.toString()),
                                Text(gettingdata[index].status.toString()),
                                Text(gettingdata[index].updatedAt.toString()),
                                Text(gettingdata[index].createdAt.toString()),
                                Text(gettingdata[index].iV.toString()),
                                Text(gettingdata[index].deletedAt.toString()),
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
                future: fetchinddata(),
                builder: (context,snapshot){
                  if(snapshot.hasData){
                  List<date>expensedata = snapshot.data!;
                  return Column(
                    children: [
                      Container(
                        height: 100,
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                            itemCount: expensedata.length,
                            itemBuilder: (BuildContext context, index){
                            return Column(
                              children: [
                                Text(expensedata[index].expenseCategory!.categoryId.toString()),
                                Text(expensedata[index].expenseCategory!.categoryExpense.toString()),
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
                future: fetchinddata(),
                builder: (context,snapshot){
                  if(snapshot.hasData){
                  List<date>spend_data=snapshot.data!;
                  return Column(
                    children: [
                      Container(
                        height: 200,
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                            itemCount: spend_data.length,
                            itemBuilder: (BuildContext context, index){
                            return Column(
                              children: [
                                Text(spend_data[index].spendMode!.paymentId.toString()),
                                Text(spend_data[index].spendMode!.paymentMode.toString()),
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
                future: fetchinddata(),
                builder: (context,snapshot){
                  if(snapshot.hasData){
                  List<date> expense_created = snapshot.data!;
                  return Column(
                    children: [
                      Container(
                        height: 50,
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                            itemCount: expense_created.length,
                            itemBuilder: (BuildContext context, index){
                            return Column(
                              children: [
                                Text(expense_created[index].expenseCreatedBy!.adminId.toString()),
                                Text(expense_created[index].expenseCreatedBy!.adminName.toString())
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
            )
          ],
        ),
      ),
      
    );
  }
}
