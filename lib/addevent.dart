import 'package:flutter/material.dart';
import 'package:smunity/tagline.dart';

class AddEvent extends StatefulWidget {
  @override
  _AddEventState createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 160,
                width: MediaQuery.of(context).size.width * 1,
                color: Color(0xfff7e1c1),
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      child: CircleAvatar(
                        radius: 35.0,
                        backgroundImage: NetworkImage(
                            'https://media-exp1.licdn.com/dms/image/C4D0BAQEdDJGjAnTcdg/company-logo_200_200/0/1601506756802?e=1625097600&v=beta&t=dSKLSpEr_uhg8GEAF7aNbez1_5tvGZ9MpK45lT3T250'),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "DSC UIT",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
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
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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
                      "Team",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                child: CircleAvatar(
                                  radius: 25.0,
                                  backgroundImage: NetworkImage(
                                      'https://media-exp1.licdn.com/dms/image/C4D03AQGHOAmEAY2VIQ/profile-displayphoto-shrink_200_200/0/1608161214297?e=1622678400&v=beta&t=6kPCK11aCTnQKk-hhHbqzgxNl6d_0ZgScwBUetl7BxE'),
                                  backgroundColor: Colors.transparent,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Raheel Siddiqui"),
                              Text("DSC Lead"),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                child: CircleAvatar(
                                  radius: 25.0,
                                  backgroundImage: NetworkImage(
                                      'https://media-exp1.licdn.com/dms/image/C5103AQG6mIdAMBiEEg/profile-displayphoto-shrink_200_200/0/1546096893013?e=1622678400&v=beta&t=Zw0sKHGNTNoM2oZeLcLPCTJyToLakBlPsl5rwX9IDLk'),
                                  backgroundColor: Colors.transparent,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Bilal Rehman"),
                              Text("Development Lead"),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                child: CircleAvatar(
                                  radius: 25.0,
                                  backgroundImage: NetworkImage(
                                      'https://media-exp1.licdn.com/dms/image/C4D35AQGDwgj-wv5lRA/profile-framedphoto-shrink_200_200/0/1595619622476?e=1617296400&v=beta&t=EpUu4TY0X2P3IYQKXJt14ABtl1YjOEILtbFEatR9il4'),
                                  backgroundColor: Colors.transparent,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Syed Bilal"),
                              Text("Development Lead"),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Tagline()));
          },
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
