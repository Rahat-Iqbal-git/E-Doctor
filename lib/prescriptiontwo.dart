import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class PrescriptionTwoScreen extends StatefulWidget {
  const PrescriptionTwoScreen({Key key}) : super(key: key);

  @override
  _PrescriptionTwoScreenState createState() => _PrescriptionTwoScreenState();
}

class _PrescriptionTwoScreenState extends State<PrescriptionTwoScreen> {

  File image;
  var category = "Name";
  var check_value = false;

  Future pickImage() async{
    try{
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if(image == null) return;
      final image_temp = File(image.path);
      setState(() {
        this.image = image_temp;
        print('click');
      });
    }on PlatformException catch (e){
      print('error for image pick: $e');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff00c8d7),
        leading: Icon(
          Icons.menu,
          color: Colors.black,
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.add_circle, color: Color(0xff00c8d7),),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff00c8d7)),
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: DropdownButton(
                            underline: SizedBox(),
                              hint: Text(category,),
                              items: [
                                DropdownMenuItem(child: Text("Name A"), value: "Name A",),
                                DropdownMenuItem(child: Text("Name B"), value: "Name B",),
                                DropdownMenuItem(child: Text("Name C"), value: "Name C",),
                              ],
                              onChanged: (value){
                                setState(() {
                                  category = value;
                                });
                              },
                            ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: DropdownButton(
                            underline: SizedBox(),
                            hint: Text('mg',),
                            items: [
                              DropdownMenuItem(child: Text("mg A"), value: "mg A",),
                              DropdownMenuItem(child: Text("mg B"), value: "mg B",),
                              DropdownMenuItem(child: Text("mg C"), value: "mg C",),
                            ],
                            onChanged: (value){
                              setState(() {
                                category = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(value: check_value, onChanged: (value){
                          setState(() {
                            check_value = value;
                          });
                        }),
                        Text('Before Meal'),
                        Checkbox(value: check_value, onChanged: (value){
                          setState(() {
                            check_value = value;
                          });
                        }),
                        Text('Before Meal'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(value: check_value, onChanged: (value){
                          setState(() {
                            check_value = value;
                          });
                        }),
                        Text('At Middle'),
                        Checkbox(value: check_value, onChanged: (value){
                          setState(() {
                            check_value = value;
                          });
                        }),
                        Text('No Meal Instruction'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Dose: "),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff00c8d7)),
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: DropdownButton(
                            underline: SizedBox(),
                            hint: Text('0',),
                            items: [
                              DropdownMenuItem(child: Text("1"), value: "1",),
                              DropdownMenuItem(child: Text("2"), value: "2",),
                              DropdownMenuItem(child: Text("3"), value: "3",),
                            ],
                            onChanged: (value){
                              setState(() {
                                category = value;
                              });
                            },
                          ),
                        ),
                        Text(" times in a "),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff00c8d7)),
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: DropdownButton(
                            underline: SizedBox(),
                            hint: Text('Month',),
                            items: [
                              DropdownMenuItem(child: Text("1"), value: "1",),
                              DropdownMenuItem(child: Text("2"), value: "2",),
                              DropdownMenuItem(child: Text("3"), value: "3",),
                            ],
                            onChanged: (value){
                              setState(() {
                                category = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff00c8d7)),
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: DropdownButton(
                        underline: SizedBox(),
                        hint: Text('to be continue',),
                        items: [
                          DropdownMenuItem(child: Text("1"), value: "1",),
                          DropdownMenuItem(child: Text("2"), value: "2",),
                          DropdownMenuItem(child: Text("3"), value: "3",),
                        ],
                        onChanged: (value){
                          setState(() {
                            category = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Text("Others Indications"),
              SizedBox(height: 8,),
              TextField(
                cursorColor: Color(0xff00c8d7),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Color(0xff00c8d7),),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Color(0xff00c8d7),),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text("Upload"),
              SizedBox(height: 8,),
              Container(
                padding: EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff00c8d7)),
                    borderRadius: BorderRadius.circular(12)
                ),
                child: GestureDetector(
                  onTap: pickImage,
                    child: Icon(Icons.camera_alt, size: 50,color: Color(0xff5b5b5b),))
              ),
              SizedBox(height: 10,),
              Text("Voice message (if necessary)"),
              SizedBox(height: 8,),
              Container(
                  padding: EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff00c8d7)),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.touch_app_outlined,size: 45,),
                      Text("Tap here to send voice message")
                    ],
                  )
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){},
                  child: Text('Preview',style: TextStyle(color: Colors.black),),
                style: ElevatedButton.styleFrom(
                  side: BorderSide(color: Color(0xff00c8d7),width: 2),
                  primary: Colors.white,
                  elevation: 0
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: ElevatedButton(onPressed: (){},
                    child: Text('Finished'),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff00c8d7),
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                    )
                  ),
                ),
              ),
              SizedBox(height: 20,),
              //image !=null? Image.file(image,width: 100,height: 100,):Text('no image'),
            ],
          ),
        ),
      ),
    );
  }
}
