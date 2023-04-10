import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final color;
  final textColor;
  final String buttonText;
  final buttontapped;

  MyButton(
      {this.color, this.textColor, this.buttonText = '', this.buttontapped});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: buttontapped,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(80),
          child: Container(
            color: color,
            child: Center(
              child: Text(
                buttonText,
                style: GoogleFonts.taviraj(
                  color: textColor,
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
