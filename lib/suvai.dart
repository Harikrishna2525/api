import 'dart:convert';

import 'package:api/model/catt.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http ;

class suva extends StatefulWidget {
  const suva({super.key});

  @override
  State<suva> createState() => _suvaState();
}

class _suvaState extends State<suva> {
  Future<List<OfferDtls>> fetch() async {
    var a = await http.get(Uri.parse("http://gtsuvai.gtcollege.in/Offer/GetOffer"));
    var data = jsonDecode(a.body)["offerDtls"];
    print(a.body);
    return (data as List).map((obj) => OfferDtls.fromJson(obj)).toList();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: fetch(),
          builder: (context,snapshot){
            if(snapshot.hasData){
            List<OfferDtls>getting=snapshot.data!;
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
                          Text("${getting[index].offerId.toString()}"),
                          Text("${getting[index].resName.toString()}"),
                          Text("${getting[index].resImage.toString()}"),
                          Text("${getting[index].offerImage.toString()}"),
                          Text("${getting[index].validFrom.toString()}"),
                          Text("${getting[index].validTo.toString()}"),
                          Text("${getting[index].description.toString()}"),

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
