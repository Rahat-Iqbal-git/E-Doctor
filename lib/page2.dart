import 'package:flutter/material.dart';
import 'package:flutter_password/selection.dart';

class Forget extends StatefulWidget {
  const Forget({Key? key}) : super(key: key);

  @override
  _ForgetState createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ignore: prefer_const_constructors
            Image(image: AssetImage('assets/forget.png'),),
            // ignore: prefer_const_constructors
            SizedBox(height: 20,),
            // ignore: prefer_const_constructors
            Text(
              "Forgot Password",
              // ignore: prefer_const_constructors
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 30,),
            // ignore: prefer_const_constructors
            Container(
              // ignore: prefer_const_constructors
              margin: EdgeInsets.only(left: 30, right: 30),
              // ignore: prefer_const_constructors
              child: Text(
                  "Please enter your email/phone number to receive a code to create a new password."),
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 20,),
            // ignore: prefer_const_constructors
            Container(
              // ignore: prefer_const_constructors
              margin: EdgeInsets.only(left: 30),
              alignment: Alignment.centerLeft,
              // ignore: prefer_const_constructors
              child: Text(
                "Email address/phone number",
                // ignore: prefer_const_constructors
                style: TextStyle(
                  fontSize: 11,
                ),
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 10,),
            // ignore: prefer_const_constructors
            Container(
              // ignore: prefer_const_constructors
              child: TextField(
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  // ignore: prefer_const_constructors
                  contentPadding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                  // prefixIcon: Icon(
                  //   Icons.sms_rounded,
                  //   color: const Color(0xff31bec9),
                  // ),
                  border: InputBorder.none,
                  hintText: '',
                ),
              ),
              margin: const EdgeInsets.only(left: 30.0, right: 30.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[350],
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 20,),
            // ignore: prefer_const_constructors
            Container(
              width: 250,
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
                onPressed: () {

                },
                child: const Text(
                  'Send',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 50,),
            FlatButton(
              onPressed: (){
                // ignore: prefer_const_constructors
                Navigator.push(context, MaterialPageRoute(builder: (context) => Selection()));
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
