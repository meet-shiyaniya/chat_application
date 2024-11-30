import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class fetchApiScreen extends StatefulWidget {
  const fetchApiScreen({super.key});

  @override
  State<fetchApiScreen> createState() => _fetchApiScreenState();
}

class _fetchApiScreenState extends State<fetchApiScreen> {

  // function for fetch chat details
  fetchChatDetails() async{

    try{

      var response = await rootBundle.loadString("asset/chat.json");

      if(response.isNotEmpty){

        var decodedJson = jsonDecode(response);
        Fluttertoast.showToast(msg: decodedJson["info"].toString());

      } else{
        Fluttertoast.showToast(msg: "Data Not Found!");
      }

    } catch(e){
      Fluttertoast.showToast(msg: e.toString());
    }

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchChatDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
