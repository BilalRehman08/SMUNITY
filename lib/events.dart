import 'package:flutter/material.dart';
import 'package:smunity/api.dart';
import 'package:smunity/events_model.dart';
import 'package:smunity/search.dart';
import 'package:smunity/settings.dart';

import 'eventdetails.dart';

class MainWindow extends StatefulWidget {
  @override
  _MainWindowState createState() => _MainWindowState();
}

class _MainWindowState extends State<MainWindow> {
  Future<EventsModel> abc;

  @override
  void initState() {
    super.initState();
    abc = fetchAlbum();
    print(abc);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Smunity",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Search()));
                  },
                  child: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 30,
                  )),
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FutureBuilder<EventsModel>(
            future: abc,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    eventBox(context, "${snapshot.data.title}"),
                    SizedBox(
                      height: 15,
                    ),
                    eventBox(context, "${snapshot.data.title}"),
                    SizedBox(
                      height: 15,
                    ),
                    eventBox(context, "${snapshot.data.title}"),
                    SizedBox(
                      height: 15,
                    ),
                    eventBox(context, "${snapshot.data.title}"),
                    SizedBox(
                      height: 15,
                    ),
                    eventBox(context, "${snapshot.data.title}"),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                );
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

              return Text(" ");
            },
          ),
        )),
        bottomNavigationBar: Container(
          height: 50,
          color: Colors.grey[900],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.home,
                color: Color(0xfffb8437),
              ),
              Icon(Icons.notifications, color: Colors.white),
              Icon(Icons.menu, color: Colors.white)
            ],
          ),
        ),
      ),
    );
  }
}

Widget eventBox(context, String title) {
  return Center(
    child: Container(
      height: MediaQuery.of(context).size.height * 0.18,
      width: MediaQuery.of(context).size.width * 0.85,
      child: Material(
        borderRadius: BorderRadius.circular(30),
        elevation: 5,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.18,
          width: MediaQuery.of(context).size.width * 0.85,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color(0xfff0e0d1)),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "DSC UIT",
                      style: TextStyle(fontSize: 15, color: Colors.orange),
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Oct-19th-2020",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "(7:00 pm to 8:00 pm)",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ConstrainedBox(
                          constraints:
                              BoxConstraints.tightFor(width: 80, height: 40),
                          child: ElevatedButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EventDetails())),
                            child: Text(
                              "Attend",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30))),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(2),
                  height: MediaQuery.of(context).size.height * 0.16,
                  width: MediaQuery.of(context).size.width * 0.25,
                  child: Image.asset(
                    'images/bg.jpeg',
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
