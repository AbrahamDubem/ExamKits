import 'package:flutter/material.dart';

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    super.key,
    required this.color,
    required this.title,
    required this.Icon,
    required this.onPress,
    this.endIcon = true,
    this.textColor,
  });

  final color;
  final String title;
  final IconData Icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {

    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;


    return ListTile(
      onTap: onPress,
      leading: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.grey.withOpacity(0.1),
        ),
      ),
      title: Text(
        "My Account",
        style: Theme.of(context).textTheme.bodyText1?.apply(color: textColor),
      ),
      trailing: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: color.AppColor.darkGreyClr.withOpacity(0.1),
        ),
      ),
    );
  }
}