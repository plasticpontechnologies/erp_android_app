
import 'package:flutter/material.dart';

import 'GeneralInfoScreen.dart';

// import 'FindInstituteScreen.dart';


class FindInstitute extends StatefulWidget {
  const FindInstitute({Key key, int selectedIndexValue}) : super(key: key);

  @override
  _FindInstituteState createState() => _FindInstituteState();
}

class _FindInstituteState extends State<FindInstitute> {
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

              Image.asset('assets/processed.jpeg',width: screenSize.width/4,
                height: 130,),



              SizedBox(width: screenSize.width,
                height: 50,
                child: ElevatedButton(

                  child: Text('FIND INSTITUTE'),
                  style: ButtonStyle(

                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white
                    ),

                    foregroundColor: MaterialStateProperty.all<Color>(
                        Colors.deepOrange
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Institute(),),);

                  },
                ),
              ),
              SizedBox(height: 12,),

              Row(

                children: [
                  Expanded(flex: 3,
                    child: TextField(
                      cursorColor: Colors.deepOrange,
                      decoration: InputDecoration(
                         // border: OutlineInputBorder(),
                          hintText: 'Enter Organization',
                          focusedBorder:  UnderlineInputBorder(
                              borderSide:  BorderSide(color: Colors.deepOrange)
                          ),

                      ),
                    ),
                  ),
                  Expanded(flex: 1,
                    child: ElevatedButton(

                      child: Text('SIGN IN'),
                      style: ButtonStyle(

                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.grey
                        ),

                        foregroundColor: MaterialStateProperty.all<Color>(
                            Colors.black
                        ),
                      ),
                      onPressed: () {
                        //  Navigator.push(context, MaterialPageRoute(builder: (context) => FindInstitute(),),);

                      },
                    ),
                  ),
                ],
              ),



            ],),
          ),
        )
      // This trailing comma makes auto-formatting nicer for build methods.
    );  }
}
