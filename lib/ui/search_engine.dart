import 'package:flutter/material.dart';
class Search extends StatefulWidget {

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: TextField(
          decoration: InputDecoration.collapsed(hintText: 'Search'),
          textCapitalization: TextCapitalization.sentences,
          cursorColor: Colors.black45,
        ),
      ),
    );
  }
}

