// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_typing_uninitialized_variables, non_constant_identifier_names, file_names
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: camel_case_types
class rial {
  var riyalName;
  var riyalNumber;
  var More;
  late String tiketName;
  var className;
  var tiketIcon;
  
  rial({
    required this.riyalName,
    required this.riyalNumber,
    required this.More,
    required this.tiketName,
    required this.className,
    required this.tiketIcon,
  });
}
List <rial> myData = [
    rial(
      riyalName: 'مهرجان الثقافة بإثراء',
      riyalNumber: 199,
      More: const Icon(Icons.info_outline),
      tiketName: 'اسم التذكرة',
      className: 'الدرجة الفضية',
      tiketIcon: SvgPicture.asset('assets/images/cash.svg')
    ),
    rial(
    riyalName: 'مهرجان الثقافة بإثراء',
      riyalNumber: 199,
      More: const Icon(Icons.info_outline),
      tiketName: 'اسم التذكرة',
      className: 'الدرجة الفضية',
      tiketIcon: SvgPicture.asset('assets/images/cash.svg')
    ),
    rial(
    riyalName: 'مهرجان الثقافة بإثراء',
      riyalNumber: 199,
      More: const Icon(Icons.info_outline),
      tiketName: 'اسم التذكرة',
      className: 'الدرجة الفضية',
      tiketIcon: SvgPicture.asset('assets/images/cash.svg')
    )
  ];