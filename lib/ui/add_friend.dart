import 'package:flutter/material.dart';
class AddFriends extends StatefulWidget {

  @override
  _AddFriendsState createState() => _AddFriendsState();
}

class _AddFriendsState extends State<AddFriends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: TextField(
          decoration: InputDecoration.collapsed(hintText: 'Add Friends'),
          textCapitalization: TextCapitalization.sentences,
          cursorColor: Colors.black45,
        ),
      ),
    );
  }
}

