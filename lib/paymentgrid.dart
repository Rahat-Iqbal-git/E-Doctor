import 'package:flutter/material.dart';

class paymentgrid extends StatefulWidget {
  // const paymentgrid({Key? key}) : super(key: key);

  @override
  _paymentgridState createState() => _paymentgridState();
}

class _paymentgridState extends State<paymentgrid> {
  final Color maincolor = Color(0xff00c8d7);
  bool isChecked = false;
  //
  List<String> images = [
    "bKash",
    "nogod",
    "upay",
    "rocket",
  ];

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
        body: Column(
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
            Expanded(
              child: Container(
                // height: MediaQuery.of(context).size.height,
                // height: 200,
                width: MediaQuery.of(context).size.width,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                  ),
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      width: 100,
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
                          // Image.network(
                          //   images[index],
                          //   height: 30,
                          //   width: 30,
                          // ),
                          Text(images[index]),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              // alignment: Alignment.center,
              // margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                onPressed: () {},
                child: const Text(
                  'Next',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Container(
                  child: Container(
                    // alignment: Alignment.bottomCenter,
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: maincolor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.touch_app_outlined),
                        Text("Pay 1000.00"),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        )
        // Column(
        //   children: [
        //     GridView.count(
        //       crossAxisCount: 4,
        //       children: [
        //         Container(
        //           height: 110,
        //           width: 110,
        //           decoration: BoxDecoration(
        //             color: Color(0xff6ef5ff),
        //             border: Border.all(
        //               color: Colors.blue,
        //             ),
        //           ),
        //           child: Column(
        //             mainAxisAlignment: MainAxisAlignment.start,
        //             children: [
        //               Padding(
        //                 padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
        //                 child: Checkbox(
        //                     checkColor: Colors.white,
        //                     value: isChecked,
        //                     onChanged: (bool? value) {
        //                       setState(() {
        //                         isChecked = value!;
        //                       });
        //                     }),
        //               ),
        //               Text(
        //                 "Rocket",
        //                 style: TextStyle(
        //                   fontSize: 20,
        //                 ),
        //               )
        //             ],
        //           ),
        //         ),
        //         Container(
        //           height: 110,
        //           width: 110,
        //           decoration: BoxDecoration(
        //             color: Color(0xff6ef5ff),
        //             border: Border.all(
        //               color: Colors.blue,
        //             ),
        //           ),
        //           child: Column(
        //             mainAxisAlignment: MainAxisAlignment.start,
        //             children: [
        //               Padding(
        //                 padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
        //                 child: Checkbox(
        //                     checkColor: Colors.white,
        //                     value: isChecked,
        //                     onChanged: (bool? value) {
        //                       setState(() {
        //                         isChecked = value!;
        //                       });
        //                     }),
        //               ),
        //               Text(
        //                 "Rocket",
        //                 style: TextStyle(
        //                   fontSize: 20,
        //                 ),
        //               )
        //             ],
        //           ),
        //         ),
        //         Container(
        //           height: 110,
        //           width: 110,
        //           decoration: BoxDecoration(
        //             color: Color(0xff6ef5ff),
        //             border: Border.all(
        //               color: Colors.blue,
        //             ),
        //           ),
        //           child: Column(
        //             mainAxisAlignment: MainAxisAlignment.start,
        //             children: [
        //               Padding(
        //                 padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
        //                 child: Checkbox(
        //                     checkColor: Colors.white,
        //                     value: isChecked,
        //                     onChanged: (bool? value) {
        //                       setState(() {
        //                         isChecked = value!;
        //                       });
        //                     }),
        //               ),
        //               Text(
        //                 "Rocket",
        //                 style: TextStyle(
        //                   fontSize: 20,
        //                 ),
        //               )
        //             ],
        //           ),
        //         ),
        //         Container(
        //           height: 110,
        //           width: 110,
        //           decoration: BoxDecoration(
        //             color: Color(0xff6ef5ff),
        //             border: Border.all(
        //               color: Colors.blue,
        //             ),
        //           ),
        //           child: Column(
        //             mainAxisAlignment: MainAxisAlignment.start,
        //             children: [
        //               Padding(
        //                 padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
        //                 child: Checkbox(
        //                     checkColor: Colors.white,
        //                     value: isChecked,
        //                     onChanged: (bool? value) {
        //                       setState(() {
        //                         isChecked = value!;
        //                       });
        //                     }),
        //               ),
        //               Text(
        //                 "Rocket",
        //                 style: TextStyle(
        //                   fontSize: 20,
        //                 ),
        //               )
        //             ],
        //           ),
        //         ),
        //       ],
        //     ),
        //   ],
        // ),

        );
  }
}
