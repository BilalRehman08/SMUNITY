import 'package:flutter/material.dart';

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
          actions: [Icon(Icons.settings)],
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
                              'https://www.pngitem.com/pimgs/m/391-3918613_personal-service-platform-person-icon-circle-png-transparent.png'),
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
                    Material(
                      borderRadius: BorderRadius.circular(30),
                      elevation: 10,
                      color: Colors.blue,
                      child: Container(
                        height: 75,
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(30),
                      elevation: 10,
                      color: Colors.blue,
                      child: Container(
                        height: 75,
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    )
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 40.0,
                      backgroundImage: NetworkImage(
                          'https://www.pngitem.com/pimgs/m/391-3918613_personal-service-platform-person-icon-circle-png-transparent.png'),
                      backgroundColor: Colors.transparent,
                    ),
                    CircleAvatar(
                      radius: 40.0,
                      backgroundImage: NetworkImage(
                          'https://www.pngitem.com/pimgs/m/391-3918613_personal-service-platform-person-icon-circle-png-transparent.png'),
                      backgroundColor: Colors.transparent,
                    ),
                    CircleAvatar(
                      radius: 40.0,
                      backgroundImage: NetworkImage(
                          'https://www.pngitem.com/pimgs/m/391-3918613_personal-service-platform-person-icon-circle-png-transparent.png'),
                      backgroundColor: Colors.transparent,
                    ),
                    CircleAvatar(
                      radius: 40.0,
                      backgroundImage: NetworkImage(
                          'https://www.pngitem.com/pimgs/m/391-3918613_personal-service-platform-person-icon-circle-png-transparent.png'),
                      backgroundColor: Colors.transparent,
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
