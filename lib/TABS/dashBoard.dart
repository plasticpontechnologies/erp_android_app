
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {

  const DashboardScreen({Key key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {

    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(

      body:
      SingleChildScrollView(
        child: Container(color: Color.fromRGBO(250, 220, 175, 1.0),
          child: Column(
            children: [

              Stack(
                children: <Widget>[
                  // Max Size

                  Container(
                    color: Color.fromRGBO(221, 51, 21, 1.0),
                    height: 200.0,
                    width: screenSize.width,
                  ),


                  Padding(
                    padding: const EdgeInsets.only(top: 120,left: 20,right: 20),
                    child: Container(
                      color: Colors.white,
                      height: 120.0,
                      width: screenSize.width,
                    ),
                  )
                ],
              ),

              SizedBox(height: 4,),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.white,
                  height: 60.0,
                  width: screenSize.width,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.white,
                  height: 150.0,
                  width: screenSize.width,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.white,
                  height: 60.0,
                  width: screenSize.width,
                ),
              ),
              SizedBox(width: screenSize.width,
                height: 50,
                child: ElevatedButton(

                  child: Text('SEE LESS'),
                  style: ButtonStyle(

                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromRGBO(205, 206, 207, 1.0)
                    ),

                    foregroundColor: MaterialStateProperty.all<Color>(
                        Colors.deepOrange
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DashboardScreen()),
                    );
                  },
                ),
              ),


             Container(height: screenSize.height/2,
               child: GridView.count(

          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 4,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(12, (index) {


            String strImageName = '';

            if(index == 0)
              {
                strImageName = 'assets/logo.png';
              }
            if(index == 0)
            {
              strImageName = 'assets/logo.png';
            }
            if(index == 0)
            {
              strImageName = 'assets/logo.png';
            }
            return Padding(
              padding: const EdgeInsets.all(2.0),
              child: ListTile(
                title: Card(

                  color: Color.fromRGBO(255, 255, 255, 1.0),
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            index == 0 ?
                            SizedBox(child: ClipRRect(
                              borderRadius: BorderRadius.circular(25.0),
                              child: Image.asset('assets/logo.png')),height: 50,) :
                            SizedBox(child: ClipRRect(
                                borderRadius: BorderRadius.circular(25.0),
                                child: Image.asset('assets/logo.png')),height: 50,) ,


                          SizedBox(height: 4,),

                          Text('Class',style: TextStyle(color: Colors.orange),)

                        ],)
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
             ),



            ],
          ),
        ),
      ),



    );
  }
}
