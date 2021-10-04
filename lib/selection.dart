import 'package:flutter/material.dart';
import 'package:flutter_password/verify.dart';

class Selection extends StatefulWidget {
  const Selection({Key? key}) : super(key: key);

  @override
  _SelectionState createState() => _SelectionState();
}

class _SelectionState extends State<Selection> {
 int _value = 1;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ignore: prefer_const_constructors
            Text("Make Selection",
              // ignore: prefer_const_constructors
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 53,),
            // ignore: prefer_const_constructors
            Container(
              // ignore: prefer_const_constructors
              margin: EdgeInsets.only(left: 40, right: 30),
              // ignore: prefer_const_constructors
              child: Text(
                  "Select which contact detail should we use to reset your password?"
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 30,),
            // ignore: prefer_const_constructors
            GestureDetector(
              child: Container(
                alignment: Alignment.center,
                child: Row(
                  children: [
                    // ignore: prefer_const_constructors
                    Icon(Icons.smartphone_sharp,
                      // ignore: prefer_const_constructors
                      color: Color(0xff31bec9),
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(width: 10,),
                    // ignore: prefer_const_constructors
                  Text("via sms"),
                    // ignore: prefer_const_constructors
                    SizedBox(width: 150,),
                    Radio(
                      value: 1,
                      groupValue: _value,
                      onChanged: (int? value){
                        setState(() {
                          _value = _value;
                        });
                      },
                    ),
                  ],
                ),

                width: 300,
                height: 40,
                // ignore: prefer_const_constructors
                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                margin: const EdgeInsets.only(left: 30.0, right: 30.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[350],
                ),
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 10,),
            GestureDetector(
              child: Container(
                alignment: Alignment.center,
                child: Row(
                  children:  [
                    // ignore: prefer_const_constructors
                    Icon(Icons.mail,
                      // ignore: prefer_const_constructors
                      color: Color(0xff31bec9),
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(width: 10,),
                    // ignore: prefer_const_constructors
                    Text("via mail"),
                    // ignore: prefer_const_constructors
                    SizedBox(width: 150,),
                    Radio(
                      value: 2,
                      groupValue: Selection,
                      onChanged: (value){
                        setState(() {
                          value = value;
                        });
                      },
                    ),
                  ],
                ),
                width: 300,
                height: 40,
                // ignore: prefer_const_constructors
                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                margin: const EdgeInsets.only(left: 30.0, right: 30.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[350],
                ),
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 70,),
            FlatButton(
              onPressed: (){
                // ignore: prefer_const_constructors
                Navigator.push(context, MaterialPageRoute(builder: (context) => Verify()));
              },
              child: Container(
                height: 30,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                // ignore: prefer_const_constructors
                child: Center(
                  // ignore: prefer_const_constructors
                  child: Text("Button",
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: const Color(0xff00c8d7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Icon(Icons.grid_view,
              size: 50,
            ),
            Icon(Icons.alarm,
              size: 50,
            ),
            Icon(Icons.undo,
              size: 50,
            ),
          ],
        ),
      ),
    );
  }
}
