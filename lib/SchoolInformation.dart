import 'package:flutter/material.dart';

import 'MainTabScreen.dart';

class SchoolInformationScreen extends StatefulWidget {
  const SchoolInformationScreen({Key key}) : super(key: key);

  @override
  _SchoolInformationScreenState createState() => _SchoolInformationScreenState();
}

class _SchoolInformationScreenState extends State<SchoolInformationScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(appBar: AppBar(title: Text('School Info Screen'),
    leading: IconButton(icon:Icon(Icons.arrow_back,//color:AppConstant.colorIcon,
    ),

    onPressed:()
        {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MaintabScreen(selectedIndexValue: 0,)),
          );
        }
    //  automaticallyImplyLeading: false,
    )),
      body:
      SingleChildScrollView(
        child: Container(color: Color.fromRGBO(250, 220, 175, 1.0),

          child: Column(
            children: [




              Container(height: screenSize.height/1,
                child: GridView.count(
                  // Create a grid with 2 columns. If you change the scrollDirection to
                  // horizontal, this produces 2 rows.
                  crossAxisCount: 2,
                  // Generate 100 widgets that display their index in the List.
                  children: List.generate(12, (index) {
                    String strImageName;
                    if(index == 0)
                    {
                      strImageName = 'assets/icon.jpeg';
                    }
                    else if(index==2)
                    {
                      strImageName = 'assets/icon3.jpeg';

                    }
                   else
                    {
                      strImageName = 'assets/icon3.jpeg';

                    }

                    return Card(


                      color: Color.fromRGBO(255, 255, 255, 1.0),
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                SizedBox(child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25.0),
                                    child: Image.asset(strImageName)),height: 50,) ,
                                SizedBox(height: 4,),

                                Text('Class1',style: TextStyle(color: Colors.orange),)
                              ],)
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
