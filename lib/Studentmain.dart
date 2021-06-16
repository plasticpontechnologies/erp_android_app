import 'package:flutter/material.dart';
import 'package:flutter_app_erp/TABS/MainTabScreen.dart';

class StudentMainScreen extends StatefulWidget {
  const StudentMainScreen({Key key}) : super(key: key);
  @override
  _StudentMainScreenState createState() => _StudentMainScreenState();
}

class _StudentMainScreenState extends State<StudentMainScreen> {
  List<IconData> icons = [Icons.school, Icons.money, Icons.receipt_long_sharp];
  List<Color> colors = [
    Colors.purple,
    Colors.green,
    Colors.blue,
  ];

  var arrList = [];

  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Student'),
        backgroundColor: Color.fromRGBO(221, 51, 21, 1.0),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              //    color: Colors.black
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MaintabScreen(
                          selectedIndexValue: 0,
                        )),
              );
            }),
      ),
      body: Container(
        height: screenSize.height,
        child: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,

          // Generate 100 widgets that display their index in the List.
          children: List.generate(icons.length, (index) {
            var strText = 'School Info Default';

            if (index == 0) {
              strText = 'Students';
            }
            if (index == 1) {
              strText = 'Update Student Fee';
            }
            if (index == 2) {
              strText = 'Attendance';
            }
            return Padding(
              padding: const EdgeInsets.all(2.0),
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
                        style: TextStyle(color: Colors.orange),
                      )
                    ],
                  )),
                ),
              ),
            );
          }),
        ),
      ),
      backgroundColor: Color.fromRGBO(250, 220, 175, 1.0),
    );
  }
}
