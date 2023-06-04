// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final ScreenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff010037),
      body: Container(
          height: ScreenSize.height,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(25))),
    );
  }
}
