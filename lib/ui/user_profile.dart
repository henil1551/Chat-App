import 'package:flutter/material.dart';

class Profile extends StatefulWidget {

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
           slivers: [
             SliverAppBar(
               backgroundColor: Colors.amber,
               expandedHeight: 200,
               floating: true,
               pinned: true,
               flexibleSpace: FlexibleSpaceBar(
                 background: Image.asset('assets/images/2.jpg',
                 fit: BoxFit.cover,
                 ),
                 title: Text('Profile Picture', style: TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.bold,
                 ),
                 ),
                 centerTitle: true,
                 ),
               actions: [
                 Icon(Icons.settings),
                 SizedBox(
                   width: 12,
                 ),
               ],
               
             )
           ],
      ),

    );
  }
}
class Tabbar extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
