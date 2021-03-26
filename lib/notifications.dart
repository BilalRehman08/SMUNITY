import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: ListView(
            children: [
              noti(context),
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

Widget noti(context) {
  return Container(
    height: 100,
    width: MediaQuery.of(context).size.width * 1,
    color: Colors.blue,
  );
}
