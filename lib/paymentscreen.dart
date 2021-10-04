import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key key}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff00c8d7),
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: Text(
          "Payment",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                alignment: Alignment.centerLeft,
                child: Text(
                  "ABC Bank Limited",
                )),
            Divider(
              color: Color(0xff00c8d7),
              thickness: 5,
              height: 20,
            ),
            Text("ABC GATEWAY",
                style: TextStyle(
                    color: Color(0xff00c8d7),
                    fontWeight: FontWeight.bold,
                    fontSize: 18)),
            Divider(
              color: Color(0xff00c8d7),
              thickness: 5,
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Mobile Account Information",
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Column(
                children: [
                  Container(
                    child: Text("Mobile Account No :"),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffc1f8fb), width: 2),
                        borderRadius: BorderRadius.circular(12)),
                    width: MediaQuery.of(context).size.width,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text("Pin             "),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Color(0xffc1f8fb), width: 2),
                            borderRadius: BorderRadius.circular(12)),
                      ),
                      Icon(
                        Icons.keyboard,
                        color: Color(0xff7aedf3),
                        size: 40,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                          "Amount: 1000.00\nCurrency: BDT\nDescription: hfghslkjjsgjalmvlbn")),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: ElevatedButton(
                              onPressed: () {},
                              child: Text("BACK",
                                  style: TextStyle(color: Colors.black)),
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xffc1f8fb)))),
                      Expanded(
                          child: ElevatedButton(
                              onPressed: () {},
                              child: Text("SUBMIT",
                                  style: TextStyle(color: Colors.black)),
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xffc1f8fb)))),
                      Expanded(
                          child: ElevatedButton(
                              onPressed: () {},
                              child: Text("RESET",
                                  style: TextStyle(color: Colors.black)),
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xffc1f8fb)))),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        color: Color(0xff00c8d7),
        child: Row(
          children: [
            Expanded(child: Icon(Icons.grid_view, size: 50,)),
            VerticalDivider(color: Colors.white,),
            Expanded(child: Icon(Icons.alarm, size: 50,)),
            VerticalDivider(color: Colors.white,),
            Expanded(child: Icon(Icons.undo, size: 50,)),
          ],
        ),
      ),
    );
  }
}
