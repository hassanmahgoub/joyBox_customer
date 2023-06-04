// ignore_for_file: file_names, avoid_print, body_might_complete_normally_nullable, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'Profile.dart';

class PasswordChange extends StatefulWidget {
  const PasswordChange({Key? key}) : super(key: key);

  @override
  State<PasswordChange> createState() => _PasswordChangeState();
}

class _PasswordChangeState extends State<PasswordChange> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
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
                borderRadius: BorderRadius.circular(25), color: Colors.white),
            child: Form(
              key: formKey,
              child: SingleChildScrollView(
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
                                      builder: (context) => const Profile()));
                            },
                          ),
                          const Text(
                            'تغيير كلمة المرور',
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
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: FormBuilder(
                          child: TextFormField(
                            
                            keyboardType: TextInputType.visiblePassword,
                            style: const TextStyle(color: Color(0xff010037)),
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7),
                                    borderSide: const BorderSide( width: 1.5, color: Color(0xff25E0B1))),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 1.5, color: Color(0xff25E0B1)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              label: 
                                    const Text(
                                      'كلمة المرور السابقة',
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff2E1C59),
                                          fontFamily: 'Roman'),
                                    )
                                  
                            ),
                            validator: (value) {
                              if (value!.isEmpty ||
                                  !RegExp(r'[!@#$%^&*(),.?":{}|<>]')
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
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: FormBuilder(
                          child: TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            style: const TextStyle(color: Color(0xff010037)),
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7),
                                    borderSide: const BorderSide(width: 1.5, color: Color(0xff25E0B1))),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 1.5, color: Color(0xff25E0B1)),
                                borderRadius: BorderRadius.circular(7),
                              ),
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              label: 
                                    const Text(
                                      'كلمة المرور الجديدة',
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff2E1C59),
                                          fontFamily: 'Roman'),
                                    )
                                  
                            ),
                            validator: (value) {
                              if (value!.isEmpty ||
                                  !RegExp(r'[!@#$%^&*(),.?":{}|<>]')
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
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: FormBuilder(
                          child: TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            style: const TextStyle(color: Color(0xff010037)),
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7),
                                    borderSide: const BorderSide( width: 1.5, color: Color(0xff25E0B1))),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 1.5, color: Color(0xff25E0B1)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              label: 
                                    const Text(
                                      'تأكيد كلمة المرور ',
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff2E1C59),
                                          fontFamily: 'Roman'),
                                    )
                                  
                            ),
                            validator: (value) {
                              if (value!.isEmpty ||
                                  !RegExp(r'[!@#$%^&*(),.?":{}|<>]')
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
                    const SizedBox(
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
                            'تغيير كلمة المرور',
                            style: TextStyle(
                                fontFamily: 'Roman',
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff25E0B1)),
                          )),
                        ),
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            // ignore: prefer_const_constructors
                            final snackBar = SnackBar(
                                content: const Text(
                              'تم تعديل الملف الشخصي ',
                              textAlign: TextAlign.center,
                            ));
                            //ScaffoldKey.currentState!.showSnackBar(snackBar);
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const Profile()));
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
