import 'package:flutter/material.dart';
import 'package:smunity/search.dart';

class Interest extends StatefulWidget {
  @override
  _InterestState createState() => _InterestState();
}

class _InterestState extends State<Interest> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white),
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          title: Center(
            child: Text(
              "INTERESTS",
            ),
          ),
          actions: [Text("             ")],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                "Add your interest so we can begin",
                style: TextStyle(fontSize: 12),
              ),
            ),
            Center(
              child: Text(
                "to personalize sessions for you",
                style: TextStyle(fontSize: 12),
              ),
            ),
            Center(
              child: Text(
                "Interest are private to you",
                style: TextStyle(fontSize: 12),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buttons("Tech"),
                  buttons("Arts"),
                  buttons("Education"),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buttons("Tech"),
                  buttons("Arts"),
                  buttons("Education"),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buttons("Tech"),
                  buttons("Arts"),
                  buttons("Education"),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buttons("Tech"),
                  buttons("Arts"),
                  buttons("Education"),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
                height: 40.0,
                width: 140,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Search()));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    primary: Colors.black,
                  ),
                  child: Text('SUBMIT', style: TextStyle(color: Colors.white)),
                )),
          ],
        ),
      ),
    );
  }
}

Widget buttons(String name) {
  return Container(
      height: 38.0,
      width: 100,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          primary: Colors.black,
        ),
        child: Text(name, style: TextStyle(color: Colors.white)),
      ));
}
