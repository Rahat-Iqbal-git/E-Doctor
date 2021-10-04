import 'package:flutter/material.dart';

class payment extends StatefulWidget {
  const payment({Key? key}) : super(key: key);

  @override
  _paymentState createState() => _paymentState();
}

class _paymentState extends State<payment> {
  //
  bool isChecked = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  final Color maincolor = Color(0xff00c8d7);

  //

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 55,
            margin: EdgeInsets.fromLTRB(0, 30, 0, 20),
            decoration: BoxDecoration(
              color: maincolor,
              border: Border.all(color: Colors.blueAccent),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Cards",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 40,
                ),
                Text(
                  "Mobile banking",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 40,
                ),
                Text(
                  "Net Banking",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),

          //
          SizedBox(
            height: 20,
          ),

          //

          Row(
            children: [
              Container(
                height: 110,
                width: 110,
                decoration: BoxDecoration(
                  color: Color(0xff6ef5ff),
                  border: Border.all(
                    color: Colors.blue,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                      child: Checkbox(
                          checkColor: Colors.white,
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          }),
                    ),
                    Text(
                      "Rocket",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 110,
                width: 110,
                decoration: BoxDecoration(
                  color: Color(0xff6ef5ff),
                  border: Border.all(
                    color: Colors.blue,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                      child: Checkbox(
                          checkColor: Colors.white,
                          value: isChecked2,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked2 = value!;
                            });
                          }),
                    ),
                    Text(
                      "Rocket",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 110,
                width: 110,
                decoration: BoxDecoration(
                  color: Color(0xff6ef5ff),
                  border: Border.all(
                    color: Colors.blue,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                      child: Checkbox(
                          checkColor: Colors.white,
                          value: isChecked3,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked3 = value!;
                            });
                          }),
                    ),
                    Text(
                      "Rocket",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
