// ignore_for_file: unnecessary_import, implementation_imports, unused_import, avoid_unnecessary_containers, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    final ScreenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff010037),
      body: Container(
        height: ScreenSize.height,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.white),
        child: Center(
            child: Text(
          'You can contact us here',
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
