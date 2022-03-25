import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String? _search;
  int _offset = 0;

  Future<Map> _getGifs() async{
    http.Response response;
    Uri _url;

    if(_search == null){
      _url = Uri.parse("https://api.giphy.com/v1/gifs/trending?api_key=bAWUImbu4ChAIb2dIodkJFbE0chInyLm&limit=20&rating=g");
    }else{
      _url = Uri.parse("https://api.giphy.com/v1/gifs/search?api_key=bAWUImbu4ChAIb2dIodkJFbE0chInyLm&q=$_search&limit=20&offset=$_offset&rating=g&lang=en");
    }
    response = await http.get(_url);
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image.network("https://developers.giphy.com/static/img/dev-logo-lg.gif"),
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: const [
          Padding(
            padding: EdgeInsets.only(top: 15),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Pesquise aqui",
                labelStyle: TextStyle(
                  color: Colors.white
                ),
                border: OutlineInputBorder()
              ),
              style: TextStyle(color: Colors.white, fontSize: 18.0),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}