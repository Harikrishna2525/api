import 'dart:convert';

import 'package:api/model/catt.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;


class infs extends StatefulWidget {
  const infs({super.key});

  @override
  State<infs> createState() => _infsState();
}

class _infsState extends State<infs> {
  Future<info> fetchinfo() async{
    var resp = await http.get(Uri.parse("https://ipinfo.io/161.185.160.93/geo"));
    print(resp.body);
    print(resp.statusCode);
    print(resp.headers);
    // print(resp.contentLength);
    // print(resp.headersSplitValues);
    return info.fromJson(jsonDecode(resp.body));

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<info>(
          future: fetchinfo(),
          builder:(context,snapshot){
            if(snapshot.hasData){

              return Column(
                children: [
                  Text(snapshot.data!.ip.toString()),
                  Text(snapshot.data!.city.toString()),
                  Text(snapshot.data!.region.toString()),
                  Text(snapshot.data!.country.toString()),
                  Text(snapshot.data!.loc.toString()),
                  Text(snapshot.data!.org.toString()),
                  Text(snapshot.data!.postal.toString()),
                  Text(snapshot.data!.timezone.toString()),
                  Text(snapshot.data!.readme.toString()),
                ],
              );

            }else if(snapshot.hasError){
              return Text("${snapshot.error}");
            }
            return CircularProgressIndicator();
          }
      ),
      
    );
  }
}
