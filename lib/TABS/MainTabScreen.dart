// import 'package:erp_android_app/TABS/ChatScreen.dart';
// import 'package:erp_android_app/TABS/SchoolInformation.dart';
// import 'package:erp_android_app/TABS/dashBoard.dart';
import 'package:flutter/material.dart';



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
  // final pageOptions =
  // [
  //   DashboardScreen(),
  //   SchoolInformationScreen(),
  //   ChatScreen(),
  // ];



  Drawer _buildDrawer(context) {
    return  Drawer(
        elevation: 20.0,

        child: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Text('Item 2'),
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
      onWillPop: () {  },
      child: Scaffold(
          drawer: Drawer(
            child: _buildDrawer(context),
          ),
        key: _scaffoldKey,

          // body: pageOptions[widget.selectedIndexValue ?? _selectedIndex ],
          // bottomNavigationBar: Container(
          //   width: MediaQuery.of(context).size.width,
          //   height: bottomBarHeight,
          //   child: _isVisible ?
          //   BottomNavigationBar(
          //     currentIndex:widget.selectedIndexValue ?? _selectedIndex,
          //     onTap: (int index)
          //     {
          //
          //       if(index != 0)
          //         {
          //           widget.selectedIndexValue = 1;
          //         }
          //
          //       if(index == 0 || widget.selectedIndexValue == 0)
          //         {
          //           print(index);
          //           print(widget.selectedIndexValue);
          //           print('98 callign');
          //           _scaffoldKey.currentState.openDrawer();
          //         }
          //
          //       if(index == 1 || index == 2)
          //         {
          //           _isVisible = false;
          //           bottomBarHeight = 0;
          //         }
          //
          //       print(index);
          //       print('42 ');
          //       setState(()
          //       {
          //         widget.selectedIndexValue = index;
          //
          //         _selectedIndex = index;
          //       }
          //       );
          //     },
          //     selectedItemColor: Colors.deepOrange,
          //     type: BottomNavigationBarType.fixed,
          //
          //
          //     items: [
          //
          //       BottomNavigationBarItem(
          //           icon: Icon(Icons.dashboard_rounded),
          //           title: Text('More',style: TextStyle(fontFamily: 'Roboto',fontSize: 14))
          //       ),
          //      BottomNavigationBarItem(
          //           icon: Icon(Icons.home_outlined),
          //           title: Text('School Info',style: TextStyle(fontFamily: 'Roboto',fontSize: 14))
          //       ),
          //      BottomNavigationBarItem(
          //           icon: Icon(Icons.chat),
          //           title: Text('Chat',style: TextStyle(fontFamily: 'Roboto',fontSize: 14))
          //       ),
          //
          //
          //
          //     ],
          //   ) : Container(
          //     color: Colors.white,
          //     width: MediaQuery.of(context).size.width,
          //   ),
          // )
      ),


    );


  }
}
