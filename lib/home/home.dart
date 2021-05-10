import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String _search;

  int _offset = 0;

  Future<Map> _getGifs() async {
    http.Response response;

    if(_search == null)
      response = await http.get(Uri.parse("https://api.giphy.com/v1/gifs/trending?api_key=puPAIAMWM8n1VwYNhUjfgPHQoI31ggXv&limit=20&rating=g"));
    else
      response = await http.get(Uri.parse("https://api.giphy.com/v1/gifs/search?api_key=puPAIAMWM8n1VwYNhUjfgPHQoI31ggXv&q=$_search&limit=20&offset=$_offset&rating=g&lang=en"));

    return json.decode(response.body);
  }

  @override
  void initState(){
    super.initState();

    _getGifs().then((map) {
      print(map);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
