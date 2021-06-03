import 'package:flutter/material.dart';

// import 'DashboardScreen.dart';
import '../DashboardScreen.dart';
// import '../MainTabScreen.dart';
import 'FindInstitute.dart';
import 'MainTabScreen.dart';


class Institute extends StatefulWidget {
  Institute({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _InstituteState createState() => _InstituteState();
}

class _InstituteState extends State<Institute> {


  @override
  Widget build(BuildContext context) {

    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(appBar: AppBar(title: Text('General Info'),
        leading: IconButton(icon:Icon(Icons.arrow_back,//color:AppConstant.colorIcon,
        ),
            onPressed:()
            {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FindInstitute(selectedIndexValue: 0,)),
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
            child: Column(children:
            [
              SizedBox(height: 20,),

              // Image.asset('assets/logo.png',width: screenSize.width/4,
              //   height: 120,),




              SizedBox(width: screenSize.width,
                height: 50,
                child: ElevatedButton(

                  child: Text('Country'),
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

                  child: Text('State'),
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
              SizedBox(height: 12,),
              SizedBox(width: screenSize.width,
                height: 50,
                child: ElevatedButton(

                  child: Text('Next'),
                  style: ButtonStyle(

                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white
                    ),

                    foregroundColor: MaterialStateProperty.all<Color>(
                        Colors.deepOrange
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MaintabScreen(selectedIndexValue:0),),);
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
