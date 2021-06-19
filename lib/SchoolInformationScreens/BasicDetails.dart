import 'package:flutter/material.dart';
import 'package:flutter_app_erp/TABS/FindInstitute.dart';
import 'package:flutter_app_erp/TABS/MainTabScreen.dart';

import '../FindInstitute.dart';

class BasicScreen extends StatefulWidget {
  BasicScreen({Key key, int selectedIndexValue}) : super(key: key);

  @override
  _BasicScreenState createState() => _BasicScreenState();
}

class _BasicScreenState extends State<BasicScreen> {


  TextEditingController classCtrl = TextEditingController();


  // var arrClassList = [
  //   'First Year',
  //   'Second Year',
  //   'JAVA',
  //   'ORACLE',
  //   'SWIFT',
  //   'DART'
  // ];
  //
  // List<String> arrList = [
  //   'Section List',
  //   'Automatically Send SMS',
  //   'Rename',
  //   'Delete',
  // ];




  // Future<String> action_ListScreenTap() async {
  //   return showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //           //title: Text(''),
  //           content: Container(
  //             width: double.minPositive,
  //             child: ListView.builder(
  //               shrinkWrap: true,
  //               itemCount: arrList.length,
  //               itemBuilder: (BuildContext context, int index) {
  //                 return ListTile(
  //                   title: Text(arrList[index]),
  //                   onTap: () {
  //                     if (index == 2) {
  //                       classCtrl.text = arrClassList[iSelectedIndex];
  //                       action_Add_Class();
  //                     }
  //                     if (index == 3) {
  //                       arrClassList.removeAt(iSelectedIndex);
  //
  //                       setState(() {
  //                         arrClassList = arrClassList;
  //                         Navigator.pop(context);
  //                       });
  //                     }
  //                     //  Navigator.pop(context, colorList[index]);
  //                   },
  //                 );
  //               },
  //             ),
  //           ),
  //         );
  //       });
  // }

