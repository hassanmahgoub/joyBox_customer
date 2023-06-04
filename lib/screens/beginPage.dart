// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: file_names, non_constant_identifier_names, valid_regexps, prefer_const_constructors, unused_local_variable, deprecated_member_use, camel_case_types, avoid_print, body_might_complete_normally_nullable, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'AddNewAccount.dart';
import 'LoginPage.dart';
import 'MyHomePage.dart';
import 'NavigationBar.dart';

class BeginPage extends StatefulWidget {
  const BeginPage({Key? key, required}) : super(key: key);

  @override
  State<BeginPage> createState() => _HomePageState();
}

class _HomePageState extends State<BeginPage> {
  final formKey = GlobalKey<FormState>();
  late String name;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    final GlobalKey<ScaffoldState> ScaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
        backgroundColor: Color(0xff010038),
        key: ScaffoldKey,
        body: SingleChildScrollView(
            child: Column(children: [
          SizedBox(
            height: 120,
          ),
          Image.asset('assets/images/Group 490.png'),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: formKey,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'آمن ويسير الاستخدام',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff25E0B1),
                          fontFamily: 'Roman',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'لاتحتاج لطباعة التذاكر او ملامسة اي اسطح',
                      style: TextStyle(
                          fontSize: 11,
                          color: Color(0xffC2C2C2),
                          fontFamily: 'Roman',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffF47846)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xff0084AD)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffFF3555)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffFFB000)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        InkWell(
                          child: Container(
                            height: 45,
                            width: screenSize.width,
                            decoration: BoxDecoration(
                                color: Color(0xff25E0B1),
                                borderRadius: BorderRadius.circular(7)),
                            child: Center(
                                child: Text(
                              'تسجيل دخول',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff010038),
                                  fontFamily: 'Roman',
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => loginPage()));
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      child: Container(
                        height: 45,
                        width: screenSize.width,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            color: Color(0xff010038),
                            borderRadius: BorderRadius.circular(7)),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Text(
                            'تسجيل حساب جديد',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontFamily: 'Roman',
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddNewAccount()));
                      },
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          child: Center(
                              child: Text(
                            'ًًسآفعل ذلك لاحقا',
                            style: TextStyle(
                                color: Color(0xff25E0B1),
                                fontFamily: 'Roman',
                                fontSize: 11),
                          )),
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                        ),
                      ],
                    )
                  ]),
            ),
          ),
          SizedBox(
            height: 40,
          )
        ])));
  }
}
class data {
  var beginLogin;
  var beginAdd;
  data({
    required this.beginLogin,
    required this.beginAdd,
  });
 List<data> myData =[
data (
  beginLogin:'تسجيل دخول',
  beginAdd: 'تسجيل حساب جديد'
   )
 ];
}
