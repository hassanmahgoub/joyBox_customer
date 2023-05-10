// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'AboutEvent1.dart';
import 'AddToWallet.dart';
import 'AddToWallet1.dart';

class PickNow extends StatefulWidget {
  const PickNow({Key? key}) : super(key: key);

  @override
  State<PickNow> createState() => _PickNowState();
}

class _PickNowState extends State<PickNow> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xff010037),
      body: Stack(
        children: [
          SvgPicture.asset(
            'images/Inner_patterns470x416.svg',
            fit: BoxFit.cover,
            width: screenSize.width,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Container(
              height: screenSize.height,
              width: screenSize.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25)),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            child: Icon(Icons.arrow_back_ios),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AboutEvent1()));
                            },
                          ),
                          Text(
                            'تذاكر الحضور',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'sst arabic',
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            'التذكرة جاهزة للستخدامها',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'roman',
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: Color(0xffC4001F),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Text(
                            'التذكرة تم استخدامها',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'roman',
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: Color(0xff25E0B1),
                                borderRadius: BorderRadius.circular(10)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        width: screenSize.width,
                        height: 70,
                        decoration: BoxDecoration(
                            color: const Color(0xff010037),
                            borderRadius: BorderRadius.circular(7)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: SizedBox(
                                width: 120,
                                height: 70,
                                child: Row(children: [
                                  Text('ريال',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 5, right: 20, bottom: 5),
                                    child: Text('199',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 10,
                                        width: 15,
                                        decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(7),
                                                bottomRight:
                                                    Radius.circular(7))),
                                      ),
                                      Flex(
                                        direction: Axis.vertical,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: List.generate(
                                            10,
                                            (index) => SizedBox(
                                                  height: 5,
                                                  width: 2,
                                                  child: DecoratedBox(
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(3),
                                                          color: Colors.white)),
                                                )),
                                      ),
                                      Container(
                                        height: 10,
                                        width: 15,
                                        decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(7),
                                                topRight: Radius.circular(7))),
                                      ),
                                    ],
                                  ),
                                  InkWell(
                                    child: Icon(
                                      Icons.info_outline,
                                      color: Colors.white,
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  AddToWallet()));
                                    },
                                  ),
                                ]),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                //const SizedBox(width: 200,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: const [
                                    Text('اسم الفعالية',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                        )),
                                    Text('مهرجان الثقافة بإثراء',
                                        style: TextStyle(
                                          fontFamily: 'sst arabic',
                                          color: Color(0xff25E0B1),
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                SvgPicture.asset('images/cash.svg'),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 41,
                                  width: 10,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(7),
                                          bottomLeft: Radius.circular(7)),
                                      color: Color(0xff25E0B1)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        width: screenSize.width,
                        height: 70,
                        decoration: BoxDecoration(
                            color: const Color(0xff010037),
                            borderRadius: BorderRadius.circular(7)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: SizedBox(
                                width: 130,
                                height: 70,
                                child: Row(children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text('ريال',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 5, right: 10, bottom: 5),
                                    child: Text('1200',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 10,
                                        width: 15,
                                        decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(7),
                                                bottomRight:
                                                    Radius.circular(7))),
                                      ),
                                      Flex(
                                        direction: Axis.vertical,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: List.generate(
                                            10,
                                            (index) => SizedBox(
                                                  height: 5,
                                                  width: 2,
                                                  child: DecoratedBox(
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(3),
                                                          color: Colors.white)),
                                                )),
                                      ),
                                      Container(
                                        height: 10,
                                        width: 15,
                                        decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(7),
                                                topRight: Radius.circular(7))),
                                      ),
                                    ],
                                  ),
                                  InkWell(
                                    child: Icon(
                                      Icons.info_outline,
                                      color: Colors.white,
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  AddToWallet1()));
                                    },
                                  ),
                                ]),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                //const SizedBox(width: 200,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: const [
                                    Text('اسم الفعالية',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                        )),
                                    Text('عيش الحماس ( مباراة النهائي)',
                                        style: TextStyle(
                                          fontFamily: 'sst arabic',
                                          color: Color(0xff25E0B1),
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                SvgPicture.asset('images/cash.svg'),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 41,
                                  width: 10,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(7),
                                          bottomLeft: Radius.circular(7)),
                                      color: Color(0xff25E0B1)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        width: screenSize.width,
                        height: 70,
                        decoration: BoxDecoration(
                            color: const Color(0xff010037),
                            borderRadius: BorderRadius.circular(7)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: SizedBox(
                                width: 120,
                                height: 70,
                                child: Row(children: [
                                  Text('ريال',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 5, right: 17, bottom: 5),
                                    child: Text('999',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 10,
                                        width: 15,
                                        decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(7),
                                                bottomRight:
                                                    Radius.circular(7))),
                                      ),
                                      Flex(
                                        direction: Axis.vertical,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: List.generate(
                                            10,
                                            (index) => SizedBox(
                                                  height: 5,
                                                  width: 2,
                                                  child: DecoratedBox(
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(3),
                                                          color: Colors.white)),
                                                )),
                                      ),
                                      Container(
                                        height: 10,
                                        width: 15,
                                        decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(7),
                                                topRight: Radius.circular(7))),
                                      ),
                                    ],
                                  ),
                                  InkWell(
                                    child: Icon(
                                      Icons.info_outline,
                                      color: Colors.white,
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  AddToWallet()));
                                    },
                                  ),
                                ]),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                //const SizedBox(width: 200,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: const [
                                    Text('اسم الفعالية',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                        )),
                                    Text('عيش الحماس ( مباراة النهائي)',
                                        style: TextStyle(
                                          fontFamily: 'sst arabic',
                                          color: Color(0xff25E0B1),
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                SvgPicture.asset('images/cash.svg'),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 41,
                                  width: 10,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(7),
                                          bottomLeft: Radius.circular(7)),
                                      color: Color(0xffC4001F)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
