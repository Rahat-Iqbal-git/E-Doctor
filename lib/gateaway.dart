import 'package:flutter/material.dart';

class gateaway extends StatefulWidget {
  const gateaway({Key? key}) : super(key: key);

  @override
  _gateawayState createState() => _gateawayState();
}

class _gateawayState extends State<gateaway> {
  //
  final Color maincolor = Color(0xff00c8d7);
  int selradio = 0;

  setselradio(int val) {
    setState(() {
      selradio = val;
    });
  }

  space10() {
    return SizedBox(
      height: 10,
    );
  }

  space30() {
    return SizedBox(
      height: 30,
    );
  }

  sidespace(double val) {
    return SizedBox(
      width: val,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recieved Gateaway'),
        backgroundColor: maincolor,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
      ),

      //
      body: Container(
        padding: EdgeInsets.fromLTRB(40, 30, 0, 0),
        child: Column(
          children: [
            Container(
              height: 35,
              width: 206,
              padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black),
              ),
              child: Row(
                children: [
                  Text(
                    "Card",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  sidespace(105),
                  Radio(
                      value: 1,
                      groupValue: selradio,
                      activeColor: maincolor,
                      onChanged: (int? value) {
                        setselradio(value!);
                        // print("Radio 12345");
                      }),
                ],
              ),
            ),
            space10(),

            //
            Container(
              height: 35,
              width: 206,
              padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black),
              ),
              child: Row(
                children: [
                  Text(
                    "Mobile Banking",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  sidespace(23),
                  Radio(
                      value: 2,
                      groupValue: selradio,
                      activeColor: maincolor,
                      onChanged: (int? value) {
                        setselradio(value!);
                        // print("Radio 12345");
                      }),
                ],
              ),
            ),
            space10(),

            //
            Container(
              height: 35,
              width: 206,
              padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black),
              ),
              child: Row(
                children: [
                  Text(
                    "Net Banking",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  sidespace(49),
                  Radio(
                      value: 3,
                      groupValue: selradio,
                      activeColor: maincolor,
                      onChanged: (int? value) {
                        setselradio(value!);
                        // print("Radio 12345");
                      }),
                ],
              ),
            ),
            //

            space30(),
            space30(),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Container(
                // alignment: Alignment.center,
                // margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xff31bec9),
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Colors.white,
                    // textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Next',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: maincolor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.grid_view,
              size: 35,
              color: Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.alarm,
              size: 35,
              color: Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.undo,
              size: 35,
              color: Colors.black,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
