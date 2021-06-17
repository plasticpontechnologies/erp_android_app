import 'package:flutter/material.dart';
import 'package:flutter_app_erp/TABS/MainTabScreen.dart';
import 'package:flutter_app_erp/TABS/SchoolInformation.dart';

class BasicDetailsScreen extends StatefulWidget {
  const BasicDetailsScreen({Key key}) : super(key: key);
  @override
  _BasicDetailsScreenState createState() => _BasicDetailsScreenState();
}

class _BasicDetailsScreenState extends State<BasicDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('School Details'),
        backgroundColor: (Colors.deepOrange),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              //    color: Colors.black
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SchoolInformationScreen()),
              );
            }),
      ),
      backgroundColor: Color.fromRGBO(250, 220, 175, 1.0),
    );
  }
}
