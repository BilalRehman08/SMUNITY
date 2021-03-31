import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smunity/addcompany.dart';
import 'package:smunity/navigation.dart';
import 'package:smunity/signup.dart';

import 'events.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Icon(Icons.close),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60.0, left: 50, right: 50),
              child: Center(
                  child: Column(
                children: [
                  Text(
                    "Smunity",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Phone number, username or email",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forget Password",
                      style: TextStyle(color: Color(0xfffb8437)),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ConstrainedBox(
                    constraints:
                        BoxConstraints.tightFor(width: 200, height: 50),
                    child: ElevatedButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Navigation())),
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xFFFB8437),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                    ),
                  )
                ],
              )),
            ),
            SizedBox(
              height: 20,
            ),
            Row(children: <Widget>[
              Expanded(
                  child: Divider(
                thickness: 1,
                endIndent: 20,
              )),
              Text(
                "OR",
                style: TextStyle(color: Colors.grey),
              ),
              Expanded(
                  child: Divider(
                indent: 20,
                thickness: 1,
              )),
            ]),
            SizedBox(
              height: 20,
            ),
            Icon(
              FontAwesomeIcons.google,
              color: Color(0xfffb8437),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 40,
        decoration:
            BoxDecoration(border: Border(top: BorderSide(color: Colors.grey))),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account? "),
              InkWell(
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SignUp())),
                child: Text(
                  "Sign Up",
                  style: TextStyle(color: Color(0xfffb8437)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
