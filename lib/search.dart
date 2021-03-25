import 'package:flutter/material.dart';

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
          leading: Icon(Icons.arrow_back),
          title: Center(
              child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blueGrey[100]),
            height: 40,
            width: MediaQuery.of(context).size.width * 0.80,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search Smunity",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey[100], width: 0),
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
