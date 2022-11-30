import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unknown_website/ExtractedWidger/lightfastpage.dart';

class AboutPage extends StatelessWidget {
  List<Widget> childPage(double width) {
    return [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 50),
        child: Container(
          width: width,
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Design & Build Your \nOwn Landing Pages",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: const Color(0xff091133)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 30,
                      ),
                      child: Text(
                        "Lorem ipsum dolor amet, consectetur adipiscing elit,"
                        "\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
                        "\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris "
                        "\nDuis aute irure dolor in"
                        " reprehenderit in voluptate velit esse cillum pariatur.adipiscing elit. ",
                        style: GoogleFonts.roboto(
                          fontSize: 10,
                          color: Color(0xff111B47),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                LightFast(
                  text1: "Title Goes Here",
                  text2: "Lorem ipsum dolor sit amet, consec adipcing,"
                      "\nsed do eiusmod tempor incididunt labore "
                      "\nUt enim ad minim veniam, quis nost exercit  "
                      "\nDuis aute irure dolor in",
                ),
                SizedBox(
                  width: 20,
                ),
                LightFast(
                  text1: "Title Goes Here",
                  text2: "Lorem ipsum dolor sit amet, consectur adipi,"
                      "\nsed do eiusmod tempor incididunt labore  "
                      "\nUt enim ad minim veniam, nostrud exercit  "
                      "\nDuis aute irure dolor in",
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                LightFast(
                  text1: "Title Goes Here",
                  text2: "Lorem ipsum dolor sit amet, consec adipcing,"
                      "\nsed do eiusmod tempor incididunt labore "
                      "\nUt enim ad minim veniam, quis nost exercit  "
                      "\nDuis aute irure dolor in",
                ),
                SizedBox(
                  width: 20,
                ),
                LightFast(
                  text1: "Title Goes Here",
                  text2: "Lorem ipsum dolor sit amet, consectur adipi,"
                      "\nsed do eiusmod tempor incididunt labore  "
                      "\nUt enim ad minim veniam, nostrud exercit  "
                      "\nDuis aute irure dolor in",
                )
              ],
            )
          ]),
        ),
      ),
      // Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
      //   child: Container(child: Image.asset("images/replace this.svg")),
      // )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: childPage(constraints.biggest.width / 1.2),
          );
        } else {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: childPage(constraints.biggest.width),
          );
        }
      },
    ));
  }
}

//   Row(
// children: [
//   Column(
//     children: [
//       Text(
//         "Design & Build Your Own Landing Pages",
//         style: GoogleFonts.roboto(
//             fontWeight: FontWeight.bold,
//             fontSize: 28,
//             color: Color(0xff091133)),

// SizedBox(
//   height: 10,
// ),
// Text(
//   "Lorem ipsum dolor amet, consectetur adipiscing elit,"
//   "\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
//   "\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris "
//   "\nDuis aute irure dolor in"
//   " reprehenderit in voluptate velit esse cillum pariatur.adipiscing elit. ",
//   style: GoogleFonts.roboto(
//     fontSize: 10,
//     color: Color(0xff111B47),
//   ),
//         ),
//       ],
//     ),
//     Column(
//       children: [],
//     )
//   ],
// )
//     Container(
//   child: Row(
//     mainAxisAlignment: MainAxisAlignment.start,
//     children: [
//       Column(
//         children: [
//           Text(
//             "IDesign & Build Your Own Landing Pages",
//             style: GoogleFonts.roboto(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 28,
//                 color: Color(0xff091133)),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(
//               vertical: 20,
//             ),
//             child: Text(
//               "Lorem ipsum dolor amet, consectetur adipiscing elit,"
//               "\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
//               "\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris "
//               "\nDuis aute irure dolor in"
//               " reprehenderit in voluptate velit esse cillum pariatur.adipiscing elit. ",
//               style: GoogleFonts.roboto(
//                 fontSize: 10,
//                 color: Color(0xff111B47),
//               ),
//             ),
//           ),
//         ],
//       ),
//       Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: const [
//           LightFast(
//             text1: "Title Goes Here",
//             text2: "Lorem ipsum dolor sit amet, consec adipcing,"
//                 "\nsed do eiusmod tempor incididunt labore "
//                 "\nUt enim ad minim veniam, quis nost exercit  "
//                 "\nDuis aute irure dolor in",
//           ),
//           SizedBox(
//             width: 20,
//           ),
//           LightFast(
//             text1: "Title Goes Here",
//             text2: "Lorem ipsum dolor sit amet, consectur adipi,"
//                 "\nsed do eiusmod tempor incididunt labore  "
//                 "\nUt enim ad minim veniam, nostrud exercit  "
//                 "\nDuis aute irure dolor in",
//           )
//         ],
//       ),
//       Column(
//         children: [Image.asset("images/replace this.svg")],
//       )
//     ],
//   ),
// )

//
//
//
// Padding(
// padding: const EdgeInsets.symmetric(),
// child: Container(
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text(
// "Introduce Your Product\nQuickly & Effectively",
// style: GoogleFonts.roboto(
// fontWeight: FontWeight.bold,
// fontSize: 28,
// color: Color(0xff091133)),
// ),
// Padding(
// padding: const EdgeInsets.symmetric(
// vertical: 20,
// ),
// child: Text(
// "Lorem ipsum dolor sit amet, consectetur adipiscing elit,\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \nDuis aute irure dolor in"
// " reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\n\nExcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
// style: GoogleFonts.roboto(
// fontSize: 10,
// color: Color(0xff111B47),
// ),
// ),
// ),
// const SizedBox(
// height: 50,
// ),
// Row(
// mainAxisAlignment: MainAxisAlignment.start,
// children: const [
// LightFast(
// text1: "Title Goes Here",
// text2: "Lorem ipsum dolor sit amet, consec adipcing,"
// "\nsed do eiusmod tempor incididunt labore "
// "\nUt enim ad minim veniam, quis nost exercit  "
// "\nDuis aute irure dolor in",
// ),
// SizedBox(
// width: 20,
// ),
// LightFast(
// text1: "Title Goes Here",
// text2: "Lorem ipsum dolor sit amet, consectur adipi,"
// "\nsed do eiusmod tempor incididunt labore  "
// "\nUt enim ad minim veniam, nostrud exercit  "
// "\nDuis aute irure dolor in",
// )
// ],
// ),
// const SizedBox(
// height: 20,
// ),
// Row(
// mainAxisAlignment: MainAxisAlignment.start,
// children: const [
// LightFast(
// text1: "Title Goes Here",
// text2: "Lorem ipsum dolor sit amet, consec adipcing,"
// "\nsed do eiusmod tempor incididunt labore "
// "\nUt enim ad minim veniam, quis nost exercit  "
// "\nDuis aute irure dolor in",
// ),
// SizedBox(
// width: 20,
// ),
// LightFast(
// text1: "Title Goes Here",
// text2: "Lorem ipsum dolor sit amet, consectur adipi,"
// "\nsed do eiusmod tempor incididunt labore  "
// "\nUt enim ad minim veniam, nostrud exercit  "
// "\nDuis aute irure dolor in",
// )
// ],
// ),
// ],
// // ),
// // ),
// // ),
// // );
