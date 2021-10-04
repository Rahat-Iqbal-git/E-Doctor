import 'package:flutter/material.dart';
import 'package:flutter_password/page2.dart';

class Logout extends StatefulWidget {
  const Logout({Key? key}) : super(key: key);

  @override
  _LogoutState createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // ignore: prefer_const_constructors
        backgroundColor: Color(0xff17bfcc),
        // ignore: prefer_const_constructors
        leading: Icon(Icons.menu,color: Colors.black, ),
        // ignore: prefer_const_constructors
        title: Text("Log Out",
          // ignore: prefer_const_constructors
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
        ),
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
            child: Center(
              child: Column(
                children: [
                  Container(
                    // ignore: prefer_const_constructors
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                    width: 300,
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      border: Border.all(
                        // ignore: prefer_const_constructors
                        color: Color(0xff00c8d7),
                      ),
                    ),
                    child:  Column(
                      children: [
                        const Text("Are you sure want to log out?",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            RaisedButton(
                              // ignore: prefer_const_constructors
                                color: Color(0xff17bfcc),
                                child: const Text("No",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                onPressed: (){

                                }
                            ),
                            const SizedBox(width: 30,),
                            RaisedButton(
                              // ignore: prefer_const_constructors
                                color: Color(0xffffffff),
                                child: const Text("Yes",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                onPressed: (){

                                }
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(height: 150,),
                  FlatButton(
                    onPressed: (){
                      // ignore: prefer_const_constructors
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Forget()));
                    },
                    child: Container(
                      height: 30,
                      width: 200,
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
          ),
        ],
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
