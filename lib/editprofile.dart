import 'package:flutter/material.dart';

class editprofile extends StatefulWidget {
  const editprofile({Key? key}) : super(key: key);

  @override
  _editprofileState createState() => _editprofileState();
}

class _editprofileState extends State<editprofile> {
  //
  final Color maincolor = Color(0xff00c8d7);
  final _formKey = GlobalKey<FormState>();
  int selradio = 0;

  // @override
  // void initState() {
  //   super.initState();
  //   selradio = 0;
  // }

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

  space20() {
    return SizedBox(
      height: 20,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
        backgroundColor: maincolor,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
      ),
      body: Container(
        // alignment: Alignment.centerLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 65,
              height: 65,
              // color: Colors.grey,
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(35),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.camera_alt),
              ),
            ),
            space10(),
            Container(
              margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
              // alignment: Alignment.topLeft,
              child: Form(
                key: _formKey,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    space10(),
                    TextFormField(
                      decoration: InputDecoration(
                        contentPadding: new EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    space10(),

                    //

                    Text(
                      'Designation',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    space10(),
                    TextFormField(
                      decoration: InputDecoration(
                        contentPadding: new EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    space10(),

                    //

                    Text(
                      'Gender',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),

                    //

                    Row(
                      children: [
                        Radio(
                            value: 1,
                            groupValue: selradio,
                            activeColor: maincolor,
                            onChanged: (int? value) {
                              setselradio(value!);
                              // print("Radio 12345");
                            }),
                        Text("Male"),
                        SizedBox(
                          width: 20,
                        ),
                        Radio(
                            value: 2,
                            groupValue: selradio,
                            activeColor: maincolor,
                            onChanged: (int? value) {
                              setselradio(value!);
                              // print("Radio 12345");
                            }),
                        Text("Female"),
                        SizedBox(
                          width: 20,
                        ),
                        Radio(
                            value: 3,
                            groupValue: selradio,
                            activeColor: maincolor,
                            onChanged: (int? value) {
                              setselradio(value!);
                              // print("Radio 12345");
                            }),
                        Text("Others"),
                      ],
                    ),
                    space10(),

                    //

                    Text(
                      'BMDC Number',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    space10(),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'What do people call you?',
                        labelText: 'Name ',
                        contentPadding: new EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    space10(),

                    //

                    Text(
                      'Phone Number',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    space10(),
                    TextFormField(
                      decoration: InputDecoration(
                        contentPadding: new EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    space10(),

                    //

                    Text(
                      'Degree',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    space10(),
                    TextFormField(
                      decoration: InputDecoration(
                        contentPadding: new EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ],

                  //
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
