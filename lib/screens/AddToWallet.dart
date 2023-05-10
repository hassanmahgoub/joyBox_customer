// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

import 'PickNow.dart';

class AddToWallet extends StatefulWidget {
  const AddToWallet({Key? key}) : super(key: key);

  @override
  State<AddToWallet> createState() => _AddToWalletState();
}

class _AddToWalletState extends State<AddToWallet> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xff010037),
      body: Container(
        height: screenSize.height,
        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(25)),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      InkWell(
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        ),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>PickNow()));
                        },
                      ),
                      Icon(
                        Icons.menu,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(7),
                        topRight: Radius.circular(7)),
                    child: Container(
                      height: 205,
                      width: screenSize.width,
                      decoration: const BoxDecoration(
                          color: Colors.green,
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(7))),
                      child: Stack(children: [
                        Image.asset(
                          'images/download-1.jpg',
                          fit: BoxFit.cover,
                          height: 205,
                          width: screenSize.width,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20, left: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 25,
                              )
                            ],
                          ),
                        )
                      ]),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 728,
                    width: screenSize.width,
                    decoration: const BoxDecoration(
                        color: Color(0xff010037),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(7),
                            bottomRight: Radius.circular(7))),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 180,
                                width: 10,
                                decoration: const BoxDecoration(
                                    color: Color(0xffC4001F),
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(7),
                                        bottomRight: Radius.circular(7))),
                              ),
                              Image.asset(
                                'images/120-1202187_transparent-white-qr-code-png-subscribe-to-pewdiepie.png',
                                height: 200,
                              ),
                              Container(
                                height: 180,
                                width: 10,
                                decoration: const BoxDecoration(
                                    color: Color(0xffC4001F),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(7),
                                        bottomLeft: Radius.circular(7))),
                              ),
                            ]),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'مهرجان الثقافة بإثراء',
                          style: TextStyle(
                              color: Color(0xff25E0B1),
                              fontSize: 16,
                              fontFamily: 'sst arabic',
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          '12/12/2025',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: 'sst arabic',
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 15,
                              width: 10,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(7),
                                      bottomRight: Radius.circular(7))),
                            ),
                            Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                  74,
                                  (index) => SizedBox(
                                        height: 2,
                                        width: 5,
                                        child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                                color: Colors.white)),
                                      )),
                            ),
                            Container(
                              height: 15,
                              width: 10,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(7),
                                      bottomLeft: Radius.circular(7))),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 80,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 15,
                              width: 10,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(7),
                                      bottomRight: Radius.circular(7))),
                            ),
                            Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                  74,
                                  (index) => SizedBox(
                                        height: 2,
                                        width: 5,
                                        child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                                color: Colors.white)),
                                      )),
                            ),
                            Container(
                              height: 15,
                              width: 10,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(7),
                                      bottomLeft: Radius.circular(7))),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 310,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 10,
                              width: 15,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(7),
                                      topRight: Radius.circular(7))),
                            ),
                            SizedBox(
                              width: 1,
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
                            SizedBox(
                              width: 1,
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
                            SizedBox(
                              width: 1,
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
                            SizedBox(
                              width: 1,
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
                            SizedBox(
                              width: 1,
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
                            SizedBox(
                              width: 1,
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
                            SizedBox(
                              width: 1,
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
                            SizedBox(
                              width: 1,
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
                            SizedBox(
                              width: 1,
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
                            SizedBox(
                              width: 1,
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
                            SizedBox(
                              width: 1,
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
                            SizedBox(
                              width: 1,
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
                            SizedBox(
                              width: 1,
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
                            SizedBox(
                              width: 1,
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
                            SizedBox(
                              width: 1,
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
                            SizedBox(
                              width: 1,
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
                            SizedBox(
                              width: 1,
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
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 45,
                    width: screenSize.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Color(0xff010037)),
                    child: Center(
                        child: Text(
                      'إضافة للمحفظة',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          fontFamily: 'sst arabic',
                          color: Colors.white),
                    )),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
