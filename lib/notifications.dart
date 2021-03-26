import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Notifications",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            Icon(
              Icons.search,
              size: 30,
            )
          ],
        ),
        body: Container(
          child: ListView(
            children: [
              noti(
                  context,
                  'https://www.pngitem.com/pimgs/m/391-3918613_personal-service-platform-person-icon-circle-png-transparent.png',
                  "Bilal Rehman commented on your photo"),
              SizedBox(
                height: 10,
              ),
              noti(
                  context,
                  'https://www.pngitem.com/pimgs/m/391-3918613_personal-service-platform-person-icon-circle-png-transparent.png',
                  "Bilal Rehman commented on your photo"),
              SizedBox(
                height: 10,
              ),
              noti(
                  context,
                  'https://www.pngitem.com/pimgs/m/391-3918613_personal-service-platform-person-icon-circle-png-transparent.png',
                  "Bilal Rehman commented on your photo"),
              SizedBox(
                height: 10,
              ),
              noti(
                  context,
                  'https://www.pngitem.com/pimgs/m/391-3918613_personal-service-platform-person-icon-circle-png-transparent.png',
                  "Bilal Rehman commented on your photo"),
              SizedBox(
                height: 10,
              ),
              noti(
                  context,
                  'https://www.pngitem.com/pimgs/m/391-3918613_personal-service-platform-person-icon-circle-png-transparent.png',
                  "Bilal Rehman commented on your photo"),
              SizedBox(
                height: 10,
              ),
              noti(
                  context,
                  'https://www.pngitem.com/pimgs/m/391-3918613_personal-service-platform-person-icon-circle-png-transparent.png',
                  "Bilal Rehman commented on your photo"),
              SizedBox(
                height: 10,
              ),
              noti(
                  context,
                  'https://www.pngitem.com/pimgs/m/391-3918613_personal-service-platform-person-icon-circle-png-transparent.png',
                  "Bilal Rehman commented on your photo"),
              SizedBox(
                height: 10,
              ),
              noti(
                  context,
                  'https://www.pngitem.com/pimgs/m/391-3918613_personal-service-platform-person-icon-circle-png-transparent.png',
                  "Bilal Rehman commented on your photo"),
              SizedBox(
                height: 10,
              ),
              noti(
                  context,
                  'https://www.pngitem.com/pimgs/m/391-3918613_personal-service-platform-person-icon-circle-png-transparent.png',
                  "Bilal Rehman commented on your photo"),
              SizedBox(
                height: 10,
              ),
              noti(
                  context,
                  'https://www.pngitem.com/pimgs/m/391-3918613_personal-service-platform-person-icon-circle-png-transparent.png',
                  "Bilal Rehman commented on your photo"),
              SizedBox(
                height: 10,
              ),
              noti(
                  context,
                  'https://www.pngitem.com/pimgs/m/391-3918613_personal-service-platform-person-icon-circle-png-transparent.png',
                  "Bilal Rehman commented on your photo"),
              SizedBox(
                height: 10,
              ),
              noti(
                  context,
                  'https://www.pngitem.com/pimgs/m/391-3918613_personal-service-platform-person-icon-circle-png-transparent.png',
                  "Bilal Rehman commented on your photo"),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget noti(context, String community, String texttt) {
  return Container(
    height: 80,
    width: MediaQuery.of(context).size.width * 1,
    color: Color(0xfff0e0d1),
    child: Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(community),
            backgroundColor: Colors.transparent,
          ),
          SizedBox(
            width: 20,
          ),
          Flexible(
              child: Text(
            texttt,
          ))
        ],
      ),
    ),
  );
}
