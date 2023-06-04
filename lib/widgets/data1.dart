// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_typing_uninitialized_variables
// ignore: camel_case_types
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: camel_case_types
class user1 {
  String dayName;
  var month;
  var dayNumber;
  late String title;
  var icon;
  var about;
  var favourite;
  var image;

  user1({
    required this.dayName,
    required this.month,
    required this.dayNumber,
    required this.title,
    required this.icon,
    required this.about,
    required this.favourite,
    required this.image,
  });
}

List<user1> users1 = [
  user1(
      title: 'مهرجان الثقافة بإثراء',
      icon: SvgPicture.asset('assets/images/Group 419.svg'),
      about: 'مزيد من التفاصيل',
      favourite: SvgPicture.asset('assets/images/Group 419.svg'),
      dayName: 'الخميس',
      dayNumber: '09',
      image: ClipRRect(
          borderRadius: BorderRadius.circular(7),
          child: Image.asset(
            'assets/images/download.jpg',
            fit: BoxFit.cover,
            height: 277,
          )),
      month: 'يونيو'),
  user1(
      title: '',
      icon: SvgPicture.asset('assets/images/Group 419.svg'),
      about: 'مزيد من التفاصيل',
      favourite: SvgPicture.asset('assets/images/Group 419.svg'),
      dayName: 'الخميس',
      dayNumber: '08',
      image: ClipRRect(
          borderRadius: BorderRadius.circular(7),
          child: Image.asset(
            'assets/images/download-1.jpg',
            fit: BoxFit.cover,
            height: 277,
          )),
      month: 'يونيو'),
  user1(
      title: 'ليلة نغم',
      icon: SvgPicture.asset('assets/images/Group 419.svg'),
      about: 'مزيد من التفاصيل',
      favourite: SvgPicture.asset('assets/images/Group 419.svg'),
      dayName: 'الخميس',
      dayNumber: '07',
      image: ClipRRect(
          borderRadius: BorderRadius.circular(7),
          child: Image.asset(
            'assets/images/download-2.jpg',
            fit: BoxFit.cover,
            height: 277,
          )),
      month: 'يونيو'),
  user1(
      title: 'عيش الحماس ( مباراة النهائي)',
      icon: SvgPicture.asset('assets/images/Group 419.svg'),
      about: 'مزيد من التفاصيل',
      favourite: SvgPicture.asset('assets/images/Group 419.svg'),
      dayName: 'الخميس',
      dayNumber: '06',
      image: ClipRRect(
          borderRadius: BorderRadius.circular(7),
          child: Image.asset(
            'assets/images/download-2.jpg',
            fit: BoxFit.cover,
            height: 277,
          )),
      month: 'يونيو'),
  user1(
      title: 'جدة جنغل',
      icon: SvgPicture.asset('assets/images/Group 419.svg'),
      about: 'مزيد من التفاصيل',
      favourite: SvgPicture.asset('assets/images/Group 419.svg'),
      dayName: 'الخميس',
      dayNumber: '06',
      image: ClipRRect(
          borderRadius: BorderRadius.circular(7),
          child: Image.asset(
            'assets/images/download-2.jpg',
            fit: BoxFit.cover,
            height: 277,
          )),
      month: 'يونيو')
];
