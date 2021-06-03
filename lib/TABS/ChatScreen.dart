import 'package:flutter/material.dart';

import 'MainTabScreen.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(222, 51, 21, 1.0),
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'CHARTS New',
              ),
              Tab(
                text: 'STAFF',
              ),
              Tab(
                text: 'STUDENT',
              ),
              Tab(
                text: 'SECTION',
              ),
            ],
            indicatorColor: Colors.white,
          ),
          title: Text('User Name'),
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back, //color:AppConstant.colorIcon,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MaintabScreen(
                            selectedIndexValue: 0,
                          )),
                );
              }
              //  automaticallyImplyLeading: false,
              ),
        ),
        body: TabBarView(
          children: [
            Container(height: 400, color: Colors.orange),
            Container(height: 400, color: Colors.green),
            Container(height: 400, color: Colors.yellow),
            Container(height: 400, color: Color.fromRGBO(250, 220, 175, 1.0)),
          ],
        ),
      ),
    );
  }
}
