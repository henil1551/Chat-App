import 'package:flutter/material.dart';
import 'package:chat_app/ui/user_profile.dart';

var _name;
final nameCon = new TextEditingController();

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
  }

class _ChatScreenState extends State<ChatScreen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => Profile(),),),
            child: Text('Natay')),
        leading: CircleAvatar(
          radius: 10,
          backgroundImage: AssetImage('assets/images/3.jpg'),
        ),
      ),
      body:  SingleChildScrollView(
        child: Column(
            children: [
              Column(
                children: [
                  MyWidget(),
                 MyWidget(),
                 MyWidget(),


        Column(
          children: [
            Container(
              alignment: Alignment.topRight,
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.80,
              ),
              child: Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                    )
                    ]
                ),
                child: Text('$_name'),
              ),
            ),
            Row(
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
                    radius: 15,
                    backgroundImage: AssetImage('assets/images/4.jpg'),
                  ),
                ),
                SizedBox(width: 10,),
                Text('10:45', style: TextStyle(
                  fontSize: 12,
                  color: Colors.black45,
                ),),
              ],
            ),
          ],
        ),
                ],
              ),

            ],
          ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(horizontal: 8),
        height: 70,
        color: Colors.white,
        child: Row(
          children: <Widget>[
            IconButton(icon: Icon(Icons.photo),
              iconSize: 25,
              color: Theme.of(context).primaryColor,
              onPressed: () {},
            ),
            Expanded(
              child: TextField(
                controller: nameCon,
                decoration: InputDecoration.collapsed(hintText: 'Send Message'),
                textCapitalization: TextCapitalization.sentences,
              ),
            ),
            IconButton(icon: Icon(Icons.attach_file),
              iconSize: 25,
              color: Theme.of(context).primaryColor,
              onPressed: () {},
            ),
            IconButton(icon: Icon(Icons.keyboard_voice),
              iconSize: 25,
              color: Theme.of(context).primaryColor,
              onPressed: () {},
            ),
            IconButton(icon: Icon(Icons.voice_chat),
              iconSize: 25,
              color: Theme.of(context).primaryColor,
              onPressed: () {},
            ),
            IconButton(icon: Icon(Icons.send),
              iconSize: 25,
              color: Theme.of(context).primaryColor,
              onPressed: () {
                setState(() {
                  _name = nameCon.text;
                });
              },
            )
          ],
        ),
      ),
    );
  }}
class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topRight,
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.80,
          ),
          child: Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                )
                ]
            ),
            child: Text('How are you? how is everyting going on, what abot your bussiness?'),
          ),
        ),
        Row(
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
                radius: 15,
                backgroundImage: AssetImage('assets/images/4.jpg'),
              ),
            ),
            SizedBox(width: 10,),
            Text('10:45', style: TextStyle(
              fontSize: 12,
              color: Colors.black45,
            ),),
          ],
        ),
      ],
    );
  }
}

