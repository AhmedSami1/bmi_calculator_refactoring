import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class GenderWidget extends StatelessWidget {
    GenderWidget({
      super.key,
      required this.onTap,
      required this.iconColor,
      required this.backGroundColor,
      required this.text,
      required this.image,
  });

  VoidCallback onTap;
  Color iconColor;
  Color backGroundColor;
  String text;
  String image;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 10,),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            height: 180.0,
            width: 180.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              border: Border.all(color: iconColor, width:1.0),
              color: backGroundColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  image,
                  filterQuality: FilterQuality.high,
                  color: iconColor,
                  height: 100.0,
                ),
                const SizedBox(height: 10.0),
                Text(
                  text,
                  style: GoogleFonts.aBeeZee(
                    textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
