import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_password/passwordupdate.dart';

class Verify extends StatefulWidget {
  const Verify({Key? key}) : super(key: key);

  @override
  _VerifyState createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         children:  [
           const Text("Enter The Verify Code",
           style: TextStyle(
             fontSize: 25,
             color: Colors.black,
           ),
           ),
           // ignore: prefer_const_constructors
            SizedBox(height: 20,),
           // ignore: prefer_const_constructors
           Text("An OTP Was Send",
             // ignore: prefer_const_constructors
           style: TextStyle(
             fontSize: 16,
             // ignore: prefer_const_constructors
             color: Color(0xffa4a4a4),
           ),
           ),
           // ignore: prefer_const_constructors
           SizedBox(height: 5,),
           // ignore: prefer_const_constructors
           Text("Please Verify Yourself",
             // ignore: prefer_const_constructors
             style: TextStyle(
               fontSize: 16,
               // ignore: prefer_const_constructors
               color: Color(0xffa4a4a4),
             ),
           ),
           // ignore: prefer_const_constructors
           SizedBox(height: 30),
           // ignore: prefer_const_constructors
           Container(
             // ignore: prefer_const_constructors
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 OtpTextField(
                   numberOfFields: 5,
                   // ignore: prefer_const_constructors
                   borderColor: Color(0xff48abb3),
                   showFieldAsBox: true, //set to true to show as box or false to show as dash
                   onCodeChanged: (String code) {
                     //handle validation or checks here
                   },
                   // onSubmit: (String verificationCode){
                   //   // showDialog(
                   //   //     context: context,
                   //   //     // builder: (context){
                   //   //     //   // return AlertDialog(
                   //   //     //   //   // ignore: prefer_const_constructors
                   //   //     //   //   //title: Text("Verification Code"),
                   //   //     //   //   //content: Text('Code entered is $verificationCode'),
                   //   //     //   // );
                   //   //     // }
                   //   // );
                   // }, // end onSubmit
                 ),

               ],
             ),
           ),
           // ignore: prefer_const_constructors
           SizedBox(height: 70,),
           // ignore: deprecated_member_use
           RaisedButton(
             // ignore: prefer_const_constructors
             color: Color(0xff1dbcc8),
             onPressed: (){

             },
             // ignore: prefer_const_constructors
             child: Text("Submit Code",
               // ignore: prefer_const_constructors
             style: TextStyle(
               fontSize: 20,
               color: Colors.white,
             ),
             ),
           ),
           // ignore: prefer_const_constructors
           SizedBox(height: 10,),
           // ignore: prefer_const_constructors
           Text("The Verify Code Will Expire in 01:59",
             // ignore: prefer_const_constructors
             style: TextStyle(
               fontSize: 16,
               // ignore: prefer_const_constructors
               color: Color(0xff000000),
             ),
           ),
           // ignore: prefer_const_constructors
           SizedBox(height: 40,),
           // ignore: prefer_const_constructors
           Text("Resend Code",
             // ignore: prefer_const_constructors
             style: TextStyle(
               fontSize: 16,
               // ignore: prefer_const_constructors
               color: Color(0xffff9b9b),
             ),
           ),
           // ignore: prefer_const_constructors
           SizedBox(height: 20,),
           FlatButton(
             onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) => Passupdate()));
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
          children:const[
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
