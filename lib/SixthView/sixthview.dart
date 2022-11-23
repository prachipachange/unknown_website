import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SixthView extends StatelessWidget {
  const SixthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60, bottom: 30),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "A Price To Suit Everyone",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: const Color(0xff091133)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. "
                  "\nAenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus ",
                  style: GoogleFonts.roboto(
                      fontSize: 10, color: const Color(0xff6F7CB2)),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  " @40 ",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: const Color(0xff091133)),
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(
                  " UI Design toolkit ",
                  style: GoogleFonts.roboto(
                      fontSize: 10, color: const Color(0xff091133)),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  "See, One price. Simple. ",
                  style: GoogleFonts.roboto(
                      fontSize: 14, color: const Color(0xff5D6970)),
                ),
                SizedBox(height: 10),
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
          ],
        ),

        // child: SvgPicture.asset(
        //   'image/Rectangle.svg',
        // ),
      ),
    );
  }
}
