import 'dart:convert';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "colors.dart" as color;


class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List info=[];
  _initData(){
    DefaultAssetBundle.of(context).loadString("json/info.json").then((value){
      info= json.decode(value);
    });
  }

  @override
  void initState(){
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                color.AppColor.gradientFirst.withOpacity(0.8),
                color.AppColor.gradientSecond,
              ],
              begin: const FractionalOffset(0.0, 0.4),
              end: Alignment.topRight,
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container( 
              padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Column(
                children: [
                  Row(
                children: [
                  InkWell(
                    onTap:(){
                      Get.back();
                      },
                      child: Icon(Icons.arrow_back_ios, size: 20, color:color.AppColor.secondPageIconColor,)),
                  Expanded(child: Container()),
                  Icon(Icons.info_outline, size: 20, color:color.AppColor.secondPageIconColor,)
                ],
                ),
                  SizedBox(height: 30,),
                  Text(
                    "Educational information",
                    style: TextStyle(
                      fontSize: 20,
                      color: color.AppColor.secondPageTitleColor,
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    "all around the world.",
                    style: TextStyle(
                      fontSize: 20,
                      color: color.AppColor.secondPageTitleColor,
                    ),
                  ),
                  SizedBox(height: 50),
                  Row(
                    children: [
                      Container(
                        width: 90,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                              color.AppColor.secondPageContainerGradient1stColor,
                              color.AppColor.secondPageContainerGradient2ndColor,
                            ],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                          )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.question_mark_outlined,
                            size: 20,
                            color:color.AppColor.secondPageIconColor,),
                            SizedBox(width: 5,),
                            Text(
                              "Ask it.",
                              style: TextStyle(
                                fontSize: 14,
                                color:color.AppColor.secondPageIconColor,
                              )
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              colors: [
                                color.AppColor.secondPageContainerGradient1stColor,
                                color.AppColor.secondPageContainerGradient2ndColor,
                              ],
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.camera_alt,
                              size: 20,
                              color:color.AppColor.secondPageIconColor,),
                            SizedBox(width: 3,),
                            Text(
                                "iReport",
                                style: TextStyle(
                                  fontSize: 14,
                                  color:color.AppColor.secondPageIconColor,
                                )
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              colors: [
                                color.AppColor.secondPageContainerGradient1stColor,
                                color.AppColor.secondPageContainerGradient2ndColor,
                              ],
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.house_rounded,
                              size: 20,
                              color:color.AppColor.secondPageIconColor,),
                            SizedBox(width: 5,),
                            Text(
                                "Study Center",
                                style: TextStyle(
                                  fontSize: 14,
                                  color:color.AppColor.secondPageIconColor,
                                )
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
    ),
          ),
            Expanded(child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(70),
                )
              ),
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      SizedBox(height: 30,),
                      Text(
                        "Current Articles..",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: color.AppColor.circuitsColor,
                        ),
                      ),
                      Expanded(child: Container()),
                      Row(
                        children: [
                          Icon(Icons.loop_outlined,size: 20, color: color.AppColor.loopColor),
                          SizedBox(width: 10),
                          Text(
                            "Refresh",
                            style: TextStyle(
                              fontSize: 15,
                              color: color.AppColor.setsColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 20,),
                      Text(
                        "EXAMKITS EDUCATION BOARD",
                        style: TextStyle(
                          fontSize: 15,
                          color: color.AppColor.setsColor,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ))
          ],
          ),
        ));
  }
}
