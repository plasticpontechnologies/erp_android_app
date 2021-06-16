import 'package:flutter/material.dart';
import 'package:flutter_app_erp/TABS/MainTabScreen.dart';

class StaffMainScreen extends StatefulWidget {
  const StaffMainScreen({Key key}) : super(key: key);
  @override
  _StaffMainScreenState createState() => _StaffMainScreenState();
}

class _StaffMainScreenState extends State<StaffMainScreen> {
  List<IconData> icons = [
    Icons.class_,
    Icons.person,
    Icons.person_add_alt_1_sharp
  ];
  List<Color> colors = [
    Colors.green,
    Colors.purpleAccent,
    Colors.orange,
  ];

  var arrList = [];

  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Staff'),
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
            var strText = 'Staff Info';

            if (index == 0) {
              strText = 'Create Staff';
            }
            if (index == 1) {
              strText = 'Staff Attendance';
            }
            if (index == 2) {
              strText = 'Staff Attendance Report';
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
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold),
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
