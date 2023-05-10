// ignore_for_file: file_names, unused_local_variable

import 'package:flutter/material.dart';

class MyEvents extends StatelessWidget {
  const MyEvents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: Expanded(
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(7)),
      ),
    ));
  }
}
