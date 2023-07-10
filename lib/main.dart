import 'package:examsss/secondPage.dart';
import 'package:examsss/setting.dart';
import 'package:examsss/signUp.dart';
import 'package:examsss/splashScreen.dart';
import 'package:examsss/src/features/repository/authentication_repository/authentication_repository.dart';
import 'package:examsss/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'Services/theme_services.dart';
import 'WelcomePage.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp().then((value) => Get.put(AuthenticationRepository()));
  await GetStorage.init();
  runApp(const MyApp());
}

class DefaultFirebaseOptions {}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: Themes.light,
        darkTheme: Themes.light,
        themeMode: ThemeServices().theme,
        home: WelcomePage());
  }
}
