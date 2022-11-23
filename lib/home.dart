import 'package:flutter/material.dart';
import 'package:unknown_website/FourthView/fourthview.dart';
import 'package:unknown_website/SixthView/sixthview.dart';
import 'package:unknown_website/ThirdView/thirdview.dart';
import 'package:unknown_website/header/header.dart';
import 'package:unknown_website/responsive.dart';

import 'FifthView/fifthview.dart';
import 'FirstView/firstview.dart';
import 'SecondView/secondview.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({Key? key}) : super(key: key);

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          body: Responsive(
            mobile: body(),
            tablet: body(),
            desktop: body(),
          ),
        ));
  }

  Widget body() {
    return ListView(
      children: [
        // Column(
        //   // mainAxisAlignment: MainAxisAlignment.end,
        //   children: [
        //     Row(
        //       // crossAxisAlignment: CrossAxisAlignment.end,
        //       mainAxisAlignment: MainAxisAlignment.end,
        //       children: [
        //         Container(
        //           height: 500,
        //           width: 450,
        //           decoration: const BoxDecoration(
        //             image: DecorationImage(
        //                 image: AssetImage("image/Path.png"),
        //                 fit: BoxFit.cover),
        //           ),
        //         ),
        //       ],
        //     ),
        //   ],
        // ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderLine(),
            FirstView(),
          ],
        ),
        SizedBox(
          height: 70,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SecondView(),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ThirdView(),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FourthView(),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FifthView(),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SixthView(),
          ],
        )
      ],
    );
  }
}
