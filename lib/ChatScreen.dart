import 'package:flutter/material.dart';

// import 'MainTabScreen.dart';
import 'TABS/MainTabScreen.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController
    (
      length: 4,
      child: Scaffold(appBar: AppBar(title: Text('Chat Screenn'),
      backgroundColor: Colors.deepOrange,
          leading: IconButton(icon:Icon(Icons.arrow_back,//color:AppConstant.colorIcon,
          ),
              onPressed:()
              {
                
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MaintabScreen(selectedIndexValue: 0,)),
                );
    
              }
            //  automaticallyImplyLeading: false,
          ),
           bottom: TabBar(
              tabs: [
                Tab(text:"CHARTS"),
                Tab(text:"STAFF"),
                Tab(text:"STUDENT"),
                                Tab(text:"SECTION"),

              ],indicatorColor: Colors.white,
            ),),

body: TabBarView(
            children: [

Container(
        color: Color.fromRGBO(250, 220, 175, 1.0),

  child:   new ListView.builder
    (
      itemCount: 5,
      itemBuilder: (BuildContext ctxt, int index) {
       return Padding(
         padding: const EdgeInsets.all(2.0),
         child: Card(
           child: ListTile(
             leading: Icon(Icons.directions_car),
             title: Text('User Name'),
             subtitle: Text('Sub Name'),
           ),
         ),
       );
      }
    ),
),
  
Container(
        color: Color.fromRGBO(250, 220, 175, 1.0),

  child:   new ListView.builder
    (
      itemCount: 5,
      itemBuilder: (BuildContext ctxt, int index) {
       return Padding(
         padding: const EdgeInsets.all(2.0),
         child: Card(
           child: ListTile(
             leading: Icon(Icons.directions_car),
             title: Text('User Name'),
             subtitle: Text('Sub Name'),
           ),
         ),
       );
      }
    ),
),

Container(
        color: Color.fromRGBO(250, 220, 175, 1.0),

  child:   new ListView.builder
    (
      itemCount: 5,
      itemBuilder: (BuildContext ctxt, int index) {
       return Padding(
         padding: const EdgeInsets.all(2.0),
         child: Card(
           child: ListTile(
             leading: Icon(Icons.directions_car),
             title: Text('User Name'),
             subtitle: Text('Sub Name'),
           ),
         ),
       );
      }
    ),
),

Container(
        color: Color.fromRGBO(250, 220, 175, 1.0),

  child:   new ListView.builder
    (
      itemCount: 5,
      itemBuilder: (BuildContext ctxt, int index) {
       return Padding(
         padding: const EdgeInsets.all(2.0),
         child: Card(
           child: ListTile(
             leading: Icon(Icons.directions_car),
             title: Text('User Name'),
             subtitle: Text('Sub Name'),
           ),
         ),
       );
      }
    ),
),

            ],
          ),
          ),
          
    );

  }
}
