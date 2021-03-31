import 'package:flutter/material.dart';
import 'package:smunity/events.dart';
import 'package:smunity/interest.dart';
import 'package:smunity/notifications.dart';

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentTab = 0;
  final List<Widget> screen = [
    MainWindow(),
    Interest(),
    Interest(),
  ];

  Widget CurrentScreen = MainWindow();

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        child: PageStorage(bucket: bucket, child: CurrentScreen),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.only(left: 0.0, right: 0.0),
          child: Container(
              color: Color(0xff393939),
              height: 60,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: MaterialButton(
                        minWidth: 50,
                        onPressed: () {
                          setState(() {
                            CurrentScreen = MainWindow();
                            currentTab = 0;
                          });
                        },
                        child: Icon(Icons.home,
                            size: 32,
                            color: currentTab == 0
                                ? Color(0xfffdbb91)
                                : Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: MaterialButton(
                        minWidth: 60,
                        onPressed: () {
                          setState(() {
                            CurrentScreen = Notifications();
                            currentTab = 1;
                          });
                        },
                        child: Icon(Icons.notifications,
                            size: 32,
                            color: currentTab == 1
                                ? Color(0xfffdbb91)
                                : Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: MaterialButton(
                        minWidth: 60,
                        onPressed: () {
                          setState(() {
                            CurrentScreen = Notifications();
                            currentTab = 2;
                          });
                        },
                        child: Icon(Icons.menu,
                            size: 32,
                            color: currentTab == 2
                                ? Color(0xfffdbb91)
                                : Colors.white),
                      ),
                    ),
                  ])),
        ),
      ),
    );
  }
}
