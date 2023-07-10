import 'package:examsss/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        children: [
          Text(
            "Setting",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }

  _appBar() {
    return AppBar(
      leading: GestureDetector(
        onTap: () {
          Get.to(() => Themes());
        },
        child: Icon(
          Icons.lightbulb_outline_rounded,
          size: 20,
        ),
      ),
      actions: [
        Icon(
          Icons.person,
          size: 20,
        ),
        SizedBox(
          width: 20,
        )
      ],
    );
  }
}
