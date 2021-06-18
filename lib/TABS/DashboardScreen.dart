import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_erp/ManageFees.dart';
import 'package:flutter_app_erp/Class/ClassListScreen.dart';
import 'package:flutter_app_erp/Class/ClassListScreen.dart';
import 'package:flutter_app_erp/StaffMain.dart';
import 'package:flutter_app_erp/Studentmain.dart';

import 'package:image_picker/image_picker.dart';

class DashboardScreen extends StatefulWidget {

  const DashboardScreen({Key key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<IconData> icons = [
    Icons.class_,
    Icons.money,
    Icons.money_sharp,
    Icons.person,
    Icons.subject,
    Icons.person,
    Icons.receipt,
    Icons.supervised_user_circle_outlined,
    Icons.home_work_outlined,
    Icons.message,
    Icons.time_to_leave,
    Icons.picture_in_picture,
    Icons.calendar_today,
    Icons.library_books,
    Icons.book,
    Icons.help
  ];
  List<Color> colors = [
    Colors.green,
    Colors.purpleAccent,
    Colors.purple,
    Colors.blue,
    Colors.lightGreen,
    Colors.greenAccent,
    Colors.redAccent,
    Colors.orange,
    Colors.blue,
    Colors.blueAccent,
    Colors.redAccent,
    Colors.red,
    Colors.green,
    Colors.blueAccent,
    Colors.purple,
    Colors.lightBlue,
  ];

  var arrList = [];

  File _image;
  File doc1Image;
  String strDoc1ImageName = '';
  String strDoc1Base64Data;
  final picker = ImagePicker();

  void openAttachments() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: new Wrap(
              children: <Widget>[
                new ListTile(
                  leading: new Icon(Icons.camera),
                  title: new Text('Camera',
                      style:
                          TextStyle(fontFamily: 'Roboto-Bold', fontSize: 20)),
                  onTap: getCameraImage,
                ),
                new ListTile(
                  leading: new Icon(Icons.image),
                  title: new Text('Gallery',
                      style:
                          TextStyle(fontFamily: 'Roboto-Bold', fontSize: 20)),
                  onTap: getGalleryImage,
                ),
              ],
            ),
            height: 200,
          );
        });
  }

  Future getCameraImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        print(_image);
      } else {
        print('No image selected.');
      }
    });
  }

  Future getGalleryImage() async {
    Navigator.pop(context);

    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        doc1Image = _image;
        strDoc1Base64Data = base64Encode(doc1Image.readAsBytesSync());
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromRGBO(250, 220, 175, 1.0),
          child: Column(
            children: [
              Stack(
                children: <Widget>[
                  // Max Size

                  Container(
                      color: Color.fromRGBO(221, 51, 21, 1.0),
                      height: 180.0,
                      width: screenSize.width,
                      child: Row(
                        children: [
/*
                        Image.assets('assets/profile.jpg'),
*/

                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: SizedBox(child: Icon(Icons.verified_user)),
                          ),
                        ],
                      )),

                  Padding(
                    padding:
                        const EdgeInsets.only(top: 120, left: 20, right: 20),
                    child: Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                //   SizedBox(width: 4,),

                                Icon(
                                  Icons.thumb_up_outlined,
                                  color: Colors.deepOrange,
                                ),
                                SizedBox(
                                  width: 12,
                                ),

                                Text(
                                  "Notice Board",
                                  style: TextStyle(color: Colors.deepOrange),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text("No Notices are available!")
                          ],
                        ),
                      ),
                      height: 90.0,
                      width: screenSize.width,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.white,
                  height: 60.0,
                  width: screenSize.width,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: ElevatedButton(
                            child: Text('SCHOOL IMAGE'),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromRGBO(205, 206, 207, 1.0)),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.deepOrange),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DashboardScreen()),
                              );
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: ElevatedButton(
                            child: Text('SCHOOL LOGO'),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromRGBO(205, 206, 207, 1.0)),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.deepOrange),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DashboardScreen()),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.white,
                  height: 100.0,
                  width: screenSize.width,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text("Total Student in School"),
                              SizedBox(
                                height: 30,
                              ),
                              Text("Total Staff in School"),
                            ],
                          )),
                      Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text("0"),
                              SizedBox(
                                height: 30,
                              ),
                              Text("0"),
                            ],
                          )),
                      Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              ElevatedButton(
                                child: Text('INVITE STUDENT'),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Color.fromRGBO(205, 206, 207, 1.0)),
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.deepOrange),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            DashboardScreen()),
                                  );
                                },
                              ),
                              ElevatedButton(
                                child: Text('INVITE STAFF'),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Color.fromRGBO(205, 206, 207, 1.0)),
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.deepOrange),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            DashboardScreen()),
                                  );
                                },
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.white,
                  height: 50.0,
                  width: screenSize.width,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      child: Text('DAILY SUMMARY'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromRGBO(205, 206, 207, 1.0)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.deepOrange),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DashboardScreen()),
                        );
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: screenSize.width,
                height: 50,
                child: ElevatedButton(
                  child: Text('SEE LESS'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromRGBO(205, 206, 207, 1.0)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.deepOrange),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DashboardScreen()),
                    );
                  },
                ),
              ),
              Container(
                height: screenSize.height / 2,
                child: GridView.count(
                  // Create a grid with 2 columns. If you change the scrollDirection to
                  // horizontal, this produces 2 rows.
                  crossAxisCount: 4,
                  // Generate 100 widgets that display their index in the List.
                  children: List.generate(
                    icons.length,
                    (index) {
                      var strText = 'DS';

                      if (index == 0) {
                        strText = 'Class';
                      }
                      if (index == 1) {
                        strText = 'Manage Fees';
                      }
                      if (index == 2) {
                        strText = 'Finance';
                      }
                      if (index == 3) {
                        strText = 'Student';
                      }
                      if (index == 4) {
                        strText = 'Subject';
                      }
                      if (index == 5) {
                        strText = 'Staff';
                      }
                      if (index == 6) {
                        strText = 'Review Log';
                      }
                      if (index == 7) {
                        strText = 'User List';
                      }
                      if (index == 8) {
                        strText = 'Homework';
                      }
                      if (index == 9) {
                        strText = 'Communicate';
                      }
                      if (index == 10) {
                        strText = 'Transport';
                      }
                      if (index == 11) {
                        strText = 'Gallery';
                      }
                      if (index == 12) {
                        strText = 'Time Table';
                      }
                      if (index == 13) {
                        strText = 'Library';
                      }
                      if (index == 14) {
                        strText = 'Exam';
                      }
                      if (index == 15) {
                        strText = 'Help';
                      }
                      return GestureDetector(
                        onTap: () {
                          if (index == 0) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ClassListScreen()),
                            );
                          }
                          if (index == 1) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ManageFeesScreen()),
                            );
                          }
                          if (index == 3) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => StudentMainScreen()),
                            );
                          }
                          if (index == 5) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => StaffMainScreen()),
                            );
                          }

                          print('Calling $index');
                        },
                        child: Card(
                          color: Color.fromRGBO(255, 255, 255, 1.0),
                          child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Center(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(25.0),
                                      child: Icon(
                                        icons[index],
                                        color: colors[index],
                                      )),
                                  height: 50,
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  strText,
                                  style: TextStyle(
                                      color: Colors.orange,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            )),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
