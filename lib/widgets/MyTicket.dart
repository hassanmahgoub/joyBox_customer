import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyTicket extends StatelessWidget {
  const MyTicket({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final ScreenSize = MediaQuery.of(context).size;
    return Container(
      height: 60,
      width: ScreenSize.width,
      decoration: BoxDecoration(
          color: const Color(0xff010037), borderRadius: BorderRadius.circular(7)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            const Text(
              'ريال',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'sst arabic',
                  fontSize: 10,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 5,
            ),
            const Text(
              '199',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'sst arabic',
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 6,
                  width: 12,
                  decoration: const BoxDecoration(
                      color: Color(0xff25E0B1),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                ),
                Flex(
                  direction: Axis.vertical,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                      12,
                      (index) => SizedBox(
                            height: 4,
                            width: 2.5,
                            child: DecoratedBox(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: const Color(0xff25E0B1))),
                          )),
                ),
                Container(
                  height: 6,
                  width: 12,
                  decoration: const BoxDecoration(
                      color: Color(0xff25E0B1),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                )
              ],
            ),
            const SizedBox(
              width: 15,
            ),
            const Icon(
              Icons.error_outline,
              color: Colors.white,
            ),
            Expanded(child: Container()),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'اسم التذكرة',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'sst arabic',
                        fontSize: 10),
                  ),
                  Text(
                    'الدرجة الفضية',
                    style: TextStyle(
                        color: Color(0xff25E0B1),
                        fontFamily: 'sst arabic',
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            SvgPicture.asset('assets/images/menu_tickets_24x24.svg')
          ],
        ),
      ),
    );
  }
}

