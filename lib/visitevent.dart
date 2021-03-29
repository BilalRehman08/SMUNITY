import 'package:flutter/material.dart';

class VisitEvent extends StatefulWidget {
  @override
  _VisitEventState createState() => _VisitEventState();
}

class _VisitEventState extends State<VisitEvent> {
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
                            'https://www.pngitem.com/pimgs/m/391-3918613_personal-service-platform-person-icon-circle-png-transparent.png'),
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
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,",
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
                                      'https://www.pngitem.com/pimgs/m/391-3918613_personal-service-platform-person-icon-circle-png-transparent.png'),
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
                                      'https://www.pngitem.com/pimgs/m/391-3918613_personal-service-platform-person-icon-circle-png-transparent.png'),
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
                                      'https://www.pngitem.com/pimgs/m/391-3918613_personal-service-platform-person-icon-circle-png-transparent.png'),
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
          onPressed: () {},
          child: Icon(
            Icons.check,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
