// ignore_for_file: unnecessary_import, implementation_imports, file_names

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Tickets extends StatefulWidget {
  const Tickets({Key? key}) : super(key: key);

  @override
  State<Tickets> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Tickets> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final ScreenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff010037),
      body: Container(
        height: ScreenSize.height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: Colors.white),
        child: const Center(
            child: Text(
          'Here is the Contact Us page',
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
