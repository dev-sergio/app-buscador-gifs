import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class GifPage extends StatelessWidget {
  const GifPage({Key? key, required this.gifDate}) : super(key: key);

  final Map gifDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Share.share(gifDate["images"]["fixed_height"]["url"]);
            },
              icon: const Icon(Icons.share)
          ),
        ],
        title: Text(gifDate["title"]),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Image.network(gifDate["images"]["fixed_height"]["url"]),
      ),
    );
  }
}
