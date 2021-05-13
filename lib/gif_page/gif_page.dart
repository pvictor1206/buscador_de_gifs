import 'package:flutter/material.dart';
import 'package:share/share.dart';


class GifPage extends StatelessWidget {

  final Map _gifData;
  GifPage(this._gifData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_gifData["title"]),
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.share),
              onPressed: (){
                Share.share(_gifData["image"]["fixed_height"]["url"]);
              }
          )
        ],
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Image.network(_gifData["image"]["fixed_height"]["url"]),
      ),
    );
  }
}


