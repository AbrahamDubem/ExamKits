import 'package:examsss/SignIn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     double w =MediaQuery.of(context).size.width;
    double h =MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: w,
            height: h*0.3,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      "assets/images/education.jpg"
                  ),
                  fit: BoxFit.cover,
                )
            ),
            child: Column(
              children: [
                SizedBox(height: h*0.18,),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 40,
                  backgroundImage: AssetImage(
                      "assets/images/cassy.jpg"
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 70,),
          Center(
            child: Container(
              width: w,
              margin: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome!",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color:Colors.black54,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "info@starnetinnovation.com",
                    style: TextStyle(
                      fontSize: 25,
                      color:Colors.black54,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Welcome to ExamKits."
                        " I can tell all you need to know about Education within and outside the Country.",
                    style: TextStyle(
                      fontSize: 25,
                      color:Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 200,),
          Container(
            width: w*0.9,
            height: h*0.09,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      "assets/images/card1.jpeg"
                  ),
                  fit: BoxFit.cover,
                )
            ),
            child:  InkWell(
              onTap:(){
                Get.to(()=>SignInPage());
              },
              child: const Center(
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color:Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );;
  }
}
