// ignore_for_file: implementation_imports, unnecessary_import, file_names, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import '../widgets/alert_Dialog.dart';
import 'FavouriteEvents.dart';
import 'PasswordChange.dart';
import 'ProfileEdit.dart';
import 'Settings.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xff010037),
      body: Stack(children: [
        SvgPicture.asset(
          'images/Inner_patterns470x416.svg',
          fit: BoxFit.cover,
          width: screenSize.width,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 170),
          child: Container(
            height: screenSize.height,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(25)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 25, right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: Container(
                            width: 102,
                            height: 28,
                            decoration: BoxDecoration(
                                color: const Color(0xff25E0B1),
                                borderRadius: BorderRadius.circular(25)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    'الإعدادات',
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Color(0xff010037),
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Icon(
                                    Icons.settings_outlined,
                                    color: Color(0xff010037),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Settings()));
                          },
                        ),
                        const Text(
                          '@ mohamedaldini',
                          style: TextStyle(
                              fontSize: 10,
                              color: Color(0xff010037),
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.notifications_outlined,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'تطبيق مسجل ومرخص لبيع تذاكر الفعاليات الترفيهية والرياضية من وزارة التجارة ووزارة الترفية، صندوق المرح هو أحد منتجات شركة مكعبات لتقنية المعلومات',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 13),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 45,
                      width: screenSize.width,
                      decoration: BoxDecoration(
                          color: const Color(0xff010037),
                          borderRadius: BorderRadius.circular(7)),
                      child: Center(
                        child: InkWell(
                          child: const Text(
                            'تذاكري',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Color(0xff25E0B1)),
                          ),
                          onTap: () {
                            // Navigator.push(context, MaterialPageRoute(builder: ((context) => Tickets())));
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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
                            child: Text(
                          'الفعاليات المفضلة',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color(0xff25E0B1)),
                        )),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FavouriteEvents()));
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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
                          child: Text(
                            'تعديل الملف الشخصي',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Color(0xff25E0B1)),
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProfileEdit()));
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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
                            child: Text(
                          'تغيير كلمة المرور',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color(0xff25E0B1)),
                        )),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PasswordChange()));
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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
                            child: Text(
                          'تسجيل خروج من التطبيق',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color(0xff25E0B1)),
                        )),
                      ),
                      onTap: () async {
                        final action = await AlertDialogs.yesCancelDialog(
                            context,
                            'هل تريد تسجيل الخروج من التطبيق؟',
                            'خروج من التطبيق؟');
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  )
                ],
              ),
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 120),
            child: Column(
              children: const [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 0),
                    child: CircleAvatar(
                      radius: 53,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('images/4E9B01BE-4CD2-4E94-BEE1-B9597E0D58E4_1_102_o.jpeg'),
                        ),
                    ),
                    ),
                  ),
                
              ],
            ),
          ),
        )
      ]),
    );
  }
}
