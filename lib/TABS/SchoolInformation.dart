
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// import 'TABS/SchoolInformation.dart';

// import 'BMIDetailScreen.dart';

class SchoolInformationScreen extends StatefulWidget
{
  const SchoolInformationScreen({Key key}) : super(key: key);
  @override
  _SchoolInformationScreenState createState() => _SchoolInformationScreenState();

}

class _SchoolInformationScreenState extends State<SchoolInformationScreen> {


  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {

    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(appBar:
    AppBar(title: Text('erp project'),
      backgroundColor: Color.fromRGBO(221, 51, 21, 1.0),
    ),

      body:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(

          children: [

            Expanded(
              child:

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [

                  Expanded(child:
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child:

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [


                        Image.asset('assets/s2.jpeg',width: screenSize.width/4,
                          height: 90,),
                        SizedBox(height:12),
                        Text('Basic Details',style: TextStyle(color:  Color.fromRGBO(221, 51, 21, 1.0),
                            fontFamily: 'Roboto',fontWeight: FontWeight.w500,
                            fontSize: 20),),


                      ],),


                    color:Colors.white,

                  ),

                  ),

                  SizedBox(width:20),


                  Expanded(child:
                  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [


                        Image.asset('assets/s3.jpeg',width: screenSize.width/4,
                          height: 90,),
                        SizedBox(height:12),

                        Text('logo & Social',style: TextStyle(color:  Color.fromRGBO(221, 51, 21, 1.0),
                            fontFamily: 'Roboto',fontWeight: FontWeight.w500,
                            fontSize: 20),),


                      ],),
                    // color: Color(0xFF1D1E33),
                    color:Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),

                  ),




                ],),


            ),




            SizedBox(height:12),

            // Expanded(child: Card(
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //
            //       // Text('HEIGHT',style: TextStyle(color: Colors.white,
            //       //     fontFamily: 'Roboto',fontWeight: FontWeight.w500,
            //       //     fontSize: 20),),
            //       SizedBox(height: 4,),
            //       Text(_currentSliderValue.toString(),style: TextStyle(color: Colors.white,
            //           fontFamily: 'Roboto',fontWeight: FontWeight.w500,
            //           fontSize: 20),),
            //       SizedBox(height: 4,),
            //
            //       Slider(
            //         activeColor: Color(0xFFEB1555),
            //         inactiveColor: Colors.grey,
            //         value: _currentSliderValue,
            //         min: 0,
            //         max: 100,
            //         divisions: 10,
            //         label: _currentSliderValue.round().toString(),
            //         onChanged: (double value) {
            //           setState(() {
            //
            //             _currentSliderValue = value;
            //
            //             print(value);
            //
            //           });
            //         },
            //       ),
            //
            //
            //
            //
            //     ],),
            //   color: Color(0xFF1D1E33),
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(8.0),
            //   ),
            // )),

            SizedBox(height:12),

            Expanded(
              child:

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [

                  Expanded(child:
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child:

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [


                        Image.asset('assets/s1.jpeg',width: screenSize.width/4,
                          height: 120,),
                        SizedBox(height:12),
                        Text('Academic Session',style: TextStyle(color:  Color.fromRGBO(221, 51, 21, 1.0),
                            fontFamily: 'Roboto',fontWeight: FontWeight.w500,
                            fontSize: 20),),


                      ],),


                    color:Colors.white,

                  ),

                  ),

                  SizedBox(width:20),


                  Expanded(child:
                  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Image.asset('assets/logo.png',width: screenSize.width/4,
                          height: 120,),

                        SizedBox(height:12),

                        Text('logo & Social',style: TextStyle(color:  Color.fromRGBO(221, 51, 21, 1.0),
                            fontFamily: 'Roboto',fontWeight: FontWeight.w500,
                            fontSize: 20),),


                      ],),
                    // color: Color(0xFF1D1E33),
                    color:Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),

                  ),




                ],),


            ),

            SizedBox(height:12),

            SizedBox(width: screenSize.width,
              height: 70,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:  MaterialStateProperty.all<Color>(Color(
                      0xFFEB1555)),

                ),
                child:
                Text('CALCULATE',

                  style: TextStyle(color: Colors.white,
                    letterSpacing: 1.25,
                    fontSize: 20,),
                ),

                onPressed: ()
                {


                  Navigator.push(context, MaterialPageRoute(builder: (context) => SchoolInformationScreen(),),);



                },

              ),
            ),

          ],),
      ),




      backgroundColor: Color.fromRGBO(22, 25, 41, 1.0),

    );

  }
}

