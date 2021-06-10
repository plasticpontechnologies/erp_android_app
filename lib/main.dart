import 'package:flutter/material.dart';

import 'TABS/DashboardScreen.dart';
// import 'MainTabScreen.dart';
import 'TABS/FindInstitute.dart';
// import 'TABS/FindInstituteScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(

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
          child: Column(children:
          [
            SizedBox(height: 20,),

            Image.asset('assets/logo.png',width: screenSize.width/4,
            height: 120,),

            Text('MySchool Zero ERP',),
            SizedBox(height: 60,),

            SizedBox(width: screenSize.width,
              height: 50,
              child: ElevatedButton(

                child: Text('SIGN IN'),
                style: ButtonStyle(

                  backgroundColor: MaterialStateProperty.all<Color>(
                     Colors.white
                  ),

                  foregroundColor: MaterialStateProperty.all<Color>(
                     Colors.deepOrange
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FindInstitute(),),);
                },
              ),
            ),
            SizedBox(height: 12,),
            SizedBox(width: screenSize.width,
              height: 50,
              child: ElevatedButton(

                child: Text('SHOW DEMO'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.white
                  ),
                  foregroundColor: MaterialStateProperty.all<Color>(
                      Colors.deepOrange
                  ),
                ),
                onPressed: () {
                },
              ),
            ),



          ],),
        ),
      )
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
