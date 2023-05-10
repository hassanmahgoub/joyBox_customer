import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    final ScreenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff010037),
      body: Container(
        height: ScreenSize.height,
        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(25))),
    );
  }
}
