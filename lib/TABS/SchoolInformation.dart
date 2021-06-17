import 'package:flutter/material.dart';
import 'package:flutter_app_erp/SchoolinformationScreenlist/BasicDetails/BasicDetailsScreen.dart';
import 'package:flutter_app_erp/TABS/MainTabScreen.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// import 'TABS/SchoolInformation.dart';

// import 'BMIDetailScreen.dart';

class SchoolInformationScreen extends StatefulWidget {
  const SchoolInformationScreen({Key key}) : super(key: key);
  @override
  _SchoolInformationScreenState createState() =>
      _SchoolInformationScreenState();
}

class _SchoolInformationScreenState extends State<SchoolInformationScreen> {
  List<IconData> icons = [Icons.school, Icons.house, Icons.folder_shared_sharp];
  List<Color> colors = [
    Colors.blue,
    Colors.green,
    Colors.orange,
  ];

  var arrList = [];

  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('School Information'),
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
              strText = 'Basic Details';
            }
            if (index == 1) {
              strText = 'Logo & Social';
            }
            if (index == 2) {
              strText = 'Academic Session';
            }
            return GestureDetector(
              onTap: () {
                if (index == 0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BasicDetailsScreen()),
                  );
                }
                print('Calling $index');
              },
              child: Padding(
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

//'sirisha',style: TextStyle(color: Colors.orange),)
                        Text(
                          strText,
                          style: TextStyle(color: Colors.orange),
                        )
                      ],
                    )),
                  ),
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
