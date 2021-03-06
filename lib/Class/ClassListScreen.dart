import 'package:flutter/material.dart';

class ClassListScreen extends StatefulWidget {
  ClassListScreen({Key key}) : super(key: key);

  @override
  _ClassListScreenState createState() => _ClassListScreenState();
}

class _ClassListScreenState extends State<ClassListScreen> {
  TextEditingController classCtrl = TextEditingController();

  var arrClassList = [
    'First Year',
    'Second Year',
    'JAVA',
    'ORACLE',
    'SWIFT',
    'DART'
  ];

  List<String> arrList = [
    'Section List',
    'Automatically Send SMS',
    'Rename',
    'Delete',
  ];

  int iSelectedIndex;

  Future<String> action_ListScreenTap() async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            //title: Text(''),
            content: Container(
              width: double.minPositive,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: arrList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(arrList[index]),
                    onTap: () {
                      if (index == 2) {
                        classCtrl.text = arrClassList[iSelectedIndex];
                        action_Add_Class();
                      }
                      if (index == 3) {
                        arrClassList.removeAt(iSelectedIndex);

                        setState(() {
                          arrClassList = arrClassList;
                          Navigator.pop(context);
                        });
                      }
                      //  Navigator.pop(context, colorList[index]);
                    },
                  );
                },
              ),
            ),
          );
        });
  }

  void action_Add_Class() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Row(
              children: [],
            ),
            content: TextFormField(
              controller: classCtrl,
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Write class name',
                labelText: 'Clas name *',
              ),
              onSaved: (String value) {
                // This optional block of code can be used to run
                // code when the user saves the form.
              },
              validator: (String value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    setState(() {
                      if (iSelectedIndex != null) {
                        arrClassList.removeAt(iSelectedIndex);

                        arrClassList.insert(iSelectedIndex, classCtrl.text);
                        arrClassList = arrClassList;

                        Navigator.of(context).pop();
                      } else {
                        arrClassList.add(classCtrl.text);
                        arrClassList = arrClassList;
                      }
                    });

                    Navigator.of(context).pop();
                  },
                  child: Container(
                    //color: Colors.orange,

                    child: Text(
                      'SAVE',
                      style: TextStyle(color: Colors.deepOrange),
                    ),
                  )),
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    child: Text(
                      'CANCEL',
                      style: TextStyle(color: Colors.deepOrange),
                    ),
                  )),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Class List'),
        backgroundColor: Colors.deepOrange,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                width: screenSize.width,
                height: 60,
                color: Colors.white,
                child: ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Class Name',
                        style: TextStyle(color: Colors.deepOrange),
                      ),
                      Text('Student Count'),
                    ],
                  ),
                ),
              ),
              Container(
                height: screenSize.height - 150,
                child: ListView.builder(
                  itemCount: arrClassList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        print('Caa');

                        print(index);

                        iSelectedIndex = index;

                        action_ListScreenTap();
                      },
                      title: Container(
                        child: Card(
                          child: Center(
                              child: Padding(
                            padding:
                                const EdgeInsets.only(left: 8, right: 8),
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                //SizedBox(width: 12,),

                                Text(arrClassList[index],
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Colors.deepOrange,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700)),
                                Text(
                                  '0',
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                          )),
                        ),
                        height: 50,
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromRGBO(250, 220, 175, 1.0),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          int ivalue;
          iSelectedIndex = ivalue;

          classCtrl.text = '';

          action_Add_Class();

          // Add your onPressed code here!
        },
        child: const Icon(Icons.add_circle),
        backgroundColor: Colors.deepOrange,
      ),
    );
  }
}
