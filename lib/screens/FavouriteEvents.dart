// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'AboutEvent1.dart';
import 'NavigationBar.dart';

class FavouriteEvents extends StatefulWidget {
  const FavouriteEvents({Key? key}) : super(key: key);

  @override
  State<FavouriteEvents> createState() => _FavouriteEventsState();
}

class _FavouriteEventsState extends State<FavouriteEvents> {
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
            padding: const EdgeInsets.only(top: 155),
            child: Container(
              height: screenSize.height,
              width: screenSize.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), color: Colors.white),
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: const Icon(Icons.arrow_back_ios),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomePage()));
                          },
                        ),
                        const Text(
                          'الفعاليات المفضلة',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color(0xff010037)),
                        ),
                        Container(
                          width: 20,
                        ),
                        //SizedBox(height: 40,),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: 1,
                        itemBuilder: ((context, index) {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 10, bottom: 20),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(7),
                                  child: Container(
                                    height: 277,
                                    width: screenSize.width,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(7)),
                                    child: Stack(
                                      children: [
                                        Image.asset(
                                          'images/download-1.jpg',
                                          fit: BoxFit.cover,
                                          height: 277,
                                          width: screenSize.width,
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 40, right: 25),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  const Icon(
                                                    Icons.favorite,
                                                    color: Colors.red,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 20),
                                                    child: Container(
                                                      height: 70,
                                                      width: 53,
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(6)),
                                                      child: Column(
                                                        children: const [
                                                          Text(
                                                            'الخميس',
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                color: Color(
                                                                    0xff010037)),
                                                          ),
                                                          Text(
                                                            '09',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontFamily:
                                                                    'din',
                                                                fontSize: 16,
                                                                color: Color(
                                                                    0xff25E0B1)),
                                                          ),
                                                          Text(
                                                            'يونيو',
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'dn',
                                                                fontSize: 14,
                                                                color: Color(
                                                                    0xff010037)),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 100,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 28),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  const CircleAvatar(
                                                    backgroundColor:
                                                        Colors.white,
                                                    radius: 25,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      const Text(
                                                        'مهرجان الثقافة بإثراء',
                                                        style: TextStyle(
                                                            fontSize: 13,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontFamily:
                                                                'sst arabic',
                                                            color:
                                                                Colors.white),
                                                      ),
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      InkWell(
                                                        child: const Text(
                                                          'مزيد من التفاصيل',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 8),
                                                        ),
                                                        onTap: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          const AboutEvent1()));
                                                        },
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, bottom: 20),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(7),
                                      child: Container(
                                        height: 277,
                                        width: screenSize.width,
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(7)),
                                        child: Stack(children: [
                                          Image.asset(
                                            'images/download-2.jpg',
                                            fit: BoxFit.cover,
                                            height: 277,
                                            width: screenSize.width,
                                          ),
                                          Column(children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 40, right: 25),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  const Icon(
                                                    Icons.favorite,
                                                    color: Colors.red,
                                                  ),
                                                  Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 20),
                                                      child: Container(
                                                        height: 70,
                                                        width: 53,
                                                        decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        6)),
                                                        child: Column(
                                                          children: const [
                                                            Text(
                                                              'الخميس',
                                                              style: TextStyle(
                                                                  fontSize: 12,
                                                                  color: Color(
                                                                      0xff010037)),
                                                            ),
                                                            Text(
                                                              '09',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontFamily:
                                                                      'din',
                                                                  fontSize: 16,
                                                                  color: Color(
                                                                      0xff25E0B1)),
                                                            ),
                                                            Text(
                                                              'يونيو',
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'dn',
                                                                  fontSize: 14,
                                                                  color: Color(
                                                                      0xff010037)),
                                                            ),
                                                          ],
                                                        ),
                                                      ))
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 100,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 28),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  const CircleAvatar(
                                                    backgroundColor:
                                                        Colors.white,
                                                    radius: 25,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: const [
                                                      // Text('مهرجان الثقافة بإثراء',style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, fontFamily: 'sst arabic', color: Colors.white),),
                                                      // SizedBox(height: 5,),
                                                      // Text('مزيد من التفاصيل',style: TextStyle(color: Colors.white,fontSize: 10),)
                                                    ],
                                                  )
                                                ],
                                              ),
                                            )
                                          ]),
                                        ]),
                                      ))),
                              Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, bottom: 20),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(7),
                                      child: Container(
                                        height: 277,
                                        width: screenSize.width,
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(7)),
                                        child: Stack(children: [
                                          Image.asset(
                                            'images/download.jpg',
                                            fit: BoxFit.cover,
                                            height: 277,
                                            width: screenSize.width,
                                          ),
                                          Column(children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 40, right: 25),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  const Icon(
                                                    Icons.favorite,
                                                    color: Colors.red,
                                                  ),
                                                  Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 20),
                                                      child: Container(
                                                        height: 70,
                                                        width: 53,
                                                        decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        6)),
                                                        child: Column(
                                                          children: const [
                                                            Text(
                                                              'الخميس',
                                                              style: TextStyle(
                                                                  fontSize: 12,
                                                                  color: Color(
                                                                      0xff010037)),
                                                            ),
                                                            Text(
                                                              '09',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontFamily:
                                                                      'din',
                                                                  fontSize: 16,
                                                                  color: Color(
                                                                      0xff25E0B1)),
                                                            ),
                                                            Text(
                                                              'يونيو',
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'dn',
                                                                  fontSize: 14,
                                                                  color: Color(
                                                                      0xff010037)),
                                                            ),
                                                          ],
                                                        ),
                                                      ))
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 100,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 28),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  const CircleAvatar(
                                                    backgroundColor:
                                                        Colors.white,
                                                    radius: 25,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: const [
                                                      Text(
                                                        'ليلة نغم',
                                                        style: TextStyle(
                                                            fontSize: 13,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontFamily:
                                                                'sst arabic',
                                                            color:
                                                                Colors.white),
                                                      ),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text(
                                                        'مزيد من التفاصيل',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 8),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ]),
                                        ]),
                                      ))),
                              const Icon(
                                Icons.expand_less,
                                size: 35,
                              ),
                              const Text(
                                'لا يوجد مزيد من الفعاليات',
                                style: TextStyle(
                                    color: Color(0xff010037),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 20,
                              )
                            ],
                          );
                        })),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
