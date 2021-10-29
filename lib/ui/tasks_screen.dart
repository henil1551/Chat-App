import 'package:flutter/material.dart';
import 'package:chat_app/ui/add_friend.dart';
import 'package:chat_app/ui/chat_screen.dart';
import 'package:chat_app/ui/search_engine.dart';
class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 8,
          backgroundColor: Colors.blueGrey,
          title: Center(child: Text('ChatApp')),
          actions: [ IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Search(),));
            },
          ),
           ]
        ),
      drawer: Drawer(
           child: SafeArea(child: Text('Hello')),
      ),
      body: ListView.builder(itemBuilder: (BuildContext context, int index){
         return  GestureDetector(
           onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => ChatScreen(),),),
           child: Container(
             padding: EdgeInsets.symmetric(
               horizontal: 20,
               vertical: 15,
             ),
             child: Row(
               children: [
                 Container(
                   decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       boxShadow: [BoxShadow(
                         color: Colors.grey.withOpacity(0.5),
                         spreadRadius: 2,
                         blurRadius: 5,
                       )
                       ]
                   ),
                   child: CircleAvatar(
                     radius: 35,
                     backgroundImage: AssetImage('assets/images/2.jpg'),
                   ),
                 ),
                 Container(
                   width: MediaQuery.of(context).size.width * 0.65,
                   padding: EdgeInsets.only(left:20),
                   child: Column(
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: <Widget>[
                           Row(
                             children: [
                               Text('Henok Ambaye', style: TextStyle(
                                 fontSize: 16,
                                 fontWeight: FontWeight.bold,
                               ),),
                             Container(
                               margin: const EdgeInsets.only(left: 5.0),
                               width: 10,
                               height: 10,
                               decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                 color: Theme.of(context).primaryColor,
                               )
                             )
                             ],
                           ),
                           Text('12:00 pm', style: TextStyle(
                             fontSize: 11,
                             fontWeight: FontWeight.w300,
                             color: Colors.black54,
                           ),),
                         ],
                       ),
                       SizedBox(
                         height: 5,
                       ),
                       Container(
                         alignment: Alignment.topLeft,
                         child: Text('How are you? how is your bussiness going on? Let me know!!', style:
                         TextStyle(
                           fontSize: 13,
                           color: Colors.black87,
                         ),
                           overflow: TextOverflow.ellipsis,
                           maxLines: 2,
                         ),
                       ),
                     ],
                   ),
                 )
               ],
             ),
           ),
         );
      },
      itemCount: 8,),
      floatingActionButton: GestureDetector(
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => AddFriends(),),),
        child: Icon(Icons.add)),
          
      );
  }
}
