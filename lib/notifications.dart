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
        ),
        body: Container(
          child: ListView(
            children: [
              noti(
                  context,
                  'https://media-exp1.licdn.com/dms/image/C4D0BAQEdDJGjAnTcdg/company-logo_200_200/0/1601506756802?e=1625097600&v=beta&t=dSKLSpEr_uhg8GEAF7aNbez1_5tvGZ9MpK45lT3T250',
                  "Developer Student Club Uit added an event about flutter"),
              SizedBox(
                height: 10,
              ),
              noti(
                  context,
                  'https://www.gstatic.com/devrel-devsite/prod/vb236d130287e88277e2577fd354175933f40167baa8c8ed416d2ac3ecfb27ab2/developers/images/touchicon-180.png',
                  "GDG Kolachi added an event about tensorflow "),
              noti(
                  context,
                  'https://media-exp1.licdn.com/dms/image/C4D0BAQEyQoKUpy_F4A/company-logo_200_200/0/1604150099085?e=2159024400&v=beta&t=JCB-khook0gh4WY-NhNv8vcptf35VQAIuMryPha1Ne0',
                  "Developer Student Club Comsats added an event about python"),
              SizedBox(
                height: 10,
              ),
              noti(
                  context,
                  'https://www.gstatic.com/devrel-devsite/prod/vb236d130287e88277e2577fd354175933f40167baa8c8ed416d2ac3ecfb27ab2/developers/images/touchicon-180.png',
                  "GDG Kolachi added an event about Machine Learning"),
              SizedBox(
                height: 10,
              ),
              noti(
                  context,
                  'https://media-exp1.licdn.com/dms/image/C4D0BAQEdDJGjAnTcdg/company-logo_200_200/0/1601506756802?e=1625097600&v=beta&t=dSKLSpEr_uhg8GEAF7aNbez1_5tvGZ9MpK45lT3T250',
                  "Developer Student Club Comsats added an event about web development"),
              SizedBox(
                height: 10,
              ),
              noti(
                  context,
                  'https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_1080,q_100,w_1080/v1/gcs/platform-data-dsc/chapter_banners/DSC-NUST-logo.png',
                  "Developer Student Club Comsats added an event about flutter"),
              SizedBox(
                height: 10,
              ),
              noti(
                  context,
                  'https://media-exp1.licdn.com/dms/image/C4D0BAQEdDJGjAnTcdg/company-logo_200_200/0/1601506756802?e=1625097600&v=beta&t=dSKLSpEr_uhg8GEAF7aNbez1_5tvGZ9MpK45lT3T250',
                  "Developer Student Club Nust added an event about data science"),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              noti(
                  context,
                  'https://www.gstatic.com/devrel-devsite/prod/vb236d130287e88277e2577fd354175933f40167baa8c8ed416d2ac3ecfb27ab2/developers/images/touchicon-180.png',
                  "GDG Kolachi added an event about Data Structure"),
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
