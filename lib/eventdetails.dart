import 'package:flutter/material.dart';
import 'package:smunity/events.dart';
import 'package:smunity/settings.dart';

import 'eventpage.dart';
import 'login.dart';

class EventDetails extends StatefulWidget {
  @override
  _EventDetailsState createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: ElevatedButton(
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
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 160,
                width: MediaQuery.of(context).size.width * 1,
                color: Color(0xfff7e1c1),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: details(context),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      "About",
                      style: TextStyle(fontSize: 25),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Text(
                        "Helping students bridge the gap between theory and practice. DSC UIT is a university-based community group for students interested in Google developer technologies. DSC helps students to grow their knowledge in a learning environment & develop solutions.",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Speaker",
                      style: TextStyle(fontSize: 25),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      child: CircleAvatar(
                        radius: 35.0,
                        backgroundImage: NetworkImage(
                            'https://media-exp1.licdn.com/dms/image/C5103AQG6mIdAMBiEEg/profile-displayphoto-shrink_200_200/0/1546096893013?e=1622678400&v=beta&t=Zw0sKHGNTNoM2oZeLcLPCTJyToLakBlPsl5rwX9IDLk'),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    Text(
                      "Bilal Rehman",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Organizers",
                      style: TextStyle(fontSize: 25),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EventPage()));
                        },
                        child: CircleAvatar(
                          radius: 35.0,
                          backgroundImage: NetworkImage(
                              'https://media-exp1.licdn.com/dms/image/C4D0BAQEdDJGjAnTcdg/company-logo_200_200/0/1601506756802?e=1625097600&v=beta&t=dSKLSpEr_uhg8GEAF7aNbez1_5tvGZ9MpK45lT3T250'),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                    ),
                    Text(
                      "DSC UIT",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget details(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Road Map to flutter",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "(7:00 pm to 8:00 pm)",
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                  )
                ],
              ),
              SizedBox(
                width: 10,
              ),
              ConstrainedBox(
                constraints: BoxConstraints.tightFor(width: 80, height: 40),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Attend",
                    style: TextStyle(color: Colors.white, fontSize: 16),
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
        child: CircleAvatar(
          radius: 35.0,
          backgroundImage: NetworkImage(
              'https://codesource.io/wp-content/uploads/2019/12/Flutter-950x500.png'),
          backgroundColor: Colors.transparent,
        ),
      ),
    ],
  );
}
