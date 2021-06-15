import 'package:flutter/material.dart';
import 'package:flutter_app_erp/TABS/MainTabScreen.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// import 'TABS/SchoolInformation.dart';

// import 'BMIDetailScreen.dart';

class ManageFeesScreen extends StatefulWidget {
  const ManageFeesScreen({Key key}) : super(key: key);
  @override
  _ManageFeesScreenState createState() => _ManageFeesScreenState();
}

class _ManageFeesScreenState extends State<ManageFeesScreen> {
  List<IconData> icons = [
    Icons.money,
    Icons.person,
    Icons.emoji_transportation,
    Icons.money,
    Icons.receipt_long_outlined,
    Icons.money
  ];
  List<Color> colors = [
    Colors.purple,
    Colors.lightGreen,
    Colors.orange,
    Colors.blue,
    Colors.red,
    Colors.green
  ];

  var arrList = [];

  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Manage Fees'),
        backgroundColor: (Colors.orange),
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
              strText = 'Create Fee Type';
            }
            if (index == 1) {
              strText = 'Class Fee';
            }
            if (index == 2) {
              strText = 'Transport Fee';
            }
            if (index == 3) {
              strText = 'Fee Payment';
            }
            if (index == 4) {
              strText = 'Fee Receipt';
            }
            if (index == 5) {
              strText = 'Update Student Fee';
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
                        height: 70,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        strText,
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: 18.0,
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
