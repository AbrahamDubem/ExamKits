import 'dart:convert';
import 'package:examsss/WelcomePage.dart';
import 'package:examsss/secondPage.dart';
import 'package:examsss/setting.dart';
import 'package:examsss/signUp.dart';
import 'package:examsss/src/features/authentication/core/screens/profile/profile_screen.dart';
import 'package:examsss/src/features/repository/authentication_repository/authentication_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'colors.dart' as color;
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List images = [
    "airforce.jpg",
    "jamb.png",
    "poly.png",
  ];

  List info = [];
  _initData() {
    DefaultAssetBundle.of(context).loadString("json/info.json").then((value) {
      info = json.decode(value);
    });
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      body: Container(
        padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "EXAMKITS",
                  style: TextStyle(
                    fontSize: 30,
                    color: color.AppColor.homePageTitle,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Expanded(child: Container()),
                InkWell(
                  onTap: () {
                    Get.to(() => LoginPage());
                  },
                  child: Icon(
                    Icons.person_add,
                    size: 25,
                    color: color.AppColor.homePageIcon,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => ProfileScreen());
                  },
                  child: Icon(
                    Icons.settings,
                    size: 25,
                    color: color.AppColor.homePageIcon,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    AuthenticationRepository.instance.logout();
                  },
                  child: Icon(
                    Icons.exit_to_app,
                    size: 20,
                    color: color.AppColor.homePageIcon,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(children: [
              Text(
                "Our Programs",
                style: TextStyle(
                  fontSize: 20,
                  color: color.AppColor.homePageSubtitle,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Expanded(child: Container()),
              Text(
                "Details",
                style: TextStyle(
                  fontSize: 20,
                  color: color.AppColor.homePageDetail,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              InkWell(
                onTap: () {
                  Get.to(() => SecondPage());
                },
                child: Icon(Icons.arrow_forward,
                    size: 20, color: color.AppColor.homePageIcon),
              ),
            ]),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 180,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      color.AppColor.gradientFirst.withOpacity(0.9),
                      color.AppColor.gradientSecond.withOpacity(0.9),
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(80),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(10, 10),
                      blurRadius: 20,
                      color: color.AppColor.gradientSecond.withOpacity(0.2),
                    )
                  ]),
              child: Container(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 25,
                  right: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Start learning",
                      style: TextStyle(
                        fontSize: 16,
                        color: color.AppColor.homePageContainerTextSmall,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Educational information",
                      style: TextStyle(
                        fontSize: 20,
                        color: color.AppColor.homePageContainerTextSmall,
                      ),
                    ),
                    Text(
                      "all around the world",
                      style: TextStyle(
                        fontSize: 20,
                        color: color.AppColor.homePageContainerTextSmall,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.computer_outlined,
                              size: 20,
                              color: color.AppColor.homePageContainerTextSmall,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "we are online!",
                              style: TextStyle(
                                fontSize: 15,
                                color:
                                    color.AppColor.homePageContainerTextSmall,
                              ),
                            ),
                          ],
                        ),
                        Expanded(child: Container()),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              boxShadow: [
                                BoxShadow(
                                  color: color.AppColor.gradientFirst,
                                  blurRadius: 50,
                                  offset: Offset(4, 8),
                                )
                              ]),
                          child: Icon(
                            Icons.read_more,
                            color: Colors.white,
                            size: 60,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 140,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(top: 200, bottom: 30),
                    height: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/card1.png",
                          ),
                          fit: BoxFit.fill,
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 40,
                            offset: Offset(
                              8,
                              10,
                            ),
                            color:
                                color.AppColor.gradientSecond.withOpacity(0.3),
                          ),
                          BoxShadow(
                            blurRadius: 10,
                            offset: Offset(
                              -1,
                              -5,
                            ),
                            color:
                                color.AppColor.gradientSecond.withOpacity(0.9),
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 180,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(right: 180, bottom: 10),
                    decoration: BoxDecoration(
                      // color: Colors.redAccent.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage(
                          "assets/images/grad.jpg",
                        ),
                        //fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    height: 100,
                    margin: const EdgeInsets.only(
                      left: 150,
                      top: 50,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Scholarships!",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: color.AppColor.homePageDetail,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RichText(
                            text: TextSpan(
                                text: "Current Scholarships\n",
                                style: TextStyle(
                                  color: color.AppColor.homePagePlanColor,
                                  fontSize: 16,
                                ),
                                children: [TextSpan(text: "view more...")]))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Row(
              children: [
                Text("Area of focus",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: color.AppColor.homePageTitle,
                    ))
              ],
            ),
            Expanded(
                child: OverflowBox(
              maxWidth: MediaQuery.of(context).size.width,
              child: OverflowBox(
                maxWidth: MediaQuery.of(context).size.width,
                child: MediaQuery.removePadding(
                  removeTop: true,
                  context: context,
                  child: ListView(children: [
                    StreamBuilder(
                      //stream: FirebaseException.,
                      builder: (context, snapshot) {
                        if (!snapshot.hasData) return const Text('Loading...');
                        return ListView.builder(
                            itemCount: info.length,
                            itemBuilder: (_, i) {
                              return Row(
                                children: [
                                  Container(
                                    height: 170,
                                    margin: EdgeInsets.only(
                                      left: 30,
                                      bottom: 15,
                                      top: 15,
                                    ),
                                    width: (MediaQuery.of(context).size.width -
                                            90) /
                                        2,
                                    padding: EdgeInsets.only(bottom: 5),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                            image: AssetImage(info[i]['img'])),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 3,
                                            offset: Offset(5, 5),
                                            color: color.AppColor.gradientSecond
                                                .withOpacity(0.2),
                                          ),
                                          BoxShadow(
                                            blurRadius: 3,
                                            offset: Offset(-5, -5),
                                            color: color.AppColor.gradientSecond
                                                .withOpacity(0.2),
                                          ),
                                        ]),
                                    child: Center(
                                        child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        info[i]['title'],
                                        style: TextStyle(
                                          fontSize: 20,
                                          color:
                                              color.AppColor.homePageBackground,
                                        ),
                                      ),
                                    )),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                    width: 95,
                                    height: 100,
                                    margin: const EdgeInsets.only(
                                        right: 90, top: 80, left: 0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          info[i]['title'],
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                color.AppColor.homePageDetail,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        RichText(
                                            text: TextSpan(
                                                text: "Click here to\n",
                                                style: TextStyle(
                                                  color: color.AppColor
                                                      .homePagePlanColor,
                                                  fontSize: 10,
                                                ),
                                                children: [
                                              TextSpan(text: "view more...")
                                            ]))
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            });
                      },
                    ),
                  ]),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
