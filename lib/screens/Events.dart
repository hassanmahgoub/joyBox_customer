// ignore_for_file: unnecessary_import, implementation_imports, avoid_unnecessary_containers, file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:joy_cu/screens/Tickets.dart';

import 'ContactUs.dart';
import 'MyHomePage.dart';
import 'Profile.dart';

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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Transform.rotate(
        angle: 0.80,
        child: FloatingActionButton(
          backgroundColor: Color(0xff25E0B1),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MyHomePage()));
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Transform.rotate(
              angle: 5.50,
              child:
                  SvgPicture.asset('assets/images/menu_homebutton25x31.svg')),
        ),
      ),
       bottomNavigationBar: Container(
        height: 113,
        width: ScreenSize.width,
        
         child: BottomAppBar(
          color: Color(0xff010037),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                },
                child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/menu_account22x24.svg',
                            ),
                            SizedBox(height: 5,),
                            Text(
                              'حسابي',
                              style: TextStyle(
                                  color: Color(0xff25E0B1),
                                  fontFamily: 'sst arabic',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10
                                  ),
                            )
                          ]),
              ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactUs()));
                          },
                          child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/menu_support20x24 copy.svg',
                            ),
                            SizedBox(height: 5,),
                            Text(
                              'الدعم',
                              style: TextStyle(
                                  color: Color(0xff25E0B1),
                                  fontFamily: 'sst arabic',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10
                                  ),
                            )
                          ]),
                        ),
                        SizedBox(width: 5,),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Tickets()));
                          },
                          child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/menu_tickets_24x24.svg',
                            ),
                            SizedBox(height: 5,),
                            Text(
                              'تذاكري',
                              style: TextStyle(
                                  color: Color(0xff25E0B1),
                                  fontFamily: 'sst arabic',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10
                                  ),
                            )
                          ]),
                        ),
                        Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/images/menu_events24x24.svg',
                          ),
                          SizedBox(height: 5,),
                          Text(
                            'الفعاليات',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'sst arabic',
                                fontWeight: FontWeight.bold,
                                fontSize: 10
                                ),
                          )
                        ]),
            ],),
          ),
         ),
       ),
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
