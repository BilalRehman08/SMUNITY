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
                    eventBox(
                        context,
                        "Road Map to flutter",
                        "DSC UIT",
                        "28-oct-2020",
                        "6 to 8pm",
                        'https://media-exp1.licdn.com/dms/image/C4D0BAQEdDJGjAnTcdg/company-logo_200_200/0/1601506756802?e=1625097600&v=beta&t=dSKLSpEr_uhg8GEAF7aNbez1_5tvGZ9MpK45lT3T250'),
                    SizedBox(
                      height: 15,
                    ),
                    eventBox(
                        context,
                        "Intro to Data Science",
                        "DSC Comsats",
                        "12-nov-2020",
                        "8 to 10pm",
                        'https://media-exp1.licdn.com/dms/image/C4D0BAQEyQoKUpy_F4A/company-logo_200_200/0/1604150099085?e=2159024400&v=beta&t=JCB-khook0gh4WY-NhNv8vcptf35VQAIuMryPha1Ne0'),
                    SizedBox(
                      height: 15,
                    ),
                    eventBox(
                        context,
                        "Crash Course on TensorFlow",
                        "DSC Nust",
                        "15-dec-2020",
                        "2 to 4pm",
                        'https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_1080,q_100,w_1080/v1/gcs/platform-data-dsc/chapter_banners/DSC-NUST-logo.png'),
                    SizedBox(
                      height: 15,
                    ),
                    eventBox(
                        context,
                        "30 days of Artificial Intelligence",
                        "DSC Fast",
                        "1-jan-2021",
                        "7 to 9pm",
                        'https://www.gstatic.com/devrel-devsite/prod/vb236d130287e88277e2577fd354175933f40167baa8c8ed416d2ac3ecfb27ab2/developers/images/touchicon-180.png'),
                    SizedBox(
                      height: 15,
                    ),
                    eventBox(
                        context,
                        "Road Map to Machine Learning",
                        "DSC UIT",
                        "12-march-2021",
                        "6 to 8pm",
                        'https://media-exp1.licdn.com/dms/image/C4D0BAQEdDJGjAnTcdg/company-logo_200_200/0/1601506756802?e=1625097600&v=beta&t=dSKLSpEr_uhg8GEAF7aNbez1_5tvGZ9MpK45lT3T250'),
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
      ),
    );
  }
}

Widget eventBox(context, String title, String texttt, String datee,
    String timeee, String imagee) {
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
                      texttt,
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
                              datee,
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              timeee,
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
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(50)),
                  padding: EdgeInsets.all(2),
                  height: MediaQuery.of(context).size.height * 0.16,
                  width: MediaQuery.of(context).size.width * 0.25,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(imagee),
                    backgroundColor: Colors.transparent,
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
