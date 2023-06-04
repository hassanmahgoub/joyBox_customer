// ignore_for_file: file_names
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'beginPage.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    startAnimation();
    super.initState();
  }

  bool animate = false;
  @override
  // void initState() {
  //   super.initState();
  //   Timer(
  //       const Duration(seconds: 5),
  //       () => Navigator.pushReplacement(context,
  //           MaterialPageRoute(builder: (context) => const BeginPage())));
  // }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff010038),
      body: Center(
        child: Stack(
          
          children: [
            const SizedBox(
              height: 180,
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 1000),
              left: 130,
              right: 130,
              top: animate ? 0: -300,
              bottom: 550,
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: SvgPicture.asset('assets/images/joybox_logo125x197.svg'),
              )),
            const SizedBox(
              height: 40,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Center(
                  child: Text(
                    'احد منتجات شركة مكعبات لتقنية الملومات',
                    style: TextStyle(
                      fontFamily: 'sst arabic',
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    softWrap: false,
                  ),
                ),
                const SizedBox(
            height: 50,
            ),
            SizedBox(
            width: screenSize.width,
            child: SvgPicture.asset(
              'assets/images/splash_screen_pattern470x416.svg',
              fit: BoxFit.cover,
            ),
            ),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    setState(
      () => animate = true,
    );
    await Future.delayed(const Duration(milliseconds: 5000));
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const BeginPage()));
  }
}

