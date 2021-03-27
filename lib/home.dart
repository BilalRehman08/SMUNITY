import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xfff7e1c1),
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.search, size: 35, color: Colors.black),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.mail_sharp,
                    size: 35,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.calendar_today, size: 35, color: Colors.black),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.notifications, size: 35, color: Colors.black),
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
        backgroundColor: Color(0xfff7e1c1),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                carddd(context),
                SizedBox(
                  height: 15,
                ),
                carddd(context),
              ],
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
      ),
    );
  }
}

Widget carddd(context) {
  return Center(
    child: Container(
      height: MediaQuery.of(context).size.height * 0.35,
      width: MediaQuery.of(context).size.width * 0.90,
      padding: EdgeInsets.only(top: 20.0, right: 30, left: 30, bottom: 20),
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
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20))),
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
  );
}
