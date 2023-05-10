// ignore_for_file: unnecessary_import, prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:joy_cu/screens/Splash.dart';
import 'package:joy_cu/screens/beginPage.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  var email = _prefs.getString('E');
  var password =  _prefs.getString('P');
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarIconBrightness: Brightness.light,
    statusBarColor: Colors.black
  ));
  runApp(
     const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'Roman'),
      debugShowCheckedModeBanner: false,
      title: 'Joy Box',

      // theme: ThemeData.light(),
      home: const Splash(),
    );
  }
}
