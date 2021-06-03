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
    return Scaffold(appBar: AppBar(title: Text('Chat Screen'),
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
        )));
  }
}
