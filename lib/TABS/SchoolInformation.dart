
import 'package:flutter/material.dart';
import 'package:flutter_app_erp/TABS/MainTabScreen.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// import 'TABS/SchoolInformation.dart';

// import 'BMIDetailScreen.dart';

class SchoolInformationScreen extends StatefulWidget
{
  const SchoolInformationScreen({Key key}) : super(key: key);
  @override
  _SchoolInformationScreenState createState() => _SchoolInformationScreenState();

}

class _SchoolInformationScreenState extends State<SchoolInformationScreen> {



List arrImages = ['https://homepages.cae.wisc.edu/~ece533/images/airplane.png','https://homepages.cae.wisc.edu/~ece533/images/boat.png',
'https://homepages.cae.wisc.edu/~ece533/images/girl.png'];


   var arrList = [];

  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {

    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(appBar:
    AppBar(title: Text('erp project'),
      backgroundColor: Color.fromRGBO(221, 51, 21, 1.0),
          leading: IconButton(icon:Icon(Icons.arrow_back,
              //    color: Colors.black
              ),
                onPressed:() {

                 Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MaintabScreen(selectedIndexValue: 0,)),
                    );

                }
              ),    ),

      body:
Container(height: screenSize.height,
               child: GridView.count(

          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,

          // Generate 100 widgets that display their index in the List.
          children: List.generate(arrImages.length, (index) {


            var strText = 'School Info Default';

            if(index == 0)
              {
                strText = 'School Info';
              }
            if(index == 1)
            {
                strText = 'School Info 2';
            }
            if(index == 2)
            {
                strText = 'School Info 3';
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
                          children:
                          [

                            SizedBox(child: ClipRRect(
                                borderRadius: BorderRadius.circular(25.0),
                                child: Image.network(arrImages[index])),height: 50,) ,


                          SizedBox(height: 4,),

//'sirisha',style: TextStyle(color: Colors.orange),)
                          Text(strText,style: TextStyle(color: Colors.orange),)

                        ],)
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