  // void action_Add_Class() {
  //   showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //           title: Row(
  //             children:
  //             [
  //             ],
  //           ),
  //
  //           content: TextFormField(
  //             controller: classCtrl,
  //             decoration: const InputDecoration(
  //               icon: Icon(Icons.person),
  //               hintText: 'Write class name',
  //               labelText: 'Clas name *',
  //             ),
  //             onSaved: (String value) {
  //               // This optional block of code can be used to run
  //               // code when the user saves the form.
  //             },
  //             validator: (String value) {
  //               return (value != null && value.contains('@'))
  //                   ? 'Do not use the @ char.'
  //                   : null;
  //             },
  //           ),
  //           actions: <Widget>[
  //             FlatButton(
  //                 onPressed: () {
  //                   setState(() {
  //                     if (iSelectedIndex != null) {
  //                       arrClassList.removeAt(iSelectedIndex);
  //
  //                       arrClassList.insert(iSelectedIndex, classCtrl.text);
  //                       arrClassList = arrClassList;
  //
  //                       Navigator.of(context).pop();
  //                     } else {
  //                       arrClassList.add(classCtrl.text);
  //                       arrClassList = arrClassList;
  //                     }
  //                   });
  //
  //
  //                   Navigator.of(context).pop();
  //                 },
  //                 child: Container(
  //                   //color: Colors.orange,
  //
  //                   child: Text(
  //                     'SAVE',
  //                     style: TextStyle(color: Colors.deepOrange),
  //                   ),
  //                 )),
  //             FlatButton(
  //                 onPressed: () {
  //                   Navigator.of(context).pop();
  //                 },
  //                 child: Container(
  //                   child: Text(
  //                     'CANCEL',
  //                     style: TextStyle(color: Colors.deepOrange),
  //                   ),
  //                 )),
  //           ],
  //         );
  //       });
  // }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return MaterialApp(debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        title: "My Text Field",
        home: Scaffold(appBar: AppBar(
          title: Text('School Details'),
            backgroundColor: Color.fromRGBO(221, 51, 21, 1.0),
            leading: IconButton(
                icon: Icon(
                  Icons.arrow_back, //color:AppConstant.colorIcon,
                ),
                onPressed: () {
                  Navigator.pop(context);

                }
              //  automaticallyImplyLeading: false,
            )
            ),

          body: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Text('Kindly Fill the Mandatory Fields ',style: TextStyle(color: Colors.black),),
                SizedBox(
                  width: screenSize.width,
                  height: 30,
                  child: ElevatedButton(
                    child: Text('Kindly Fill the Mandatory Fields'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(250, 220, 135, 1.0)),
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DashboardScreen()),
                      );
                    },
                  ),
                ),
                SizedBox(height: 24),
                SizedBox(
                  width: screenSize.width,
                  height: 50,
                  child: ElevatedButton(
                    child:
                    TextField(


                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueAccent,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          hintText: "ZeroERP Institute of Higher Learning" ,hintStyle: TextStyle(color: Colors.black),
                        )

                    ),

                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(255, 255, 255, 1.0)),
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DashboardScreen()),
                      );
                    },
                  ),
                ),
                SizedBox(height: 24),
                SizedBox(
                  width: screenSize.width,
                  height: 50,
                  child: ElevatedButton(
                    child:
                    TextField(


                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueAccent,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          hintText: "Simplify Education" ,hintStyle: TextStyle(color: Colors.black),
                        )

                    ),

                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(255, 255, 255, 1.0)),
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DashboardScreen()),
                      );
                    },
                  ),
                ),

                SizedBox(height: 10),

                SizedBox(
                  width: screenSize.width,
                  height: 50,
                  child: ElevatedButton(
                    child:
                    TextField(


                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueAccent,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          hintText: "info@junctiontech.in" ,hintStyle: TextStyle(color: Colors.black),
                        )

                    ),

                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(255, 255, 255, 1.0)),
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DashboardScreen()),
                      );
                    },
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  // padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.white,
                    height: 40.0,
                    width: screenSize.width,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: ElevatedButton(
                              child: TextField(
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.blueAccent,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    hintText: "+91" ,hintStyle: TextStyle(color: Colors.black),
                                  )

                              ),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    Color.fromRGBO(255, 255, 255, 1.0)),
                                  // Color.fromRGBO(205, 206, 207, 1.0)),
                                foregroundColor: MaterialStateProperty.all<Color>(
                                    Colors.black),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DashboardScreen()),
                                );
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: ElevatedButton(
                              child: TextField(
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.blueAccent,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    hintText: "90000000" ,hintStyle: TextStyle(color: Colors.black),
                                  )

                              ),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    Color.fromRGBO(255, 255, 255, 1.0)),
                                foregroundColor: MaterialStateProperty.all<Color>(
                                    Colors.black),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DashboardScreen()),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 14),
                // TextField(
                //   decoration: InputDecoration(
                //       errorBorder: OutlineInputBorder(
                //         borderSide: BorderSide(
                //           color: Colors.red,
                //         ),
                //         borderRadius: BorderRadius.circular(10.0),
                //       ),
                //       hintText: "info@junctiontech.in",hintStyle: TextStyle(color: Colors.black),
                //       errorText: "Ooops, something is not right!",
                //       errorStyle: TextStyle(
                //           color: Colors.red, fontWeight: FontWeight.bold)),
                // ),
                // TextField(
                //
                //
                //     decoration: InputDecoration(
                //       enabledBorder: OutlineInputBorder(
                //         borderSide: BorderSide(
                //           color: Colors.blueAccent,
                //         ),
                //         // borderRadius: BorderRadius.circular(24.0),
                //       ),
                //       hintText: "info@junctiontech.in" ,hintStyle: TextStyle(color: Colors.black),
                //     )
                //
                // ),
                SizedBox(height: 14),
                // TextField(
                //
                //
                //     decoration: InputDecoration(
                //       enabledBorder: OutlineInputBorder(
                //         borderSide: BorderSide(
                //           color: Colors.blueAccent,
                //         ),
                //         borderRadius: BorderRadius.circular(1.0),
                //       ),
                //       hintText: "+91 - 901010010" ,hintStyle: TextStyle(color: Colors.black),
                //     )
                //
                // ),
                // SizedBox(height: 14),
                SizedBox(
                  width: screenSize.width,
                  height: 50,
                  child: ElevatedButton(
                    child: Text('INDIA'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(205, 206, 207, 1.0)),
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DashboardScreen()),
                      );
                    },
                  ),
                ),
                SizedBox(height: 14),
                SizedBox(
                  width: screenSize.width,
                  height: 50,
                  child: ElevatedButton(
                    child: Text('TELANGANA'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(205, 206, 207, 1.0)),
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DashboardScreen()),
                      );
                    },
                  ),
                ),
                SizedBox(height: 14),
                SizedBox(
                  width: screenSize.width,
                  height: 50,
                  child: ElevatedButton(
                    child: Text('HYDERABAD'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(205, 206, 207, 1.0)),
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DashboardScreen()),
                      );
                    },
                  ),
                ),
                SizedBox(height: 14),
                SizedBox(
                  width: screenSize.width,
                  height: 50,
                  child: ElevatedButton(
                    child: Text('2021-06-17'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(221, 51, 21, 1.0)),
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DashboardScreen()),
                      );
                    },
                  ),
                ),
                SizedBox(height: 14),
                SizedBox(
                  width: screenSize.width,
                  height: 20,
                  child: ElevatedButton(
                    child: Text('Optional Detail'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(150, 250, 25, 1.0)),
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DashboardScreen()),
                      );
                    },
                  ),
                ),
                SizedBox(height: 14),
                SizedBox(
                  width: screenSize.width,
                  height: 50,
                  child: ElevatedButton(
                    child:
                    TextField(


                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueAccent,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          hintText: "Simplify Education" ,hintStyle: TextStyle(color: Colors.black),
                        )

                    ),

                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(255, 255, 255, 1.0)),
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DashboardScreen()),
                      );
                    },
                  ),
                ),
                SizedBox(height: 14),
                SizedBox(
                  width: screenSize.width,
                  height: 50,
                  child: ElevatedButton(
                    child:
                    TextField(


                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueAccent,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          hintText: "Simplify Education" ,hintStyle: TextStyle(color: Colors.black),
                        )

                    ),

                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(255, 255, 255, 1.0)),
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DashboardScreen()),
                      );
                    },
                  ),
                ),
                SizedBox(height: 14),
                SizedBox(
                  width: screenSize.width,
                  height: 50,
                  child: ElevatedButton(
                    child:
                    TextField(


                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueAccent,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          hintText: "Simplify Education" ,hintStyle: TextStyle(color: Colors.black),
                        )

                    ),

                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(255, 255, 255, 1.0)),
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DashboardScreen()),
                      );
                    },
                  ),
                ),
                SizedBox(height: 14),
                SizedBox(
                  width: screenSize.width,
                  height: 50,
                  child: ElevatedButton(
                    child:
                    TextField(


                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueAccent,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          hintText: "Simplify Education" ,hintStyle: TextStyle(color: Colors.black),
                        )

                    ),

                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(255, 255, 255, 1.0)),
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DashboardScreen()),
                      );
                    },
                  ),
                ),
                SizedBox(height: 14),
                SizedBox(
                  width: screenSize.width,
                  height: 50,
                  child: ElevatedButton(
                    child:
                    TextField(


                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueAccent,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          hintText: "Simplify Education" ,hintStyle: TextStyle(color: Colors.black),
                        )

                    ),

                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(255, 255, 255, 1.0)),
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DashboardScreen()),
                      );
                    },
                  ),
                ),
                SizedBox(height: 14),
                SizedBox(
                  width: screenSize.width,
                  height: 50,
                  child: ElevatedButton(
                    child:
                    TextField(


                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueAccent,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          hintText: "Simplify Education" ,hintStyle: TextStyle(color: Colors.black),
                        )

                    ),

                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(255, 255, 255, 1.0)),
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DashboardScreen()),
                      );
                    },
                  ),
                ),
                SizedBox(height: 14),
                TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: "Focus decoration text ...",hintStyle: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(height: 14),
                TextField(

                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red, //this has no effect
                      ),
                      borderRadius: BorderRadius.circular(1.0),
                    ),
                    hintText: "Border decoration text ...",hintStyle: TextStyle(color: Colors.black),
                  ),

                )
              ],
            ),
          ),

          backgroundColor: Color.fromRGBO(250, 220, 175, 1.0),
        ));
  }


