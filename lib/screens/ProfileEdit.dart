// ignore_for_file: file_names, avoid_print, prefer_const_constructors, unused_local_variable, body_might_complete_normally_nullable, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'Profile.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({Key? key}) : super(key: key);

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final GlobalKey<ScaffoldState> ScaffoldKey = GlobalKey<ScaffoldState>();
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      key: ScaffoldKey,
      backgroundColor: const Color(0xff010037),
      body: Stack(children: [
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
                color: Colors.white, borderRadius: BorderRadius.circular(25)),
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    Container(
                      //height: screenSize.height,
                      width: screenSize.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 40,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  child: const Icon(Icons.arrow_back_ios),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Profile()));
                                  },
                                ),
                                const Text(
                                  'تعديل الملف الشخصي',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Color(0xff010037)),
                                ),
                                Container(
                                  width: 20,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Container(
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: FormBuilder(
                                child: TextFormField(
                                  textAlign: TextAlign.end,
                                  style: TextStyle(color: Color(0xff010037)),
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1.5,
                                            color: Color(0xff25E0B1))),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 1.5, color: Color(0xff25E0B1)),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    // border: const OutlineInputBorder(
                                    //     //borderSide: BorderSide(color: Color(0xff25E0B1), strokeAlign: StrokeAlign.outside),
                                    //     ),
                                    label: Text(
                                      'الاسم الاول',
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: Color(0xff010037),
                                          fontFamily: 'sst arabic'),
                                    ),
                                    //floatingLabelAlignment:FloatingLabelAlignment.center,
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty ||
                                        !RegExp(r'[a-zA-Z]+').hasMatch(value)) {
                                      return 'incorrect';
                                    } else {
                                      print(value);
                                    }
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
                            child: Container(
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: FormBuilder(
                                child: TextFormField(
                                  textAlign: TextAlign.end,
                                  keyboardType: TextInputType.name,
                                  style: TextStyle(color: Color(0xff010037)),
                                  decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1.5,
                                              color: Color(0xff25E0B1))),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            width: 1.5,
                                            color: Color(0xff25E0B1)),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      border: const OutlineInputBorder(
                                          borderSide: BorderSide.none),
                                      label: Text(
                                        'الاسم الاخير',
                                        style: TextStyle(
                                            fontSize: 11,
                                            color: Color(0xff010037),
                                            fontFamily: 'sst arabic'),
                                      )),

                                  // ignore: body_might_complete_normally_nullable
                                  validator: (value) {
                                    if (value!.isEmpty ||
                                        !RegExp(r'[a-zA-Z]+').hasMatch(value)) {
                                      return 'incorrect';
                                    } else {
                                      print(value);
                                    }
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
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5)),
                              height: 45,
                              child: FormBuilder(
                                child: TextFormField(
                                  textAlign: TextAlign.end,
                                  style: TextStyle(color: Color(0xff010037)),
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1.5,
                                              color: Color(0xff25E0B1))),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              width: 1.5,
                                              color: Color(0xff25E0B1)),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      border: const OutlineInputBorder(
                                          borderSide: BorderSide.none),
                                      label: Text(
                                        'البريد الالكتروني',
                                        style: TextStyle(
                                          fontFamily: 'sst arabic',
                                          fontSize: 11,
                                          color: Color(0xff010037),
                                        ),
                                      )),
                                  validator: (value) {
                                    if (value!.isEmpty ||
                                        !RegExp(r'(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)')
                                            .hasMatch(value)) {
                                      return 'incorrect';
                                    } else {
                                      print(value);
                                    }
                                  },
                                ),
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
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: FormBuilder(
                                child: TextFormField(
                                  textAlign: TextAlign.end,
                                    keyboardType: TextInputType.number,
                                    style: TextStyle(color: Color(0xff010037)),
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1.5,
                                              color: Color(0xff25E0B1))),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1.5,
                                            color: Color(0xff25E0B1)),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none),
                                      label: Text(
                                        'رقم الجوال',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                            fontSize: 11,
                                            color: Color(0xff010037),
                                            fontFamily: 'sst arabic'),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty ||
                                          !RegExp(r'^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$')
                                              .hasMatch(value)) {
                                        return 'incorrect';
                                      } else {
                                        print(value);
                                      }
                                    }),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: InkWell(
                              child: Container(
                                height: 40,
                                width: screenSize.width,
                                decoration: BoxDecoration(
                                  color: const Color(0xff010037),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: const Center(
                                    child: Text(
                                  'حفظ التعديلات',
                                  style: TextStyle(
                                      fontFamily: 'Roman',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff25E0B1)),
                                )),
                              ),
                              onTap: () {
                                if (formKey.currentState!.validate()) {
                                  final snackBar = SnackBar(
                                      content: Text(
                                    'تم تعديل الملف الشخصي ',
                                    textAlign: TextAlign.center,
                                  ));
                                  // ScaffoldKey.currentState!.showSnackBar(snackBar);
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Profile()));
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
