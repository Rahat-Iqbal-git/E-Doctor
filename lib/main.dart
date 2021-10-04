import 'package:doctorappnew/editprofile.dart';
import 'package:doctorappnew/gateaway.dart';
import 'package:doctorappnew/payment.dart';
import 'package:doctorappnew/paymentgrid.dart';
import 'package:doctorappnew/paymentgrid2nd.dart';
import 'package:doctorappnew/paymentlast.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: paymentgrid(),
    );
  }
}
