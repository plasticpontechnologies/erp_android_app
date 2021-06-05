import 'package:flutter/material.dart';
// import 'package:flutter_app_erp/ChatScreen.dart';
// import 'package:flutter_app_erp/SchoolInformation.dart';

import '../ChatScreen.dart';
import '../DashboardScreen.dart';
import 'SchoolInformation.dart';
// import 'DashboardScreen.dart';
// import 'TABS/SchoolInformation.dart';

// import '../FindInstitute.dart';

class MaintabScreen extends StatefulWidget {

  int selectedIndexValue;

  MaintabScreen({Key key,this.selectedIndexValue}) : super(key: key);

  @override
  _MaintabScreenState createState() => _MaintabScreenState();
}

class _MaintabScreenState extends State<MaintabScreen> {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>(); // ADD THIS LINE



  bool _isVisible = true;
  double bottomBarHeight = 75; // set bottom bar height


  int _selectedIndex = 0;
  final pageOptions =
  [
    DashboardScreen(),
    SchoolInformationScreen(),
    ChatScreen(),
  ];


  Drawer _buildDrawer(context) {
    return  Drawer(
        elevation: 20.0,

        child: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.only(top: 24),
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  //color: Colors.blue,
                  image: 
                  DecorationImage(fit: BoxFit.fitHeight,image: AssetImage('assets/logo.png'),),
                ),
             //   child: Image.asset('assets/menu.jpeg',),
              ),
              ListTile(
                leading: Icon(Icons.home,color:Colors.deepOrange),
                title: Text('School Information'),

                onTap: () {

                 Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SchoolInformationScreen()),
                    );
                },
              ),
              ListTile(
                leading: Icon(Icons.calendar_today,color:Colors.deepOrange),

                title: Text('Event Calendar'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                leading: Icon(Icons.autorenew,color:Colors.deepOrange),

                title: Text('Re-load School Data'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                leading: Icon(Icons.settings,color:Colors.deepOrange),

                title: Text('Setting'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              new Divider(),

                
                Padding(padding: EdgeInsets.only(left:20,),child: Text('Other',style: TextStyle(color:Colors.grey,fontWeight: FontWeight.bold),),),


              
              ListTile(
                leading: Icon(Icons.public,color:Colors.deepOrange),

                title: Text('Language Setting'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                leading: Icon(Icons.star_border,color:Colors.deepOrange),

                title: Text('Rate our App'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                leading: Icon(Icons.share,color:Colors.deepOrange),

                title: Text('Share'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                leading: Icon(Icons.lock,color:Colors.deepOrange),

                title: Text('Logout'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        )
    );
  }


  @override
  Widget build(BuildContext context)
  {
    return  WillPopScope(
      //onWillPop: _selectedIndex == 0 ? _onBackPressed : Text(' '),
      child: Scaffold(
          drawer: Drawer(
            child: _buildDrawer(context),
          ),
          key: _scaffoldKey,

          body: pageOptions[widget.selectedIndexValue ?? _selectedIndex ],
          bottomNavigationBar: Container(
            width: MediaQuery.of(context).size.width,
            height: bottomBarHeight,
            child: _isVisible ?
            BottomNavigationBar(
              currentIndex:widget.selectedIndexValue ?? _selectedIndex,
              onTap: (int index)
              {

                if(index != 0)
                {
                  widget.selectedIndexValue = 1;
                }

                if(index == 0 || widget.selectedIndexValue == 0)
                {
                  print(index);
                  print(widget.selectedIndexValue);
                  print('98 callign');
                  _scaffoldKey.currentState.openDrawer();
                }

                if(index == 1 || index == 2)
                {
                  _isVisible = false;
                  bottomBarHeight = 0;
                }

                print(index);
                print('42 ');
                setState(()
                {
                  widget.selectedIndexValue = index;

                  _selectedIndex = index;
                }
                );
              },
              selectedItemColor: Colors.deepOrange,
              type: BottomNavigationBarType.fixed,


              items: [

                BottomNavigationBarItem(
                    icon: Icon(Icons.dashboard_rounded),
                    title: Text('More',style: TextStyle(fontFamily: 'Roboto',fontSize: 14))
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined),
                    title: Text('School Info',style: TextStyle(fontFamily: 'Roboto',fontSize: 14))
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.chat),
                    title: Text('Chat',style: TextStyle(fontFamily: 'Roboto',fontSize: 14))
                ),



              ],
            ) : Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
            ),
          )
      ),


    );


  }
}
