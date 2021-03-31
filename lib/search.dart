import 'package:flutter/material.dart';
import 'package:smunity/events.dart';

import 'login.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white),
      home: Scaffold(
        appBar: AppBar(
          leading: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainWindow()));
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          title: Center(
              child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xfff0e0d1)),
            height: 40,
            width: MediaQuery.of(context).size.width * 0.80,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search Smunity",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffFFF5EF), width: 0),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          )),
          actions: [
            Icon(Icons.pin_drop_sharp),
          ],
        ),
      ),
    );
  }
}
