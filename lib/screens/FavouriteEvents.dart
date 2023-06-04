// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:joy_cu/screens/Profile.dart';
import '../widgets/data.dart';
import 'AboutEvent1.dart';

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
            'assets/images/Inner_patterns470x416.svg',
            height: 400,
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
                                    builder: (context) => const Profile()));
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
                          scrollDirection: Axis.vertical,
                          itemCount: users.length,
                          itemBuilder: (context, index) {
                            final user = users[index];
                            return Column(
                              children: [
                                Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 10, left: 10, right: 10),
                                    child: Container(
                                        height: 277,
                                        width: screenSize.width,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius: BorderRadius.circular(7)),
                                        child: Stack(
                                          children: [
                                            user.image,
                                            Padding(
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 10),
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(15),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                      user.favourite,
                                                        Container(
                                                          height: 70,
                                                          width: 50,
                                                          decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(6),
                                                            color: Colors.white,
                                                          ),
                                                          child: Column(
                                                            children: [
                                                              Text(
                                                                user.dayName,
                                                                style: const TextStyle(
                                                                    fontSize: 10,
                                                                    fontFamily:
                                                                        'sst arabic'),
                                                              ),
                                                              Text(
                                                                user.dayNumber
                                                                    .toString(),
                                                                style: const TextStyle(
                                                                    fontSize: 15,
                                                                    color: Color(
                                                                        0xff25E0B1),
                                                                    fontFamily:
                                                                        'din',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                              Text(
                                                                user.month,
                                                                style: const TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize: 12,
                                                                    fontFamily:
                                                                        'sst arabic'),
                                                              ),
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Expanded(child: Container()),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.symmetric(
                                                            horizontal: 10,
                                                            vertical: 20),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Image.asset('assets/images/Group 492@3x.png',height: 50,),
                                                         const SizedBox(
                                                          width: 10,
                                                        ),
                                                        Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Text(
                                                              user.title,
                                                              style: const TextStyle(
                                                                  color:
                                                                      Colors.white,
                                                                  fontFamily:
                                                                      'sst arabic',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            GestureDetector(
                                                              onTap: () {
                                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutEvent1()));
                                                              },
                                                              child: Text(
                                                                user.about,
                                                                style:
                                                                    const TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontFamily:
                                                                            'din',
                                                                        fontSize: 11),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        ),
                                        ),
                                        
                              ],
                            );
                                    
                          }
                          
                          
                          ),
                          
                          ),
                          
                          
                ],
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
