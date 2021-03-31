import 'package:flutter/material.dart';
import 'package:smunity/home.dart';
import 'package:smunity/interest.dart';

import 'events.dart';
import 'login.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String birthDateInString = "Select Date";
  DateTime birthDate;
  bool isDateSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Icon(Icons.close),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60.0, right: 50, left: 50),
              child: Column(
                children: [
                  Text(
                    "Smunity",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "First Name",
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 15)),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Last Name",
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 15)),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Phone number, username or email",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          birthDateInString == "Select Date"
                              ? Text(
                                  "Date Of Birth:",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey),
                                )
                              : Text(
                                  "Date Of Birth:",
                                  style: TextStyle(fontSize: 16),
                                ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              birthDateInString == "Select Date"
                                  ? Text(
                                      "$birthDateInString ",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.grey),
                                    )
                                  : Text(
                                      "$birthDateInString",
                                      style: TextStyle(fontSize: 16),
                                    ),
                              birthDateInString == "Select Date"
                                  ? Icon(Icons.calendar_today)
                                  : Icon(
                                      Icons.calendar_today,
                                      color: Colors.grey,
                                    ),
                            ],
                          )
                        ],
                      ),
                      onTap: () async {
                        final datePick = await showDatePicker(
                            context: context,
                            initialDate: new DateTime.now(),
                            firstDate: new DateTime(1900),
                            lastDate: new DateTime(2100));
                        if (datePick != null && datePick != birthDate) {
                          setState(() {
                            birthDate = datePick;
                            isDateSelected = true;

                            // put it here
                            birthDateInString =
                                "${birthDate.month}/${birthDate.day}/${birthDate.year}"; // 08/14/2019
                          });
                        }
                      }),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
                padding: EdgeInsets.only(bottom: 10, left: 50, right: 38),
                child: GenderField(['Male', 'Female', 'Other'])),
            SizedBox(
              height: 15,
            ),
            ConstrainedBox(
              constraints: BoxConstraints.tightFor(width: 200, height: 50),
              child: ElevatedButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Interest())),
                child: Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFFFB8437),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            )
          ],
        )),
      ),
      bottomNavigationBar: Container(
        height: 40,
        decoration:
            BoxDecoration(border: Border(top: BorderSide(color: Colors.grey))),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have an account? "),
              InkWell(
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login())),
                child: Text(
                  "Login",
                  style: TextStyle(color: Color(0xfffb8437)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class GenderField extends StatelessWidget {
  final List<String> genderList;

  GenderField(this.genderList);

  @override
  Widget build(BuildContext context) {
    String select;
    Map<int, String> mappedGender = genderList.asMap();

    return StatefulBuilder(
      builder: (_, StateSetter setState) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...mappedGender.entries.map(
            (MapEntry<int, String> mapEntry) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    mapEntry.value,
                    style: TextStyle(fontSize: 17, color: Colors.grey),
                  ),
                  Radio(
                    activeColor: Theme.of(context).primaryColor,
                    groupValue: select,
                    value: genderList[mapEntry.key],
                    onChanged: (value) => setState(() => select = value),
                  ),
                  // SizedBox(
                  //   width: 11,
                  // ),
                ]),
          ),
        ],
      ),
    );
  }
}
