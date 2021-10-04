import 'package:flutter/material.dart';

class Passupdate extends StatefulWidget {
    Passupdate({Key? key}) : super(key: key);

  @override
  _PassupdateState createState() => _PassupdateState();
}

class _PassupdateState extends State<Passupdate> {
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
             Text("Password Updated",
               // ignore: prefer_const_constructors
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            // ignore: prefer_const_constructors
           Image(image: AssetImage('assets/passupdate.png')),
            // ignore: prefer_const_constructors
            SizedBox(height: 14,),
            // ignore: prefer_const_constructors
            Text("Your password has been updated",
              // ignore: prefer_const_constructors
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 20,),
            Container(
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
                onPressed: () {

                },
                // ignore: prefer_const_constructors
                child: Text('Login',
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 130,),
            FlatButton(
              onPressed: (){
                // ignore: prefer_const_constructors
                //Navigator.push(context, MaterialPageRoute(builder: (context) => Details()));
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
