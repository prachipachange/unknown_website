import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unknown_website/AboutPage/aboutpage.dart';
import 'package:unknown_website/Photopage/photopage.dart';

class HeaderLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PhotoPage()),
                    );
                  },
                  child: const Text(
                    "Home",
                    style: TextStyle(fontSize: 16, color: Color(0xff505F98)),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AboutPage()),
                    );
                  },
                  child: const Text(
                    "About",
                    style: TextStyle(fontSize: 16, color: Color(0xff505F98)),
                  ),
                ),
                const Text(
                  "Contact",
                  style: TextStyle(fontSize: 16, color: Color(0xff505F98)),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  "Landie",
                  style: GoogleFonts.roboto(
                      fontSize: 18,
                      color: Color(0xff505F98),
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 20,
                ),
                MaterialButton(
                    color: Color(0xff111B47),
                    onPressed: () {},
                    child: const Text(
                      "Buy Now",
                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                      ),
                    ))
              ],
            ),
          ),
        ],
      )
    ]);
  }
}
