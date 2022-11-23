import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderLine extends StatelessWidget {
  const HeaderLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 40),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Home",
                style: TextStyle(fontSize: 16, color: Color(0xff505F98)),
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                "About",
                style: TextStyle(fontSize: 16, color: Color(0xff505F98)),
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                "Contact",
                style: TextStyle(fontSize: 16, color: Color(0xff505F98)),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Landie",
                style: GoogleFonts.roboto(
                    fontSize: 18,
                    color: Color(0xff505F98),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
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
        ],
      ),
    );
  }
}
