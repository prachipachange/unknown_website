import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomBox extends StatelessWidget {
  const BottomBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "@2022 YourCompany",
                style: GoogleFonts.roboto(
                  fontSize: 10,
                  color: Color(0xff939EA4),
                ),
              ),
              Text(
                "Landie",
                style: GoogleFonts.roboto(
                    fontSize: 18,
                    color: Color(0xff111B47),
                    fontWeight: FontWeight.bold),
              ),
              MaterialButton(
                color: Color(0xff111B47),
                onPressed: () {},
                child: const Text(
                  "Purchase Now",
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 2,
        ),
        const Divider(
          color: Color(0xffCDD1D4),
          height: 2.2,
        ),
        SizedBox(height: 20),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
            children: [
              Row(
                children: [
                  Text(
                    "Home",
                    style: GoogleFonts.roboto(
                        fontSize: 15, color: Color(0xff929ECC)),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "About",
                    style: GoogleFonts.roboto(
                        fontSize: 15, color: Color(0xff929ECC)),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Contact",
                    style: GoogleFonts.roboto(
                        fontSize: 15, color: Color(0xff929ECC)),
                  )
                ],
              )
            ],
          ),
          Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(
                  FontAwesomeIcons.facebook,
                  color: Color(0xffCDD1D4),
                  size: 13,
                ),
                SizedBox(
                  width: 8,
                ),
                Icon(
                  FontAwesomeIcons.linkedin,
                  color: Color(0xffCDD1D4),
                  size: 13,
                ),
                SizedBox(
                  width: 8,
                ),
                Icon(
                  FontAwesomeIcons.instagram,
                  color: Color(0xffCDD1D4),
                  size: 13,
                ),
                SizedBox(
                  width: 8,
                ),
                Icon(
                  FontAwesomeIcons.youtube,
                  color: Color(0xffCDD1D4),
                  size: 13,
                ),
                SizedBox(
                  width: 8,
                ),
                Icon(
                  FontAwesomeIcons.twitter,
                  color: Color(0xffCDD1D4),
                  size: 13,
                ),
              ],
            )
          ])
        ])
      ],
    );
  }
}