// @override
// Widget build(BuildContext context) {
//   Size screenSize = MediaQuery.of(context).size;
//
//   return Scaffold(
//     appBar: AppBar(
//       title: Text('School Details'),
//       backgroundColor: Colors.deepOrange,
//     ),
//
//     body: SingleChildScrollView(
//       child: Container(child: Column(children: [
//
//
//         Container(width:screenSize.width ,height: 60,color: Colors.white,
//           child:   ListTile(
//             title:   Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//
//                 Text('Kindly Fill the Mandatory Fields ',style: TextStyle(color: Colors.deepOrange),),
//
//                 Text('Student Count'),
//
//
//
//               ],),
//
//           ),
//         ),
//
//
//         Container(height: screenSize.height-150,
//           child:   ListView.builder(
//             itemCount: arrClassList.length,
//             itemBuilder: (context, index) {
//               return ListTile(
//                 onTap: () {
//                   print('Caa');
//
//                   print(index);
//
//                   iSelectedIndex = index;
//
//                   action_ListScreenTap();
//
//
//
//                 },
//                 title: Padding(
//                   padding: const EdgeInsets.all(1.0),
//                   child: Container(child: Card(child: Center(child: Padding(
//                     padding: const EdgeInsets.only(left: 12,right: 12),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         //SizedBox(width: 12,),
//
//                         Text(arrClassList[index],
//                             textAlign: TextAlign.left,style: TextStyle(color: Colors.deepOrange,
//                                 fontSize: 18,fontWeight:FontWeight.w700)),
//                         Text('0',
//                           textAlign: TextAlign.left,),
//                       ],
//                     ),
//                   )),),height: 50,),
//                 ),
//               );
//             },
//           ),
//         )
//
//
//
//
//
//
//
//
//       ],),),
//     ),
//
//     backgroundColor: Color.fromRGBO(250, 220, 175, 1.0),
//     floatingActionButton: FloatingActionButton(
//       onPressed: () {
//
//
//         int ivalue;
//         iSelectedIndex = ivalue;
//
//
//         classCtrl.text = '';
//
//         action_Add_Class();
//
//         // Add your onPressed code here!
//       },
//       child: const Icon(Icons.add_circle),
//       backgroundColor: Colors.deepOrange,
//     ),
//   );
//
// }
}




