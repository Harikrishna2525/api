import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class poscl extends StatefulWidget {
  const poscl({super.key});

  @override
  State<poscl> createState() => _posclState();
}

class _posclState extends State<poscl> {
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController add = TextEditingController();
  TextEditingController gst = TextEditingController();
  TextEditingController web = TextEditingController();
  TextEditingController gmail = TextEditingController();
  TextEditingController persion = TextEditingController();
  TextEditingController number = TextEditingController();

  // late final List<String> text
  Future<bool> _clipostclienent;
  Future<bool>Addclient( name, phone, add, gst, web, gmail, persiom, number,
      )async{
    var res = await http.post(Uri.parse("http://catodotest.elevadosoftwares.com/Client/InsertClient"),
      headers: <String,String>{
      "Content-Type":"application/json; charset=UTF-8",
      },
      body: jsonEncode(<String,dynamic>)
        {
          "cilent":0,
          "cilentName":name,
          "phone":phone,
          "address":add,
          "gst":gst,
          "website":web,
          "gmail":gmail,
          "contactpersion":persiom,
          "phonenumber":number,
          "createdBy":1,
        }),
    );
return jsonDecode(res.body)["success"];

  }


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: (_clipostclienent==null)? buildcolumn():buildFutureBuilder(),
        ),
      ),


    );

  }
  Column builcolumn(){
  return Column(
    children: [
      TextFormField(
        controller: name,
        decoration: InputDecoration(
          label: "Enter the name",

        ),
      ),
      TextFormField(
        controller: phone,
        decoration: InputDecoration(
          label: "Enter the name",

        ),
      ),
      TextFormField(
        controller: add,
        decoration: InputDecoration(
          label: "Enter the name",

        ),
      ),
      TextFormField(
        controller: gst,
        decoration: InputDecoration(
          label: "Enter the name",

        ),
      ),
      TextFormField(
        controller: web,
        decoration: InputDecoration(
          label: "Enter the name",

        ),
      ),
      TextFormField(
        controller: gmail,
        decoration: InputDecoration(
          label: "Enter the name",

        ),
      ),
      TextFormField(
        controller: persiom,
        decoration: InputDecoration(
          label: "Enter the name",

        ),
      ),
      TextFormField(
        controller: name,
        decoration: InputDecoration(
          label: "Enter the name",

        ),
      ),
      ElevatedButton(onPressed: (){
        setSt

      }, child: Text('Enter'))

    ],
  );
  }
}
