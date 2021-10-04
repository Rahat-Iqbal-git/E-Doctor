import 'package:flutter/material.dart';

class PaymentSuccessScreen extends StatefulWidget {
  const PaymentSuccessScreen({Key key}) : super(key: key);

  @override
  _PaymentSuccessScreenState createState() => _PaymentSuccessScreenState();
}

class _PaymentSuccessScreenState extends State<PaymentSuccessScreen> {
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Color(0xff00c8d7),
                  width: 2
                )
              ),
              child: Column(
                children: [
                  Text('Successfully Done', style: TextStyle(
                    fontSize: 22
                  ),),
                  SizedBox(height: 15,),
                  Text('Transection No: kk12112gkdfjkg'),
                  SizedBox(height: 40,),
                  ElevatedButton(onPressed: (){}, child: Text('RETURN',style: TextStyle(color: Colors.black),),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffc1f8fb),
                  ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        color: Color(0xff00c8d7),
        child: Row(
          children: [
            Expanded(child: Icon(Icons.grid_view, size: 50,)),
            Expanded(child: Icon(Icons.alarm, size: 50,)),
            Expanded(child: Icon(Icons.undo, size: 50,)),
          ],
        ),
      ),
    );
  }
}

