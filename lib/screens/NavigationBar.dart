// ignore_for_file: prefer_const_constructors, file_names, unused_element, unused_local_variable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:joy_cu/screens/Events.dart';
import 'ContactUs.dart';
import 'MyHomePage.dart';
import 'Profile.dart';
import 'Tickets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: Transform.rotate(
          angle: 0.80,
          child: FloatingActionButton(
            backgroundColor: Color(0xff25E0B1),
            onPressed: (){
            Navigator.push(context, CupertinoPageRoute(builder: (context)=>MyHomePage()));  
          },
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Transform.rotate(
            angle: 5.50,
            child: SvgPicture.asset('assets/images/menu_homebutton25x31.svg')),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            currentIndex: 0,
            height: 80,
            backgroundColor: const Color(0xff010037),
            items: <BottomNavigationBarItem>[
              //active color use on first
      
              BottomNavigationBarItem(
                  icon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/images/menu_account22x24.svg',
                        ),
                        
                        Text(
                          'حسابي',
                          style: TextStyle(
                              color: Color(0xff25E0B1),
                              fontFamily: 'sst arabic',
                              fontWeight: FontWeight.bold),
                        )
                      ]),
                  activeIcon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/images/menu_account22x24.svg',
                          color: Colors.white,
                        ),
                        
                        Text('حسابي',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'sst arabic',
                                fontWeight: FontWeight.bold))
                      ])),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/images/menu_support20x24 copy.svg'),
                          Text(
                            'الدعم',
                            style: TextStyle(
                                color: Color(0xff25E0B1),
                                fontFamily: 'sst arabic',
                                fontWeight: FontWeight.bold),
                          )
                        ]),
                  ),
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/images/menu_support20x24 copy.svg',color: Colors.white,),
                         
                          Text(
                            'الدعم',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'sst arabic',
                                fontWeight: FontWeight.bold),
                          )
                        ]),
                  )),
                      
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/images/menu_tickets_24x24.svg'),
                         
                          Text(
                            'تذاكري',
                            style: TextStyle(
                                color: Color(0xff25E0B1),
                                fontFamily: 'sst arabic',
                                fontWeight: FontWeight.bold),
                          )
                        ]),
                  ),
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/images/menu_tickets_24x24.svg',color: Colors.white,),
                          
                          Text(
                            'تذاكري',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'sst arabic',
                                fontWeight: FontWeight.bold),
                          )
                        ]),
                  )),
              BottomNavigationBarItem(
                  icon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/images/menu_events24x24.svg'),
                       
                        Text(
                          'الفعاليات',
                          style: TextStyle(
                              color: Color(0xff25E0B1),
                              fontFamily: 'sst arabic',
                              fontWeight: FontWeight.bold),
                        )
                      ]),
                  activeIcon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/images/menu_events24x24.svg',color: Colors.white,),
                        
                        Text(
                          'الفعاليات',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'sst arabic',
                              fontWeight: FontWeight.bold),
                        )
                      ])),
            ],
          ),
          tabBuilder: (context, index) {
            switch (index) {
              case 0:
                return CupertinoTabView(builder: (context) {
                  return const CupertinoPageScaffold(
                    child: Profile(),
                  );
                });
              case 1:
                return CupertinoTabView(builder: (context) {
                  return const CupertinoPageScaffold(
                    child: ContactUs(),
                  );
                });
              case 2:
                return CupertinoTabView(builder: (context) {
                  return const CupertinoPageScaffold(
                    child: Tickets(),
                  );
                });
              case 3:
                return CupertinoTabView(builder: (context) {
                  return const CupertinoPageScaffold(
                    child: Events(),
                  );
                });
      
              default:
                CupertinoTabView(builder: (context) {
                  return const CupertinoPageScaffold(child: MyHomePage(),);
                });
            }
            return Container();
          }),
    );
  }
}
