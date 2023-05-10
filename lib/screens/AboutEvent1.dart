// ignore_for_file: file_names, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'FavouriteEvents.dart';
import 'PickNow.dart';

class AboutEvent1 extends StatefulWidget {
  const AboutEvent1({Key? key}) : super(key: key);

  @override
  State<AboutEvent1> createState() => _AboutEvent1State();
}

class _AboutEvent1State extends State<AboutEvent1> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff25E0B1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 0),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
                child: Container(
                  height: 829,
                  width: screenSize.width,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                      )),
                  child: Stack(children: [
                    //Image.asset('images/download-2.jpg',fit: BoxFit.cover,height: screenSize.height,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          height: 80,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(
                                Icons.favorite_outline,
                                size: 30,
                              ),
                              InkWell(
                                child: const Icon(
                                  Icons.close,
                                  size: 30,
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const FavouriteEvents()));
                                },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 550,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.blue,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  const Text(
                                    'مهرجان الثقافة بإثراء',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text('23/05/2023',
                                          style: TextStyle(
                                            fontSize: 11,
                                          )),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text('مركز الملك عبدالله الثقافي',
                                          style: TextStyle(
                                            fontSize: 11,
                                          )),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 35),
                                    child: Row(
                                      children: const [
                                        Text('أرامكو السعودية',
                                            style: TextStyle(
                                              fontSize: 11,
                                            )),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text('مجتمع الشرقية',
                                            style: TextStyle(
                                              fontSize: 11,
                                            )),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text('ثقافة',
                                            style: TextStyle(
                                              fontSize: 11,
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Icon(
                          Icons.expand_more,
                          size: 40,
                        )
                      ],
                    ),
                  ]),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('تذاكر الحضور',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(
              height: 20,
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
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Container(
                        height: 70,
                        width: 120,
                        child: Row(
                          children: [
                            Text('ريال',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                )),
                            SizedBox(
                              width: 2,
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Text('199',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                            SizedBox(
                              width: 22,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 10,
                                  width: 15,
                                  decoration: const BoxDecoration(
                                      color: Color(0xff25E0B1),
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(7),
                                          bottomRight: Radius.circular(7))),
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
                                                        BorderRadius.circular(
                                                            3),
                                                    color: const Color(
                                                        0xff25E0B1))),
                                          )),
                                ),
                                Container(
                                  height: 10,
                                  width: 15,
                                  decoration: const BoxDecoration(
                                      color: Color(0xff25E0B1),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(7),
                                          topRight: Radius.circular(7))),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.info_outline,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text('اسم التذكرة',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                )),
                            Text('الدرجة الفضية',
                                style: TextStyle(
                                  color: Color(0xff25E0B1),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: SvgPicture.asset('images/cash.svg'),
                        ),
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
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Container(
                        height: 70,
                        width: 120,
                        child: Row(
                          children: [
                            Text('ريال',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                )),
                            SizedBox(
                              width: 2,
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Text('1200',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 10,
                                  width: 15,
                                  decoration: const BoxDecoration(
                                      color: Color(0xff25E0B1),
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(7),
                                          bottomRight: Radius.circular(7))),
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
                                                        BorderRadius.circular(
                                                            3),
                                                    color: const Color(
                                                        0xff25E0B1))),
                                          )),
                                ),
                                Container(
                                  height: 10,
                                  width: 15,
                                  decoration: const BoxDecoration(
                                      color: Color(0xff25E0B1),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(7),
                                          topRight: Radius.circular(7))),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.info_outline,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text('اسم التذكرة',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                )),
                            Text('الدرجة الذهبية',
                                style: TextStyle(
                                  color: Color(0xff25E0B1),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: SvgPicture.asset('images/cash.svg'),
                        ),
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
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Container(
                        //color: Colors.grey,
                        height: 70,
                        width: 120,
                        child: Row(
                          children: [
                            Text('ريال',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                )),
                            SizedBox(
                              width: 2,
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Text('9990',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 10,
                                  width: 15,
                                  decoration: const BoxDecoration(
                                      color: Color(0xff25E0B1),
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(7),
                                          bottomRight: Radius.circular(7))),
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
                                                        BorderRadius.circular(
                                                            3),
                                                    color: const Color(
                                                        0xff25E0B1))),
                                          )),
                                ),
                                Container(
                                  height: 10,
                                  width: 15,
                                  decoration: const BoxDecoration(
                                      color: Color(0xff25E0B1),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(7),
                                          topRight: Radius.circular(7))),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.info_outline,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text('اسم التذكرة',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                )),
                            Text('الدرجة البلاتينية',
                                style: TextStyle(
                                  color: Color(0xff25E0B1),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: SvgPicture.asset('images/cash.svg'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text('عن الفعالية',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: const Text(
                  'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع  نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'din',
                    fontWeight: FontWeight.w500,
                    color: Color(0xff010037),
                    fontSize: 14,
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: InkWell(
                child: Container(
                  height: 45,
                  width: screenSize.width,
                  decoration: BoxDecoration(
                      color: const Color(0xff010037),
                      borderRadius: BorderRadius.circular(7)),
                  child: const Center(
                      child: Text('إحجــــز اآن',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ))),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const PickNow()));
                },
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
      // Column(
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   children:  [
      //     const Center(child: Padding(
      //       padding: EdgeInsets.only(bottom: 50),
      //       child:

      //     )),
      //   ],
      // )
    );
  }
}
