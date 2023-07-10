import 'package:flutter/material.dart';
import 'colors.dart' as color;


class Themes{
  static final light= ThemeData(
  primaryColor: color.AppColor.secondPageContainerGradient1stColor,
  brightness: Brightness.light,
  );

static final dark= ThemeData(
  primaryColor:  color.AppColor.darkGreyClr,
  brightness: Brightness.dark,
  );
}
