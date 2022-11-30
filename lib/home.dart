import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:unknown_website/FourthView/fourthview.dart';
import 'package:unknown_website/ThirdView/thirdview.dart';
import 'package:unknown_website/header/header.dart';
import 'package:unknown_website/responsive.dart';

import 'BottomBox/bottombox.dart';
import 'FifthView/fifthview.dart';
import 'FirstView/firstview.dart';
import 'SecondView/secondview.dart';
import 'SixthView/sixthview.dart';

class MyScreen extends StatefulWidget {
  final String assetName = 'images/curvebox.svg';
  final String assetN = 'images/bottombox.svg';
  final Widget curvebox = SvgPicture.asset("images/curvebox.svg");
  final Widget btmbox = SvgPicture.asset("images/bottombox.svg");

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
    return ListView(children: [
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
          const SizedBox(
            height: 80,
          ),
          FirstView(),
        ],
      ),
      const SizedBox(
        height: 70,
      ),
      Stack(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SecondView(),
          ],
        ),
      ]),
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const ThirdView(),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const FourthView(),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const FifthView(),
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      Stack(
        children: [
          Column(children: [
            ClipPath(
              clipper: WaveClip(),
              child: Container(
                height: 550,
                width: double.infinity,
                color: const Color(0xfff3f5ff),
              ),
            )
          ]),
          Stack(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                SixthView(),
              ],
            ),
          ]),
        ],
      ),
      // SizedBox(
      //   height: 70,
      // ),
      Stack(
        children: [
          Column(children: [
            Container(
              width: double.infinity,
              height: 150,
              color: const Color(0xffE7ECFF),
            ),
          ]),
          Stack(
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: BottomBox(),
              ),
            ],
          ),
        ],
      )
    ]);
  }
}

class WaveClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width / 2, size.height);
    path.quadraticBezierTo(size.width - (size.width / 2), size.height,
        size.width, size.height - 80);
    path.close();
    //start path with this if you are making at bottom
    // var firstStart = Offset(size.width / 3.24, size.height - 105);
    // //fist point of quadratic bezier curve
    // var firstEnd = Offset(size.width, size.height - 10);
    // //second point of quadratic bezier curve
    // path.quadraticBezierTo(
    //     firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    //
    // var secondStart =
    //     Offset(size.width - (size.width / 3.24), size.height - 105);
    // //third point of quadratic bezier curve
    // var secondEnd = Offset(size.width, size.height - 10);
    // //fourth point of quadratic bezier curve
    // path.quadraticBezierTo(
    //     secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    //
    // path.lineTo(
    //     size.width, 0); //end with this path if you are making wave at bottom
    // path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; //if new instance have different instance than old instance
    //then you must return true;
  }
}
//
// class HeaderCurvedContainer extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint = Paint()..color = const Color(0xffea5d49);
//     Path path = Path()
//       ..relativeLineTo(0, 150)
//       ..quadraticBezierTo(size.width / 2, 250.0, size.width, 150)
//       ..relativeLineTo(0, -150)
//       ..close();
//
//     canvas.drawPath(path, paint);
//   }
//
//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => false;
// }
