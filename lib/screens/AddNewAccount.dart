// ignore_for_file: prefer_const_constructors, body_might_complete_normally_nullable, avoid_print, unused_local_variable, prefer_const_literals_to_create_immutables, file_names, non_constant_identifier_names

import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'LoginPage.dart';

class AddNewAccount extends StatefulWidget {
  const AddNewAccount({Key? key}) : super(key: key);

  @override
  State<AddNewAccount> createState() => _AddNewAccountState();
}

class _AddNewAccountState extends State<AddNewAccount> {
  bool CheckBoxValue = false;
  bool CheckBoxValue1 = false;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xff010038),
      body: SingleChildScrollView(
        child: Stack(children: [
          Form(
            key: formKey,
            child: Column(
              children: [
                SvgPicture.asset('assets/images/Taieri.svg', width: screenSize.width),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'تسجيل حساب جديد',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff25E0B1),
                      fontFamily: 'Roman'),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: FormBuilder(
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7),
                                    borderSide: BorderSide( color: Colors.white)),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          label: 
                                Text(
                                  'الاسم الاول',
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.white,
                                      fontFamily: 'Roman'),
                                )
                              
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
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: FormBuilder(
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7),
                                    borderSide: BorderSide( color: Colors.white)),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          border: const OutlineInputBorder(
                              borderSide: BorderSide.none),
                          label: 
                                Text(
                                  'الاسم الاخير',
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.white,
                                      fontFamily: 'Roman'),
                                )
                              
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
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xff010038),
                        borderRadius: BorderRadius.circular(7)),
                    height: 45,
                    child: FormBuilder(
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7),
                                    borderSide: BorderSide( color: Colors.white)),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(7)),
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            label: 
                                  Text(
                                    'البريد الالكتروني',
                                    style: TextStyle(
                                      fontFamily: 'Roman',
                                      fontSize: 11,
                                      color: Colors.white,
                                    ),
                                  )
                                ),
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
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: FormBuilder(
                      child: TextFormField(
                          keyboardType: TextInputType.number,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7),
                                    borderSide: BorderSide( color: Colors.white)),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            label: 
                                  Text(
                                    'رقم الجوال',
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.white,
                                        fontFamily: 'Roman'),
                                  )
                                
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
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Color(0xff010038),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: FormBuilder(
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7),
                                    borderSide: BorderSide( color: Colors.white)),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          label: 
                                Text(
                                  'كلمة المرور',
                                  style: TextStyle(
                                    fontFamily: 'Roman',
                                    fontSize: 11,
                                    color: Colors.white,
                                  ),
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
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: InkWell(
                    child: Container(
                      height: 40,
                      width: screenSize.width,
                      decoration: BoxDecoration(
                        color: const Color(0xff25E0B1),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: const Center(
                          child: Text(
                        'اشتراك',
                        style: TextStyle(
                            fontFamily: 'Roman',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff010038)),
                      )),
                    ),
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        final snackBar = SnackBar(
                            content: Text(
                          'Welcome ',
                          textAlign: TextAlign.center,
                        ));
                        //ScaffoldKey.currentState!.showSnackBar(snackBar);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => loginPage()));
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: InkWell(
                      child: Container(
                        height: 40,
                        width: screenSize.width,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: const Center(
                            child: Center(
                                child: Text(
                          'العودة لتسجيل الدخول',
                          style: TextStyle(
                              fontFamily: 'Roman',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ))),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => loginPage()));
                      }),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Row(
                            children: [
                              Text('الشروط والاحكام',
                                  style: TextStyle(
                                      fontFamily: 'Roman',
                                      fontSize: 11,
                                      color: Color(0xff25E0B1))),
                              SizedBox(
                                width: 2,
                              ),
                              Text('باشتراكك انت توافق علي جميع',
                                  style: TextStyle(
                                      fontFamily: 'sst arabic',
                                      fontSize: 11,
                                      color: Colors.white)),
                              CustomCheckBox(
                                splashRadius: 0.1,
                                  uncheckedIconColor: Colors.white,
                                  uncheckedIcon: Icons.done,
                                  uncheckedFillColor: Color(0xff010037),
                                  checkedIconColor: Color(0xff010037),
                                  borderColor: Colors.white,
                                  checkBoxSize: 15,
                                  checkedFillColor: Color(0xff25E0B1),
                                  borderRadius: 10,
                                  value: CheckBoxValue,
                                  onChanged: (value) {
                                    setState(() {
                                      CheckBoxValue = value;
                                    });
                                  }),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                  'WhatsAppأوافق على تلقي تحديثات وإشعارات مفيدة عبر',
                                  style: TextStyle(
                                      fontFamily: 'Roman',
                                      fontSize: 11,
                                      color: Colors.white)),
                              CustomCheckBox(
                                splashRadius: 0.1,
                                  uncheckedIcon: Icons.done,
                                  uncheckedIconColor: Colors.white,
                                  uncheckedFillColor: Color(0xff010037),
                                  checkedIconColor: Color(0xff010037),
                                  borderColor: Colors.white,
                                  checkBoxSize: 15,
                                  checkedFillColor: Color(0xff25E0B1),
                                  borderRadius: 10,
                                  value: CheckBoxValue1,
                                  onChanged: (value) {
                                    setState(() {
                                      CheckBoxValue1 = value;
                                    });
                                  }),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                //SizedBox(height: 10,),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
