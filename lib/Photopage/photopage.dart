import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PhotoPage extends StatelessWidget {
  List<Widget> childPhoto(double width) {
    return [
      Row(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
          child: Column(
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              )
            ],
          ),
        ),
        SizedBox(
          width: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text(
                      "Introduce Your Product\nQuickly & Effectively",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: Color(0xff091133)),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ]),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit,\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \nDuis aute irure dolor in"
                    " reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\n\nExcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                    style: GoogleFonts.roboto(
                      fontSize: 10,
                      color: Color(0xff111B47),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
        // Container(child: Image.asset("images/replace this.svg")),
      ])
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: childPhoto(constraints.biggest.width / 1.2),
          );
        } else {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: childPhoto(constraints.biggest.width),
          );
        }
      },
    ));
  }
}
