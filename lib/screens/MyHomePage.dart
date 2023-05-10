// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'AboutEvent1.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
       
        body: Stack(
          children:[ Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20)),
                      color: Color(0xff010037)),
                  height: 231,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 15, bottom: 0,top: 50),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Icon(Icons.notifications_active_outlined,color: Colors.white,),
                              Icon(Icons.menu,color: Colors.white,)
                            ],
                          ),
                        ),
                        const SizedBox(height: 30,),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const CircleAvatar(
                                radius: 37,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 35,
                                  backgroundColor: Colors.white,
                                  backgroundImage: AssetImage(
                                    'images/4E9B01BE-4CD2-4E94-BEE1-B9597E0D58E4_1_102_o.jpeg',
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
                                  Text(
                                    'أهلا بك عزيزي',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    'لؤي عثمان',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Color(0xff25E0B1)),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  )
                                ],
                              ),
                            ]),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                    child: Column(children: [
                                  const Text(
                    'تصفح تطبيق المتعة والمرح في السعودية',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xff010037)),
                                  ),
                                  const SizedBox(
                    height: 20,
                                  ),
                                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.arrow_back_ios,
                        size: 15,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      )
                    ],
                                  ),
                                  const SizedBox(
                    height: 40,
                                  ),
                                  const Text(
                    'الفعاليات القادمة',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Color(0xff010037)),
                                  ),
                                ])),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                    child: ListView(children: [
                  Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, bottom: 20),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(7),
                          child: Container(
                              height: 277,
                              width: screenSize.width,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(7)),
                              child: Stack(children: [
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
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Icon(
                                              Icons.favorite_outline,
                                              color: Colors.white,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 20),
                                              child: Container(
                                                height: 70,
                                                width: 53,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(6)),
                                                child: Column(
                                                  children: const [
                                                    Text(
                                                      'الخميس',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color:
                                                              Color(0xff010037)),
                                                    ),
                                                    Text(
                                                      '09',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontFamily: 'din',
                                                          fontSize: 16,
                                                          color:
                                                              Color(0xff25E0B1)),
                                                    ),
                                                    Text(
                                                      'يونيو',
                                                      style: TextStyle(
                                                          fontFamily: 'dn',
                                                          fontSize: 14,
                                                          color:
                                                              Color(0xff010037)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                          ]),
                                    ),
                                    const SizedBox(
                                      height: 100,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 28),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const CircleAvatar(
                                            backgroundColor: Colors.white,
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
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'sst arabic',
                                                    color: Colors.white),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              InkWell(
                                                child: const Text(
                                                  'مزيد من التفاصيل',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 8),
                                                ),
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
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
                              ])))),
                  Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, bottom: 20),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(7),
                          child: Container(
                              height: 277,
                              width: screenSize.width,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(7)),
                              child: Stack(children: [
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
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Icon(
                                              Icons.favorite_outline,
                                              color: Colors.white,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 20),
                                              child: Container(
                                                height: 70,
                                                width: 53,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(6)),
                                                child: Column(
                                                  children: const [
                                                    Text(
                                                      'الخميس',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color:
                                                              Color(0xff010037)),
                                                    ),
                                                    Text(
                                                      '09',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontFamily: 'din',
                                                          fontSize: 16,
                                                          color:
                                                              Color(0xff25E0B1)),
                                                    ),
                                                    Text(
                                                      'يونيو',
                                                      style: TextStyle(
                                                          fontFamily: 'dn',
                                                          fontSize: 14,
                                                          color:
                                                              Color(0xff010037)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                          ]),
                                    ),
                                    const SizedBox(
                                      height: 100,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 28),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 25,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: const [
                                              // const Text('مهرجان الثقافة بإثراء',style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, fontFamily: 'sst arabic', color: Colors.white),),
                                              // const SizedBox(height: 5,),
                                              // InkWell(child:
                                              // Text('مزيد من التفاصيل',style: TextStyle(color: Colors.white,fontSize: 8),
                                              // ),
                                              // onTap: () {
                                              //   Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutEvent1()));
                                              // },
                                              // ),
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ])))),
                  Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, bottom: 20),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(7),
                          child: Container(
                              height: 277,
                              width: screenSize.width,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(7)),
                              child: Stack(children: [
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
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Icon(
                                              Icons.favorite_outline,
                                              color: Colors.white,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 20),
                                              child: Container(
                                                height: 70,
                                                width: 53,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(6)),
                                                child: Column(
                                                  children: const [
                                                    Text(
                                                      'الخميس',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color:
                                                              Color(0xff010037)),
                                                    ),
                                                    Text(
                                                      '09',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontFamily: 'din',
                                                          fontSize: 16,
                                                          color:
                                                              Color(0xff25E0B1)),
                                                    ),
                                                    Text(
                                                      'يونيو',
                                                      style: TextStyle(
                                                          fontFamily: 'dn',
                                                          fontSize: 14,
                                                          color:
                                                              Color(0xff010037)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                          ]),
                                    ),
                                    const SizedBox(
                                      height: 100,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 28),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 25,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              const Text(
                                                'ليلة نغم',
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'sst arabic',
                                                    color: Colors.white),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              InkWell(
                                                child: const Text(
                                                  'مزيد من التفاصيل',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 8),
                                                ),
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
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
                              ])))),
                  Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, bottom: 20),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(7),
                          child: Container(
                              height: 277,
                              width: screenSize.width,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(7)),
                              child: Stack(children: [
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
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Icon(
                                              Icons.favorite_outline,
                                              color: Colors.white,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 20),
                                              child: Container(
                                                height: 70,
                                                width: 53,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(6)),
                                                child: Column(
                                                  children: const [
                                                    Text(
                                                      'الخميس',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color:
                                                              Color(0xff010037)),
                                                    ),
                                                    Text(
                                                      '09',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontFamily: 'din',
                                                          fontSize: 16,
                                                          color:
                                                              Color(0xff25E0B1)),
                                                    ),
                                                    Text(
                                                      'يونيو',
                                                      style: TextStyle(
                                                          fontFamily: 'dn',
                                                          fontSize: 14,
                                                          color:
                                                              Color(0xff010037)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                          ]),
                                    ),
                                    const SizedBox(
                                      height: 100,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 28),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 25,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              const Text(
                                                'عيش الحماس ( مباراة النهائي)',
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'sst arabic',
                                                    color: Colors.white),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              InkWell(
                                                child: const Text(
                                                  'مزيد من التفاصيل',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 8),
                                                ),
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
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
                              ])))),
                  Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, bottom: 20),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(7),
                          child: Container(
                              height: 277,
                              width: screenSize.width,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(7)),
                              child: Stack(children: [
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
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Icon(
                                              Icons.favorite_outline,
                                              color: Colors.white,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 20),
                                              child: Container(
                                                height: 70,
                                                width: 53,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(6)),
                                                child: Column(
                                                  children: const [
                                                    Text(
                                                      'الخميس',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color:
                                                              Color(0xff010037)),
                                                    ),
                                                    Text(
                                                      '09',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontFamily: 'din',
                                                          fontSize: 16,
                                                          color:
                                                              Color(0xff25E0B1)),
                                                    ),
                                                    Text(
                                                      'يونيو',
                                                      style: TextStyle(
                                                          fontFamily: 'dn',
                                                          fontSize: 14,
                                                          color:
                                                              Color(0xff010037)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                          ]),
                                    ),
                                    const SizedBox(
                                      height: 100,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 28),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 25,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              const Text(
                                                'جدة جنغل',
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'sst arabic',
                                                    color: Colors.white),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              InkWell(
                                                child: const Text(
                                                  'مزيد من التفاصيل',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 8),
                                                ),
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
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
                              ])))),
                  const Icon(
                    Icons.expand_less,
                    size: 35,
                  ),
                  const Center(
                      child: Text(
                    'لا يوجد مزيد من الفعاليات',
                    style: TextStyle(
                        color: Color(0xff010037),
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  )),
                  const SizedBox(
                    height: 20,
                  )
                ])),
              ]),
        ]));
  }
}
