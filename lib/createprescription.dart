import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreatePrescriptionScreen extends StatefulWidget {
  const CreatePrescriptionScreen({Key key}) : super(key: key);

  @override
  _CreatePrescriptionScreenState createState() => _CreatePrescriptionScreenState();
}

class _CreatePrescriptionScreenState extends State<CreatePrescriptionScreen> {
  var category = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff00c8d7),
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: Text(
          "Create Prescription",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Text('Date',
                style: TextStyle(
                  fontSize: 18,
                ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Name:',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text('Age',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text('Gender',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Text('Diagnosis',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 8,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff00c8d7),

                  ),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: DropdownButton(
                  isExpanded: true,
                  iconSize: 45,
                  underline: SizedBox(),
                  hint: Text(category,
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black
                    ),
                  ),
                  items: [
                    DropdownMenuItem(child: Text("Category A"), value: "Category A",),
                    DropdownMenuItem(child: Text("Category B"), value: "Category B",),
                    DropdownMenuItem(child: Text("Category C"), value: "Category C",),
                  ],
                  onChanged: (value){
                    setState(() {
                      category = value;
                    });
                  },
                ),
              ),
              SizedBox(height: 10,),
              Text('On Examination',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 8,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xff00c8d7),

                    ),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: DropdownButton(
                  isExpanded: true,
                  iconSize: 45,
                  underline: SizedBox(),
                  hint: Text(category,
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black
                    ),
                  ),
                  items: [
                    DropdownMenuItem(child: Text("Category A"), value: "Category A",),
                    DropdownMenuItem(child: Text("Category B"), value: "Category B",),
                    DropdownMenuItem(child: Text("Category C"), value: "Category C",),
                  ],
                  onChanged: (value){
                    setState(() {
                      category = value;
                    });
                  },
                ),
              ),
              SizedBox(height: 10,),
              Text('Investigation',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 8,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xff00c8d7),

                    ),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: DropdownButton(
                  isExpanded: true,
                  iconSize: 45,
                  underline: SizedBox(),
                  hint: Text(category,
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black
                    ),
                  ),
                  items: [
                    DropdownMenuItem(child: Text("Category A"), value: "Category A",),
                    DropdownMenuItem(child: Text("Category B"), value: "Category B",),
                    DropdownMenuItem(child: Text("Category C"), value: "Category C",),
                  ],
                  onChanged: (value){
                    setState(() {
                      category = value;
                    });
                  },
                ),
              ),
              SizedBox(height: 10,),
              Text('Note',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Medicine",style: TextStyle(
                    fontSize: 18,
                  ),),
                  ElevatedButton(
                      onPressed: (){},
                      child: Row(
                        children: [
                          Text("Add Drugs"),
                          SizedBox(width: 10,),
                          Icon(Icons.add_circle)
                        ],
                      ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff00c8d7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                      )
                    )
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xff00c8d7),
                        ),
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15), topRight: Radius.circular(15))
                    ),
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.add_circle, size: 40,color: Color(0xff00c8d7),),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                    decoration: BoxDecoration(
                      color: Color(0xff00c8d7),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        topRight: Radius.circular(25)
                      )
                    ),
                    child: Text("Tablet",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xff00c8d7),
                        ),
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15), topRight: Radius.circular(15))
                    ),
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.add_circle, size: 40,color: Color(0xff00c8d7),),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                    decoration: BoxDecoration(
                        color: Color(0xff00c8d7),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(25),
                            topRight: Radius.circular(25)
                        )
                    ),
                    child: Text("Capsule",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(onPressed: (){},
                    child: Text("Next",style: TextStyle(fontSize: 20),),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff00c8d7),
                    padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                    )
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

