import 'package:flutter/material.dart';
import 'package:flutter_app_erp/SchoolInformationScreens/BasicDetails.dart';
// import 'DashboardScreen.dart';
import 'DashboardScreen.dart';
// import '../MainTabScreen.dart';
import 'FindInstitute.dart';
import 'MainTabScreen.dart';

class Institute extends StatefulWidget {
  Institute({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _InstituteState createState() => _InstituteState();
}

class _InstituteState extends State<Institute> {
  bool bisState = false;
  bool bisCity = false;
  bool bisCity2 = false;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
            title: Text('General Info'),
            leading: IconButton(
                icon: Icon(
                  Icons.arrow_back, //color:AppConstant.colorIcon,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FindInstitute(
                              selectedIndexValue: 0,
                            )),
                  );
                }
                //  automaticallyImplyLeading: false,
                )),
        body: Container(
          width: screenSize.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bg_image.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),

                // Image.asset('assets/logo.png',width: screenSize.width/4,
                //   height: 120,),

                SizedBox(
                  width: screenSize.width,
                  height: 50,
                  child: ElevatedButton(
                    child: Text('Country'),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.deepOrange),
                    ),
                    onPressed: () {
                      setState(() {
                        bisState = true;
                      });
                    },
                  ),
                ),

SizedBox(
                  height: 20,
                ),

                Visibility(
                  visible: bisState,
                  child: SizedBox(
                    width: screenSize.width,
                    height: 50,
                    child: ElevatedButton(
                      child: Text('State'),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.deepOrange),
                      ),
                      onPressed: () {
                        setState(() {
                          bisCity = true;
                        });
                      },
                    ),
                  ),
                ),

SizedBox(
                  height: 20,
                ),
                Visibility(
                  visible: bisCity,
                  child: SizedBox(
                    width: screenSize.width,
                    height: 50,
                    child: ElevatedButton(
                      child: Text('City'),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.deepOrange),
                      ),
                      onPressed: () {
                        setState(() {
                          bisCity2 = true;
                        });
                      },
                    ),
                  ),
                ),

SizedBox(
                  height: 20,
                ),
                Visibility(
                  visible: (bisState == true &&
                              bisCity == true &&
                              bisCity2 == true) ==
                          true
                      ? true
                      : false,
                  child: SizedBox(
                    width: screenSize.width,
                    height: 50,
                    child: ElevatedButton(
                      child: Text('Next'),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.deepOrange),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                MaintabScreen(selectedIndexValue: 0),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
