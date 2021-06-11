import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  void initState() {}
  bool isSwitched = false;
  bool isSwitched1 = false;

  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }

  var textValue1 = 'Switch is OFF';

  void toggleSwitch1(bool value) {
    if (isSwitched1 == false) {
      setState(() {
        isSwitched1 = true;
        textValue1 = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched1 = false;
        textValue1 = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: (Colors.deepOrange),
      ),
      body: Column(
        children: [
          ListTile(
            leading:
                Icon(Icons.color_lens_rounded, color: Colors.lightBlueAccent),
            title: Text('App Color'),
          ),
          new Divider(),
          ListTile(
            leading: Icon(Icons.sms_rounded, color: Colors.lightGreenAccent),
            title: Text('Messenger Permission'),
          ),
          new Divider(),
          ListTile(
            leading: Icon(Icons.download_sharp, color: Colors.yellowAccent),
            title: Text('Download Path Fee Receipt'),
            subtitle: Text('/storage/emulated/0/MySchool/'),
          ),
          new Divider(),
          SwitchListTile(
            secondary: Icon(Icons.volume_up, color: Colors.lightBlueAccent),
            title: Text('Notification Sound'),
            value: isSwitched,
            onChanged: toggleSwitch,
            activeColor: Colors.deepOrange,
            activeTrackColor: Colors.grey,
            inactiveThumbColor: Colors.grey,
            inactiveTrackColor: Colors.grey,
          ),
          new Divider(),
          SwitchListTile(
            secondary: Icon(Icons.chat, color: Colors.blueAccent),
            title: Text('Chat Notification Sound'),
            value: isSwitched1,
            onChanged: toggleSwitch1,
            activeColor: Colors.deepOrange,
            activeTrackColor: Colors.grey,
            inactiveThumbColor: Colors.grey,
            inactiveTrackColor: Colors.grey,
          ),
          new Divider(),
        ],
      ),
    );
  }
}
