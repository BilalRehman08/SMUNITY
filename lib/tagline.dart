import 'package:flutter/material.dart';
import 'package:smunity/profile.dart';

import 'events.dart';

class Tagline extends StatefulWidget {
  @override
  _TaglineState createState() => _TaglineState();
}

class _TaglineState extends State<Tagline> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            actions: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Profile()));
                  },
                  child: Icon(
                    Icons.cancel,
                    color: Colors.black,
                  )),
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 40, right: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: CircleAvatar(
                      radius: 40.0,
                      backgroundImage: NetworkImage(
                          'https://www.pngitem.com/pimgs/m/391-3918613_personal-service-platform-person-icon-circle-png-transparent.png'),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Name",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Tagline",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Description",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 0),
                      ),
                    ),
                    maxLines: 3,
                    keyboardType: TextInputType.multiline,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.22,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Date",
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 15)),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.22,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Time",
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 15)),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.22,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Duration",
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 15)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Speaker Name",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Type",
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 15)),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Category",
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 15)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ConstrainedBox(
                    constraints:
                        BoxConstraints.tightFor(width: 200, height: 50),
                    child: ElevatedButton(
                      onPressed: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Profile())),
                      child: Text(
                        "Register",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xFFFB8437),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
