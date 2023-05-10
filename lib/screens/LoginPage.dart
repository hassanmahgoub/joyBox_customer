// ignore_for_file: file_names, non_constant_identifier_names, valid_regexps, prefer_const_constructors, unused_local_variable, deprecated_member_use, camel_case_types, avoid_print, body_might_complete_normally_nullable, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quickalert/quickalert.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'NavigationBar.dart';
import 'PasswordRemember.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key, required}) : super(key: key);

  @override
  State<loginPage> createState() => _HomePageState();
}

class _HomePageState extends State<loginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  late String name;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    final GlobalKey<ScaffoldState> ScaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
        backgroundColor: Color(0xff010038),
        key: ScaffoldKey,
        body: Stack(children: [
          SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(children: [
                SvgPicture.asset(
                  'images/Inner_patterns470x416.svg',
                  width: screenSize.width,
                ),
                SafeArea(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text('تسجيل دخول',
                              style: TextStyle(
                                fontFamily: 'sst arabic',
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff25E0B1),
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          FormBuilder(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xff010038),
                                  borderRadius: BorderRadius.circular(7)),
                              height: 45,
                              child: TextFormField(
                                onTap: () async {
                                  SharedPreferences _prefs = await SharedPreferences.getInstance();
                                  _prefs.setString('E', _emailController.text);
                                  _prefs.setString('P', _passwordController.text);
                                  print(_emailController);
                                },
                                keyboardType: TextInputType.emailAddress,
                                style: TextStyle(color: Colors.white),
                                //controller: _email,
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7),
                                    borderSide: BorderSide( color: Colors.white)),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.white),
                                        borderRadius: BorderRadius.circular(7)),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none),
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
                          SizedBox(
                            height: 10,
                          ),
                          FormBuilder(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xff010038),
                                  borderRadius: BorderRadius.circular(7)),
                              height: 45,
                              child: TextFormField(
                                onSaved: (newValue) async {
                                  SharedPreferences _prefs = await SharedPreferences.getInstance();
                                  _prefs.setString('E', _emailController.text);
                                  _prefs.setString('P', _passwordController.text);
                                },
                                style: TextStyle(color: Colors.white),
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7),
                                    borderSide: BorderSide( color: Colors.white)),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none),
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
                          SizedBox(
                            height: 10,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(7),
                            child: MaterialButton(
                                height: 45,
                                minWidth: screenSize.width,
                                color: Color(0xff25E0B1),
                                child: Text(
                                  'دخول',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff010037),
                                      fontFamily: 'Roman',
                                      fontWeight: FontWeight.bold),
                                ),
                                onPressed: () {
                                  // print(_email.text);
                                  // print(_password.text);
                                  // storeData();
                                  if (formKey.currentState!.validate()) {
                                    final snackBar = SnackBar(
                                        content: Text(
                                      'Welcome',
                                      textAlign: TextAlign.center,
                                    ));
                                    QuickAlert.show(
                                        titleColor: Color(0xff25E0B1),
                                        confirmBtnColor: Color(0xff25E0B1),
                                        backgroundColor: Color(0xff010037),
                                        onConfirmBtnTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      HomePage()));
                                        },
                                        context: context,
                                        type: QuickAlertType.success,
                                        confirmBtnTextStyle: TextStyle(
                                            fontFamily: 'Roman',
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16));
                                  }
                                }),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  child: Text(
                                    'استعادة',
                                    style: TextStyle(
                                        color: Color(0xff25E0B1),
                                        fontFamily: 'Roman',
                                        fontSize: 11),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                PasswordRemember()));
                                  },
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'نسيت كلمة المرور ؟',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Roman',
                                      fontSize: 11),
                                ),
                              ],
                            ),
                          )
                        ]),
                  ),
                ),
              ]),
            ),
          )
        ]));
  }
}
