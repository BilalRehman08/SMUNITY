import 'package:flutter/material.dart';
import 'package:smunity/addcompany.dart';
import 'package:smunity/settings.dart';
import 'package:smunity/visitevent.dart';
import 'package:smunity/website.dart';

import 'addevent.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white),
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          actions: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Settings()));
                },
                child: Icon(
                  Icons.settings,
                  color: Colors.black,
                  size: 30,
                )),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: CircleAvatar(
                          radius: 60.0,
                          backgroundImage: NetworkImage(
                              'https://media-exp1.licdn.com/dms/image/C5103AQG6mIdAMBiEEg/profile-displayphoto-shrink_200_200/0/1546096893013?e=1622678400&v=beta&t=Zw0sKHGNTNoM2oZeLcLPCTJyToLakBlPsl5rwX9IDLk'),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Bilal Rehman",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "@BilalRehman08",
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Software Engineer"),
                      Text("Flutter Developer"),
                      Text("Python Developer"),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                height: 10,
                color: Colors.black,
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 20,
                        primary: Color(0xfffdbb91),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Company()));
                      },
                      child: Container(
                        height: 75,
                        width: MediaQuery.of(context).size.width * 0.3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add_box_rounded,
                              size: 30,
                              color: Colors.black,
                            ),
                            Text(
                              "Smunity",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 20,
                        primary: Color(0xfffdbb91),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Website()));
                      },
                      child: Container(
                        height: 75,
                        width: MediaQuery.of(context).size.width * 0.3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add_box_rounded,
                              size: 30,
                              color: Colors.black,
                            ),
                            Text(
                              "Company",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Divider(
                height: 10,
                color: Colors.black,
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "Member Of",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30),
                  child: Container(
                    height: 80,
                    child: ListView(
                      // This next line does the trick.
                      scrollDirection: Axis.horizontal,

                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddEvent()));
                          },
                          child: CircleAvatar(
                            radius: 30.0,
                            backgroundImage: NetworkImage(
                                'https://media-exp1.licdn.com/dms/image/C4D0BAQEdDJGjAnTcdg/company-logo_200_200/0/1601506756802?e=1625097600&v=beta&t=dSKLSpEr_uhg8GEAF7aNbez1_5tvGZ9MpK45lT3T250'),
                            backgroundColor: Colors.transparent,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => VisitEvent()));
                          },
                          child: CircleAvatar(
                            radius: 30.0,
                            backgroundImage: NetworkImage(
                                'https://www.gstatic.com/devrel-devsite/prod/vb236d130287e88277e2577fd354175933f40167baa8c8ed416d2ac3ecfb27ab2/developers/images/touchicon-180.png'),
                            backgroundColor: Colors.transparent,
                          ),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
