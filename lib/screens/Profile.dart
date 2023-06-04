// ignore_for_file: implementation_imports, unnecessary_import, file_names, unused_local_variable


import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import '../widgets/alert_Dialog.dart';
import 'ContactUs.dart';
import 'FavouriteEvents.dart';
import 'MyHomePage.dart';
import 'PasswordChange.dart';
import 'ProfileEdit.dart';
import 'Settings.dart';
import 'Tickets.dart';
import 'Events.dart';

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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Transform.rotate(
        angle: 0.80,
        child: FloatingActionButton(
          backgroundColor: const Color(0xff25E0B1),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyHomePage()));
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Transform.rotate(
              angle: 5.50,
              child:
                  SvgPicture.asset('assets/images/menu_homebutton25x31.svg')),
        ),
      ),
       bottomNavigationBar: SizedBox(
        height: 113,
        width: screenSize.width,
        
         child: BottomAppBar(
          color: const Color(0xff010037),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/images/menu_account22x24.svg',
                          ),
                          const SizedBox(height: 5,),
                          const Text(
                            'حسابي',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'sst arabic',
                                fontWeight: FontWeight.bold,
                                fontSize: 10
                                ),
                          )
                        ]),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const ContactUs()));
                          },
                          child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/menu_support20x24 copy.svg',
                            ),
                            const SizedBox(height: 5,),
                            const Text(
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
                        const SizedBox(width: 5,),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const Tickets()));
                          },
                          child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/menu_tickets_24x24.svg',
                            ),
                            const SizedBox(height: 5,),
                            const Text(
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
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const Events()));
                          },
                          child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/menu_events24x24.svg',
                            ),
                            const SizedBox(height: 5,),
                            const Text(
                              'الفعاليات',
                              style: TextStyle(
                                  color: Color(0xff25E0B1),
                                  fontFamily: 'sst arabic',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10
                                  ),
                            )
                          ]),
                        ),
            ],),
          ),
         ),
       ),
      backgroundColor: const Color(0xff010037),
      body: Stack(children: [
        SvgPicture.asset(
          'assets/images/Inner_patterns470x416.svg',
          height: 400,
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
                            child:  Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'الإعدادات',
                                    style: TextStyle(
                                      fontFamily: 'sst arabic',
                                        fontSize: 11,
                                        color: Color(0xff010037),
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SvgPicture.asset('assets/images/Path 515.svg')
                                ],
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Settings()));
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
                  
                  const SizedBox(
                    height: 30,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'تطبيق مسجل ومرخص لبيع تذاكر الفعاليات الترفيهية والرياضية من وزارة التجارة ووزارة الترفية، صندوق المرح هو أحد منتجات شركة مكعبات لتقنية المعلومات',
                      
                      textAlign: TextAlign.end,
                      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 13,
                      fontFamily: 'sst arabic'
                      ),
                    ),
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
                              fontFamily: 'sst arabic',
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
                            fontFamily: 'sst arabic',
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
                              fontFamily: 'sst arabic',
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
                            fontFamily: 'sst arabic',
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
                            fontFamily: 'sst arabic',
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
        const Center(
          child: Padding(
            padding: EdgeInsets.only(top: 120),
            child: Column(
              children: [
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
                        //backgroundImage: AssetImage('images/4E9B01BE-4CD2-4E94-BEE1-B9597E0D58E4_1_102_o.jpeg'),
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
