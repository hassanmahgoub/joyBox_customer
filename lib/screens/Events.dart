// ignore_for_file: unnecessary_import, implementation_imports, avoid_unnecessary_containers, file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Events extends StatefulWidget {
  const Events({Key? key}) : super(key: key);

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    final ScreenSize = MediaQuery.of(context).size;
    return Scaffold(
       backgroundColor: const Color(0xff010037),
      body: Container(
        height: ScreenSize.height,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.white),
        child: const Center(
            child: Text(
          'Here is the Events page',
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
