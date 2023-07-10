import 'package:examsss/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: w,
            height: h * 0.3,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/education.jpg"),
              fit: BoxFit.cover,
            )),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello! Welcome..",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,

                  ),
                ),
                Text(
                  "Create your account",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.deepPurpleAccent,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 50,
                          spreadRadius: 10,
                          offset: Offset(1, 1),
                          color: Colors.grey.withOpacity(0.1),
                        )
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Email",
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.deepPurpleAccent,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1.0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1.0,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 50,
                          spreadRadius: 10,
                          offset: Offset(1, 1),
                          color: Colors.grey.withOpacity(0.1),
                        )
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: Icon(
                          Icons.password_outlined,
                          color: Colors.deepPurpleAccent,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1.0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1.0,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(),
                    ),
                    Text(
                      "forgot your password",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.deepPurpleAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: () {
              Get.to(() => HomePage());
            },
            child: Container(
              width: w * 0.5,
              height: h * 0.08,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage("assets/images/card1.jpeg"),
                    //fit: BoxFit.cover,
                  )),
              child: Center(
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          InkWell(
            onTap: () {
              Get.to(() => HomePage());
            },
            child: RichText(
              text: TextSpan(
                text: "Go Back",
                style: TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontSize: 20,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
