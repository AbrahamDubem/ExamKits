import 'package:examsss/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'WelcomePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void InitState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome()async{
    await Future.delayed(Duration(seconds:4),);
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>WelcomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/examkit.jpg", height: 130,),
            const SizedBox(height: 30,),
            CircularProgressIndicator(
              color: Colors.white,
            )
          ],
        )
      ),
    );
  }
}
