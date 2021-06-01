import 'package:flutter/material.dart';

import 'MainTabScreen.dart';

class SchoolInformationScreen extends StatefulWidget {
  const SchoolInformationScreen({Key key}) : super(key: key);

  @override
  _SchoolInformationScreenState createState() => _SchoolInformationScreenState();
}

class _SchoolInformationScreenState extends State<SchoolInformationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('School Info Screen'),
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
