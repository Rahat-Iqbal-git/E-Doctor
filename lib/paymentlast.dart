import 'package:flutter/material.dart';

class paymentlast extends StatefulWidget {
  const paymentlast({Key? key}) : super(key: key);

  @override
  _paymentlastState createState() => _paymentlastState();
}

class _paymentlastState extends State<paymentlast> {
  final Color maincolor = Color(0xff00c8d7);
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
        backgroundColor: maincolor,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
      ),

      //
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Column(
          children: [
            // Container(
            //   margin: EdgeInsets.only(top: 50),
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(20),
            //     border: Border.all(color: maincolor),
            //   ),
            // ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Enter Card Number',
                  // labelText: 'Name *',
                  focusColor: maincolor,
                  contentPadding: new EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 10.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: maincolor,
                      )),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: maincolor,
                  ))),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Row(
                children: [
                  Text("DD/MM/YY"),
                  SizedBox(
                    width: 80,
                  ),
                  Container(
                    width: 150,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: 'CVC/CVV',
                          suffixIcon: Icon(Icons.wallet_membership),
                          // labelText: 'Name *',
                          focusColor: maincolor,
                          contentPadding: new EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10.0),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: maincolor,
                              )),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: maincolor,
                          ))),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Enter Card Number',
                  // labelText: 'Name *',
                  focusColor: maincolor,
                  contentPadding: new EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 10.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: maincolor,
                      )),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: maincolor,
                  ))),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Checkbox(
                    checkColor: Colors.white,
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    }),
                Text("Remeber Me"),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
                "By clicking remember me, you agree to our terms and codnitions.")
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
