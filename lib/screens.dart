import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'login.dart';





class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "SETTINGS",
          style: TextStyle(
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: [
          Icon(Icons.close),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.95,
                color: Color(0xffFFF5EF),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Interests",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w400),
                      ),
                      Row(
                        children: [
                          Text(
                            "12",
                            style: TextStyle(fontSize: 22, color: Colors.grey),
                          ),
                          Icon(
                            Icons.arrow_right,
                            color: Colors.grey,
                            size: 30,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.38,
                width: MediaQuery.of(context).size.width * 0.95,
                padding:
                    EdgeInsets.only(top: 20, bottom: 20, right: 10, left: 10),
                color: Color(0xffFFF5EF),
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "What's New",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w400),
                          ),
                          Icon(
                            Icons.arrow_right,
                            color: Colors.grey,
                            size: 30,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "FAQ / Contact Us",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w400),
                          ),
                          Icon(
                            Icons.arrow_right,
                            color: Colors.grey,
                            size: 30,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Community Guidline",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w400),
                          ),
                          Icon(
                            Icons.arrow_right,
                            color: Colors.grey,
                            size: 30,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Terms of Service",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w400),
                          ),
                          Icon(
                            Icons.arrow_right,
                            color: Colors.grey,
                            size: 30,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Privacy Policy",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w400),
                          ),
                          Icon(
                            Icons.arrow_right,
                            color: Colors.grey,
                            size: 30,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FinalScreen())),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.95,
                  color: Color(0xffFFF5EF),
                  alignment: Alignment.center,
                  child: Text(
                    "Log out",
                    style: TextStyle(color: Colors.red, fontSize: 18),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Version 0.1",
                style: TextStyle(fontSize: 13),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FinalScreen extends StatefulWidget {
  @override
  _FinalScreenState createState() => _FinalScreenState();
}

class _FinalScreenState extends State<FinalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffFFF5EF),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.search, size: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.mail_sharp, size: 35),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.calendar_today, size: 35),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.notifications, size: 35),
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                      "https://cdn.pixabay.com/photo/2015/03/03/20/42/man-657869_960_720.jpg"),
                )
              ],
            )
          ],
        ),
      ),
      backgroundColor: Color(0xffFFF5EF),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.25,
            width: MediaQuery.of(context).size.width * 0.95,
            padding:
                EdgeInsets.only(top: 20.0, right: 30, left: 30, bottom: 20),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "ALL DAY DREAMING",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    Icon(
                      Icons.home,
                      color: Colors.green,
                    )
                  ],
                ),
                Flexible(
                    child: Text(
                        "AllDayDreamingRadio: CoDreaming ProductiveBeats 😎💪😍💋🎧",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 20))),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          "https://cdn.pixabay.com/photo/2015/03/03/20/42/man-657869_960_720.jpg"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Text(
                          "hyla 💬",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "147 👦 / 1 💬",
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("              "),
          ConstrainedBox(
            constraints: BoxConstraints.tightFor(height: 50),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                onPressed: () {},
                child: Text(
                  "+ Start a room",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
          ),
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Icon(
                Icons.menu,
                size: 35,
              ),
              CircleAvatar(
                radius: 5,
                backgroundColor: Colors.green,
              ),
            ],
          )
        ],
      ),
    );
  }
}
