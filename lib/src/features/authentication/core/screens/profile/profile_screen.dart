import 'package:examsss/src/features/authentication/core/screens/profile/update_profile_screen.dart';
import 'package:examsss/src/features/authentication/core/screens/profile/widgets/profile_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var color;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {}, icon: Icon(Icons.arrow_circle_left_outlined)),
        title: Text('Profile', style: Theme.of(context).textTheme.headline4),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: const Image(
                        image: AssetImage("assets/images/examkit.jpg"),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: color.AppColor.darkGreyClr.withOpacity(0.1),
                      ),
                      child: const Icon(Icons.person, color: Colors.black26, size: 20,),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text("Hello Student",
                  style: Theme.of(context).textTheme.headline4),
              Text("yourname@gmail.com",
                  style: Theme.of(context).textTheme.bodyText2),
              SizedBox(height: 20),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => UpdateProfileScreen());
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: color.AppColor.gradientSecond,
                      side: BorderSide.none,
                      shape: const StadiumBorder()),
                  child: Text("Edit Profile",
                      style: TextStyle(color: color.AppColor.darkGreyClr)),
                ),
              ),
              SizedBox(height: 30),
              const Divider(),
              const SizedBox(height: 10),
              ProfileMenuWidget(
                  color: color,
                  title: 'Setting',
                  Icon: (Icons.settings),
                  onPress: () {}),
              const SizedBox(height: 10),
              ProfileMenuWidget(
                  color: color,
                  title: 'Billing Details',
                  Icon: (Icons.wallet),
                  onPress: () {}),
              const SizedBox(height: 10),
              ProfileMenuWidget(
                  color: color,
                  title: 'User Management',
                  Icon: (Icons.verified_user),
                  onPress: () {}),
              const Divider(),
              SizedBox(height: 10),
              ProfileMenuWidget(
                  color: color,
                  title: 'Information',
                  Icon: (Icons.info),
                  onPress: () {}),
              ProfileMenuWidget(
                  color: color,
                  title: 'Log Out',
                  Icon: (Icons.login_outlined),
                  textColor: Colors.red,
                  endIcon: false,
                  onPress: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
